package spm.mock.group4.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spm.mock.group4.entity.Answer;
import spm.mock.group4.entity.Grade;
import spm.mock.group4.entity.GroupStudent;
import spm.mock.group4.entity.Professor;
import spm.mock.group4.entity.Student;
import spm.mock.group4.entity.UserDetail;
import spm.mock.group4.entity.custom.GradeCustom;
import spm.mock.group4.entity.custom.GroupAnotherCustom;
import spm.mock.group4.entity.custom.StudentCustom;
import spm.mock.group4.implement.IStudent;

@Repository
public class StudentDao implements IStudent {
	@Autowired
	SessionFactory sessionFactory;

	// TriVoVan
	@Override
	public Student getStudent(int student_id) {
		Session session = sessionFactory.getCurrentSession();
		JSONObject jsonObject = null;
		Student st = null;
		try {
			st = session.get(Student.class, student_id);
			jsonObject = new JSONObject();
			jsonObject.put("getStudent", 1);
		} catch (Exception e) {
			System.out.println("error: " + e.getMessage());
			jsonObject = new JSONObject();
			jsonObject.put("getStudent", 0);

		}
		return st;
	}

	@Override
	public String studentUpdateInfo(int id, String email, String address, String phone, String description) {
		Session session = sessionFactory.getCurrentSession();
		JSONObject jsonObject = null;
		Student st = null;
		try {
			st = session.get(Student.class, id);
			st.getUser().getUserDetail().setEmail(email);
			st.getUser().getUserDetail().setAddress(address);
			st.getUser().getUserDetail().setPhone(phone);
			st.setSdesription(description);
			session.update(st);
			jsonObject = new JSONObject();
			jsonObject.put("setInfo", true);
			jsonObject.put("student", st);
		} catch (Exception e) {
			System.out.println("error: " + e.getMessage());
			jsonObject = new JSONObject();
			jsonObject.put("setInfo", false);

		}

		return jsonObject.toString();
	}

	@Override
	public String studentUpdateInfo(int id, String tech) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		JSONObject jsonObject = new JSONObject();
		Student st;
		try {
			st = session.get(Student.class, id);
			st.setStechnologies(st.getStechnologies() + "-" + tech);
			session.save(st);
			jsonObject.put("setTech", true);
			jsonObject.put("student", st);
			return jsonObject.toString();

		} catch (Exception e) {
			System.out.println("error: " + e.getMessage());
			jsonObject = new JSONObject();
			jsonObject.put("setTech", false);
		}
		return jsonObject.toString();
	}

	// Lampqt
	@Override
	public String registerProfessor(int idProfessor, int idUser) {
		System.out.println(idProfessor);
		System.out.println(idUser);
		Session session = sessionFactory.getCurrentSession();
		Student st = session.get(Student.class, idUser);
		System.out.println(st);
		GroupStudent gr = session.get(GroupStudent.class, st.getId_group());
		System.out.println(gr);
		if (idUser != gr.getLeader()) {
			return "0";
		} else {
			Professor pr = session.get(Professor.class, idProfessor);
			System.out.println(pr);
			if (pr.getGroup_register().contains(String.valueOf(st.getId_group()))) {
				System.out.println("1");
				return "1";
			} else {
				String registerGroup = pr.getGroup_register();
				registerGroup = registerGroup.concat(st.getId_group()+"-");
				System.out.println(registerGroup);
				pr.setGroup_register(registerGroup);
				System.out.println(pr);
				session.update(pr);
				System.out.println("2");
				return "2";
			}
		}

	}
	
	//Vu
	@SuppressWarnings("unchecked")
	@Override
	public List<Student> findAll(int id) {
		Session session = sessionFactory.getCurrentSession();
		List<Student> list = (List<Student>) session.createQuery("from student where id_group = "+id).getResultList();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<StudentCustom> getStudentCustom(int id_group) {
		Session session = sessionFactory.getCurrentSession();
		List<Student> students =  (List<Student>) session.createQuery("from student where id_group = "+id_group).getResultList();
		List<StudentCustom> studentCustoms = new ArrayList<StudentCustom>();
		for(Student st : students) {
			StudentCustom studentCustom = new StudentCustom();
			int id = st.getId(); 
			String name = st.getSname();
			String stCode = st.getStudent_code();
			Grade grade = st.getGrade();
			float gr = 0;
			if (grade != null) {
				gr = grade.getGrade();
			}else {
				gr=0;
			}
			studentCustom.setId(id);
			studentCustom.setName(name);
			studentCustom.setStudentCode(stCode);
			studentCustom.setGrade(gr);
			studentCustoms.add(studentCustom);
		}
		System.out.println(studentCustoms);
		return studentCustoms;
	}

	@Override
	public StudentCustom getStudentDetailCustom(int id) {
		Session session = sessionFactory.getCurrentSession();
		UserDetail user = session.get(UserDetail.class, id);
		Student student = session.get(Student.class, id);
		StudentCustom studentCustom = new StudentCustom(student.getSname(), student.getStudent_code(), user.getEmail(),
					user.getAddress(), user.getPhone(), student.getStechnologies(), student.getSdescription());
		return studentCustom;
	}
	
	//Nguyen
	@Override
	public List<GroupAnotherCustom> studentGroup() {
		Session session = sessionFactory.getCurrentSession();
		List<GroupAnotherCustom> list = new ArrayList<GroupAnotherCustom>();
		List<GroupStudent> groupStudents = session.createQuery("from groupstudent where id not in(9999)").getResultList();
		for (GroupStudent groupStudent : groupStudents) {
			GroupAnotherCustom g = new GroupAnotherCustom();
			g.setId(groupStudent.getId());
			String name = getStudent(groupStudent.getLeader()).getSname();
			g.setNameLeader(name);
			if (isFull(groupStudent.getId())) {
				g.setStatus("Full");
			} else {
				g.setStatus("Available");
			}
			list.add(g);
		}

		return list;
	}
	@Override
	public boolean isFull(int idGroup) {
		Session session = sessionFactory.getCurrentSession();
		GroupStudent g = session.get(GroupStudent.class, idGroup);
		if (g.getLeader() == 0) {
			return false;
		} else if (g.getStudent1() == 0) {
			return false;

		} else if (g.getStudent2() == 0) {
			return false;
		} else if (g.getStudent3() == 0) {
			return false;
		} else if (g.getStudent4() == 0) {
			return false;
		} else if (g.getStudent5() == 0) {
			return false;
		}

		return true;

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<GradeCustom> studentGrade(int userId) {
		Session session = sessionFactory.getCurrentSession();
		List<GradeCustom> list = new ArrayList<GradeCustom>();
		List<Answer> listAnswer = session.createQuery("from answer where id_student= :id").setParameter("id", userId).getResultList();
		for (Answer answer : listAnswer) {
			GradeCustom g = new GradeCustom();
			g.setQuestion(answer.getQuestion().getQuestion());
			g.setId(answer.getQuestion().getId());
			g.setOption1(answer.getQuestion().getOption1());
			g.setOption2(answer.getQuestion().getOption2());
			g.setOption3(answer.getQuestion().getOption3());
			g.setOption4(answer.getQuestion().getOption4());
			
			g.setAnswer(answer.getAnswer());
			g.setPoint(point1(answer.getAnswer(), answer.getQuestion().getAnswerTrue()));
			list.add(g);
		}
		return list;

	}

	@Override
	public String point1(int answer, int answertrue) {

		if (answer == answertrue) {
			return "5.0 / 5.0 point";
		} else {
			return "0.0 / 5.0 point";
		}

	}
}
