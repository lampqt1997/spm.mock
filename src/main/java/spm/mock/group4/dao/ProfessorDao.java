package spm.mock.group4.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spm.mock.group4.entity.GroupStudent;
import spm.mock.group4.entity.Professor;
import spm.mock.group4.entity.Student;
import spm.mock.group4.entity.UserDetail;
import spm.mock.group4.entity.custom.GroupStudentCustom;
import spm.mock.group4.entity.custom.ProfessorCustom;
import spm.mock.group4.implement.IProfessor;

@Repository
public class ProfessorDao implements IProfessor {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public float totalAvg(int id_group) {
		float grade = 0;
		Session session = sessionFactory.getCurrentSession();
		GroupStudent gr = session.get(GroupStudent.class, id_group);
		List<Student> students = listStudentByIdGroup(id_group);
		for (Student student : students) {
			if (student.getGrade() == null) {
				grade += 0;
			} else {
				grade += (float) student.getGrade().getGrade();
			}

		}

		return grade / 6;
	}

	public List<Student> listStudentByIdGroup(int id_group) {
		Session session = sessionFactory.getCurrentSession();
		GroupStudent gr = session.get(GroupStudent.class, id_group);
		Student st0 = session.get(Student.class, gr.getLeader());
		Student st1 = session.get(Student.class, gr.getStudent1());
		Student st2 = session.get(Student.class, gr.getStudent2());
		Student st3 = session.get(Student.class, gr.getStudent3());
		Student st4 = session.get(Student.class, gr.getStudent4());
		Student st5 = session.get(Student.class, gr.getStudent5());
		List<Student> students = new ArrayList<Student>();
		students.add(st0);
		students.add(st1);
		students.add(st2);
		students.add(st3);
		students.add(st4);
		students.add(st5);
		return students;

	}

	public List<GroupStudentCustom> customsById(int id_professor) {
		Session session = sessionFactory.getCurrentSession();
		List<GroupStudentCustom> result = new ArrayList<GroupStudentCustom>();
		Professor pr = session.get(Professor.class, id_professor);
		List<GroupStudent> groupStudents = session.createQuery("from groupstudent where professor = :id")
				.setParameter("id", id_professor).getResultList();
		if (!pr.getGroup_register().equals("")) {
			String[] arrId = pr.getGroup_register().split("-");
			for (String s : arrId) {
				int i = Integer.valueOf(s);
				GroupStudentCustom cs = new GroupStudentCustom();
				cs.setGrade(totalAvg(i));
				cs.setId(i);
				cs.setLeader(getNameLeaderById(i));
				cs.setProfessor(pr.getPname());
				result.add(cs);
			}
		}
		
		return result;
	}
	

	public List<GroupStudentCustom> customsAnotherById(int id_professor) {
		Session session = sessionFactory.getCurrentSession();
		List<GroupStudentCustom> result = new ArrayList<GroupStudentCustom>();
		List<Professor> professors = session.createQuery("from professor where id not in:id")
				.setParameter("id", id_professor).getResultList();
		List<GroupStudent> groupStudents = session.createQuery("from groupstudent where professor = 0 and id not in (9999)").getResultList();
		GroupStudentCustom cs = null;
		int idTemp = 0;
		for (GroupStudent groupStudent : groupStudents) {
			for (Professor p : professors) {
				if (p.getGroup_register().contains(String.valueOf(groupStudent.getId()))) {
					cs = new GroupStudentCustom();
					idTemp = groupStudent.getId();
					cs.setId(idTemp);
					cs.setGrade(totalAvg(idTemp));					
					cs.setLeader(getNameLeaderById(idTemp));
					cs.setProfessor(p.getPname());
					result.add(cs);
				}
				
			}	
		}	
		if (result.isEmpty()) {
			for (GroupStudent groupStudent : groupStudents) {
				cs = new GroupStudentCustom();
				idTemp = groupStudent.getId();
				float grade = 0;
				try {
					grade = totalAvg(idTemp);
				} catch (NullPointerException e) {
					grade=0;
				}							
				cs.setId(idTemp);
				cs.setGrade(grade);					
				cs.setLeader(getNameLeaderById(idTemp));
				cs.setProfessor("");
				result.add(cs);
			}
		
		}
		
		return result;
	}

	public String getNameLeaderById(int id_group) {
		Session session = sessionFactory.getCurrentSession();
		GroupStudent gr = session.get(GroupStudent.class, id_group);
		Student st = session.get(Student.class, gr.getLeader());
		return st.getSname();
	}

	@Override
	public int countProfessor() {
		Session session = sessionFactory.getCurrentSession();
		String query = "select count(id) from professor";
		Long count = (Long) session.createQuery(query).uniqueResult();
		return Integer.valueOf(String.valueOf(count));
	}

	@Override
	public int countGroup() {
		Session session = sessionFactory.getCurrentSession();
		String query = "select count(id) from groupstudent ";
		Long count = (Long) session.createQuery(query).uniqueResult();
		return Integer.valueOf(String.valueOf(count));
	}

	@Override
	public int countGroupRegistered() {
		Session session = sessionFactory.getCurrentSession();
		String query = "select group_register from professor";
		int count = 0;
		List<String> groups = session.createQuery(query).getResultList();
		String temp = "";
		for (String string : groups) {
			if (!string.equals("") && !string.equals(null)) {
				String[] arr = string.split("-");
				for (String s : arr) {
					if (!temp.contains(s)) {
						temp = temp.concat(s + "-");
						count++;
					}
				}

			}
		}
		System.out.println(temp);
		System.out.println(count);
		return count;
	}

	@Override
	public int register_reject(int groupId, int professorId) {
		Session session = sessionFactory.getCurrentSession();
		Professor pr = session.get(Professor.class, professorId);
		String rg = pr.getGroup_register();
		String[] arrR = rg.split("-");
		String temp = "";
		if (!rg.contains(String.valueOf(groupId))) {
			return 0;
		} else {
			for (String string : arrR) {
				if (Integer.valueOf(string) == groupId) {
					System.out.println("ctinue");
					continue;
				} else {
					temp = temp.concat(string + "-");
				}

			}
			pr.setGroup_register(temp);
			session.update(pr);
			return 1;
		}

	}

	@Override
	public int register_agree(int groupId, int professorId) {
		long count = 0;
		try {
			count = countGroupAgree(professorId);
		} catch (NoResultException e) {
			count = 0;
		}
		Session session = sessionFactory.getCurrentSession();
		if (count == 5) {
			return 0;
		} else {
			GroupStudent gr = session.get(GroupStudent.class, groupId);
			gr.setProfessor(professorId);
			session.update(gr);
			Professor pr = session.get(Professor.class, professorId);
			String rg = pr.getGroup_register();
			String[] arrR = rg.split("-");
			String temp = "";
			for (String string : arrR) {
				System.out.println(string);
				if (Integer.valueOf(string) == groupId) {
					continue;
				} else {
					temp = temp.concat(string + "-");
				}
			}
			pr.setGroup_register(temp);
			session.update(pr);
			return 1;
		}

	}

	public Long countGroupAgree(int professorId) {
		Session session = sessionFactory.getCurrentSession();
		String query = "select count(id) from groupstudent where professor = :id group by professor";
		Long count = (Long) session.createQuery(query).setParameter("id", professorId).getSingleResult();

		return count;

	}
	// Vu

	@SuppressWarnings("unchecked")
	@Override
	public List<Professor> findAll() {
		Session session = sessionFactory.getCurrentSession();
		List<Professor> list = session.createQuery("from professor").getResultList();
		return list;
	}

	@Override
	public Professor findOne(int id) {
		Session session = sessionFactory.getCurrentSession();
		Professor professor = session.get(Professor.class, id);
		return professor;
	}

	@Override
	public ProfessorCustom getProfessorCustom(int id) {
		Session session = sessionFactory.getCurrentSession();
		Professor professor = session.get(Professor.class, id);
		UserDetail userDetail = session.get(UserDetail.class, id);
		ProfessorCustom professorCustom = new ProfessorCustom(userDetail.getPhone(), userDetail.getEmail(),
				userDetail.getAddress(), professor.getPdescription(), professor.getPname(),
				professor.getPtechnologies(), professor.getAchivement(), professor.getExperiences(),
				professor.getGroup_register());
		return professorCustom;
	}

}
