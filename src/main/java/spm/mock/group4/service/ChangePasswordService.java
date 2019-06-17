package spm.mock.group4.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spm.mock.group4.dao.ChangePasswordDao;
import spm.mock.group4.implement.IChangePassword;

@Service
public class ChangePasswordService implements IChangePassword {
	@Autowired
	ChangePasswordDao changePasswordDao;

	@Override
	public String changePassword(int id, String old_pass, String new_pass) {
		// TODO Auto-generated method stub
		return changePasswordDao.changePassword(id, old_pass, new_pass);
	}
}
