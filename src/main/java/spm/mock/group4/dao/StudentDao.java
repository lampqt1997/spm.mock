package spm.mock.group4.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spm.mock.group4.entity.Student;
import spm.mock.group4.implement.IStudent;

@Repository
public class StudentDao implements IStudent {
	@Autowired
	SessionFactory sessionFactory;

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
			session.save(st);
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

}
