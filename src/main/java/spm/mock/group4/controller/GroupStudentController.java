package spm.mock.group4.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import spm.mock.group4.entity.GroupStudent;
import spm.mock.group4.service.GroupStudentService;

@RestController
@RequestMapping("/group")
public class GroupStudentController {
	
	@Autowired
	private GroupStudentService groupStudentService;
	
	@GetMapping("/getall")
	@Transactional
	//vũ
	public List<GroupStudent> getAll(){
		return groupStudentService.findAll();
	}
	
	//vũ
	@GetMapping("/findbyid/{id}")
	@Transactional
	public GroupStudent findById(@PathVariable("id") int id){
		return groupStudentService.findByid(id);
	}
}
