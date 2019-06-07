package spm.mock.group4.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spm.mock.group4.entity.Roles;

import spm.mock.group4.implement.IHome;

@Repository
public class HomeDao implements IHome {
	
	
	@Autowired
	SessionFactory sessionFactory;//session factory để mở kết nối đến dtbase
	
	@Override
	public String home() {
		return null;
		
		
	
	}

}
