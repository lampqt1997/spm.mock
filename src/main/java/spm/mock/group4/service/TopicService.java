package spm.mock.group4.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spm.mock.group4.dao.TopicDAO;
import spm.mock.group4.entity.Topic;
import spm.mock.group4.implement.ITopic;

@Service
public class TopicService implements ITopic {
	
	@Autowired
	private TopicDAO topicDAO;

	@Override
	@Transactional
	public Topic insert(Topic topic) {
		return topicDAO.insert(topic);
	}

	@Override
	@Transactional
	public List<Topic> findAll() {
		return topicDAO.findAll();
	}

	@Override
	public List<Topic> getTopicById(int id) {
		return topicDAO.getTopicById(id);
	}

	

}
