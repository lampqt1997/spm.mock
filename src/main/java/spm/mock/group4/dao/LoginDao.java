package spm.mock.group4.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spm.mock.group4.entity.Student;
import spm.mock.group4.entity.User;
import spm.mock.group4.entity.UserDetail;
import spm.mock.group4.implement.ILogin;
import spm.mock.group4.other.EncryptPassword;

@Repository
public class LoginDao implements ILogin {
	
	@Autowired
	SessionFactory sessionFactory;

	public String login(String username, String pass) {
		EncryptPassword encryptPassword = new EncryptPassword();
		String password_en = encryptPassword.getMD5(pass);
		Session session = sessionFactory.getCurrentSession();
		JSONObject jsonObject = null;
		try {
			String sql = "from users where username='" + username + "' and pass='" + password_en + "'";
			System.out.println(sql);
			User user = (User) session.createQuery(sql).getSingleResult();
			if (user != null) {
				if (user.getUsername().equals(username) && user.getPass().equals(password_en)) {
					jsonObject = new JSONObject();
					jsonObject.put("loginCheck", 1);
					jsonObject.put("userid", user.getId());
					jsonObject.put("role", user.getRole_id());
				} else {
					jsonObject = new JSONObject();
					System.out.println("e1");
					jsonObject.put("loginCheck", 0);
				}
			} else {
				jsonObject = new JSONObject();
				System.out.println("e2");
				jsonObject.put("loginCheck", 0);
			}
		} catch (Exception e) {
			System.out.println("error " + e.getMessage());
			jsonObject = new JSONObject();
			jsonObject.put("loginCheck", 0);
		}
		return jsonObject.toString();
	}
	
	public String login(int userId, int roleId) {
		Session session = sessionFactory.getCurrentSession();
		Student st = session.get(Student.class, userId);
		if (st!=null) {
			if (st.getId_group() != 9999) {
				return st.getId_group()+"";
			}
		}
		
		return "9999";
		
	}

	@Override
	public User getUserById(int id) {
		return sessionFactory.getCurrentSession().get(User.class, id);
	}
	@Override
	public UserDetail getUserDetailById(int id) {
		return sessionFactory.getCurrentSession().get(UserDetail.class, id);
	}
}
