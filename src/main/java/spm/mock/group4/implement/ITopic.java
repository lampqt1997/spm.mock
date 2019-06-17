package spm.mock.group4.implement;

import spm.mock.group4.entity.Topic;
import java.util.*;
//vũ
public interface ITopic {
	
	
	Topic insert(Topic topic);
	List<Topic> findAll(); 
	List<Topic> getTopicById(int id);
}
