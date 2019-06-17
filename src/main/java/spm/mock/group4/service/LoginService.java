package spm.mock.group4.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import spm.mock.group4.dao.LoginDao;
import spm.mock.group4.entity.User;
import spm.mock.group4.entity.UserDetail;
import spm.mock.group4.implement.ILogin;

@Service
public class LoginService implements ILogin {
	
	@Autowired
	LoginDao loginDAO;

	public String login(String username, String pass) {
		return loginDAO.login(username, pass);
	}

	@Override
	@Transactional
	public String login(int userId, int roleId) {
		return loginDAO.login(userId, roleId);
	}

	@Override
	@Transactional
	public User getUserById(int id) {
		return loginDAO.getUserById(id);
	}

	@Override
	@Transactional
	public UserDetail getUserDetailById(int id) {
		return loginDAO.getUserDetailById(id);
	}
	
	
}
