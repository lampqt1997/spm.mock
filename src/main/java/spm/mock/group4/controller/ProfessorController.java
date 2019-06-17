package spm.mock.group4.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import spm.mock.group4.service.EmailService;
import spm.mock.group4.service.ProfessorService;
@CrossOrigin(origins = "*", maxAge = 3600, allowedHeaders = "*")
@Controller
@RequestMapping("/professor")
public class ProfessorController {
	
	@Autowired
	ProfessorService professorService;
	@Autowired
	EmailService emailService;
	@PostMapping(path="/reject")
	@ResponseBody
	public int register_reject(@RequestParam int groupId, @RequestParam int professorId) {
		int result = professorService.register_reject(groupId, professorId); 
		if (result==1) {
			emailService.register_reject(groupId, professorId);
		}
		return result;
	}
	@PostMapping(path="/agree")
	@ResponseBody
	public int register_agree(@RequestParam int groupId, @RequestParam int professorId) {
		int result = professorService.register_agree(groupId, professorId);
		if (result==1) {
			emailService.register_agree(groupId, professorId);
		}
		return result; 
	}
}
