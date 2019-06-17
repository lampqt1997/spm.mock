package spm.mock.group4.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spm.mock.group4.entity.Topic;
import spm.mock.group4.implement.ITopic;

@Repository
public class TopicDAO implements ITopic {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Topic insert(Topic topic) {
		Session session = sessionFactory.getCurrentSession();
		session.save(topic);
		return topic;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Topic> findAll() {
		Session session = sessionFactory.getCurrentSession();
		List<Topic> list = (List<Topic>) session.createQuery("from topic").getResultList();
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Topic> getTopicById(int id) {
		Session session = sessionFactory.getCurrentSession();
		List<Topic> list = (List<Topic>) session.createQuery("from topic where id_professor = "+id).getResultList();
		return list;
	}


	
	
}
