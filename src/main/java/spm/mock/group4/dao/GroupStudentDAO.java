package spm.mock.group4.dao;

import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spm.mock.group4.entity.GroupStudent;
import spm.mock.group4.entity.Student;
import spm.mock.group4.implement.IGroupStudent;

@Repository
public class GroupStudentDAO implements IGroupStudent<GroupStudent,Integer> {
	
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<GroupStudent> findAll() {
		Session session = sessionFactory.getCurrentSession();
		List<GroupStudent> list = (List<GroupStudent>)session.createQuery("from groupstudent").list();
		return list;
	}

	@Override
	public GroupStudent findByid(int id) {
		Session session = sessionFactory.getCurrentSession();
		GroupStudent groupStudent = null;
		groupStudent = session.get(GroupStudent.class, id);
		//Hibernate.initialize(groupStudent);
		return groupStudent;
	}

	
	
}
