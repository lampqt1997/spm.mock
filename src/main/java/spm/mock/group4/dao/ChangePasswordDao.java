package spm.mock.group4.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import spm.mock.group4.entity.Student;
import spm.mock.group4.entity.User;
import spm.mock.group4.implement.IChangePassword;
import spm.mock.group4.other.EncryptPassword;

@Repository
public class ChangePasswordDao implements IChangePassword {
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public String changePassword(int id, String old_pass, String new_pass) {

		Session session = sessionFactory.getCurrentSession();
		EncryptPassword encryptPassword;
		User user;
		try {
			encryptPassword = new EncryptPassword();
			String old_pass_en = encryptPassword.getMD5(old_pass);
			user = session.get(User.class,id);
			if (user.getPass().equals(old_pass_en)) {
				String new_pass_en = encryptPassword.getMD5(new_pass);
				user.setPass(new_pass_en);
				session.update(user);
				return "1";
			}else {
				return "0";
			}

		} catch (Exception e) {
		
			System.out.println("error2 " + e.getMessage());
			return "0";
		}	
	}

}
