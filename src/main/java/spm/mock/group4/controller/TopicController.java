package spm.mock.group4.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import spm.mock.group4.entity.Professor;
import spm.mock.group4.entity.Topic;
import spm.mock.group4.service.ProfessorService;
import spm.mock.group4.service.TopicService;

@RestController
@RequestMapping("/topic")
//Vũ
public class TopicController {

	@Autowired
	private TopicService topicService;

	@Autowired
	private ProfessorService professorService;

	//vũ
	@GetMapping(path = "/create/{Tname}/{Tdescription}/{id_professor}")
	@Transactional
	@ResponseBody
	public Topic createTopic(@ModelAttribute Topic topic) {
		return topicService.insert(topic);
	}

	//vũ
	@GetMapping(path = "/findall")
	@Transactional
	public List<Topic> findAll() {
		return topicService.findAll();
	}

	//vũ
	@GetMapping(path = "/findone/{id}")
	@Transactional
	public Professor findOne(@PathVariable("id") int id) {
		return professorService.findOne(id);

	}
	
	//vũ
	@GetMapping(path = "/findall/{id}")
	@Transactional
	public List<Topic> findById(@PathVariable("id") int id) {
		return topicService.getTopicById(id);
	}
}
