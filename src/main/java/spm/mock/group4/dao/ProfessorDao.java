package spm.mock.group4.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spm.mock.group4.entity.GroupStudent;
import spm.mock.group4.entity.Professor;
import spm.mock.group4.entity.Student;
import spm.mock.group4.entity.custom.GroupStudentCustom;
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
			System.out.print(student.getId() + " ");
			System.out.print(student.getGrade().getGrade() + "\n");
			grade += (float) student.getGrade().getGrade();
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
		if (!pr.getGroup_register().equals("null")) {
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
		for (Professor professor : professors) {
			if (!professor.getGroup_register().equals("") && !professor.getGroup_register().equals(null)) {
				String[] arrId = professor.getGroup_register().split("-");
				for (String s : arrId) {
					int i = Integer.valueOf(s);
					GroupStudentCustom cs = new GroupStudentCustom();
					cs.setGrade(totalAvg(i));
					cs.setId(i);
					cs.setLeader(getNameLeaderById(i));
					cs.setProfessor(professor.getPname());
					result.add(cs);
				}
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
		int count =0;
		List<String> groups = session.createQuery(query).getResultList();
		String temp ="";
		for (String string : groups) {
			if (!string.equals("") && !string.equals(null)) {
				String[] arr = string.split("-");
				for (String s : arr) {
					if (!temp.contains(s)) {
						temp = temp.concat(s+"-");
						count++;
					}
				}
				
			}
		}
		System.out.println(temp);
		System.out.println(count);
		return count;
	}
}
