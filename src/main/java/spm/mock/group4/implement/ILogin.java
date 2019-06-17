package spm.mock.group4.implement;

import spm.mock.group4.entity.User;
import spm.mock.group4.entity.UserDetail;

public interface ILogin {
	String login(String username,String pass);
	String login(int userId, int roleId);
	User getUserById(int id);
	UserDetail getUserDetailById(int id);
}
