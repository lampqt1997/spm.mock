package spm.mock.group4.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spm.mock.group4.dao.HomeDao;
import spm.mock.group4.implement.IHome;

@Service
public class HomeService implements IHome {
	
	@Autowired
	private HomeDao homeDao;
	@Override
	@Transactional
	public String home() {
		//
		return homeDao.home();
	}

}
