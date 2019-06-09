package spm.mock.group4.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spm.mock.group4.service.LoginService;
import spm.mock.group4.service.ProfessorService;
import spm.mock.group4.entity.*;
import spm.mock.group4.entity.custom.GroupStudentCustom;

@Controller
@RequestMapping("/handler")
public class HandlerController {
	
	@Autowired
	ProfessorService professorService;
	@Autowired
	LoginService loginService;
	
	@GetMapping(path="/login/{userId}/{roleId}")
	public String login(@PathVariable int userId, @PathVariable int roleId, ModelMap mm) {
		mm.addAttribute("userId",userId);
		switch (roleId) {
		case 1:
			return "/admin/admin";
		
		case 2:
			return professor(userId, mm);
		
		case 3:
			return loginService.login(userId, roleId);
		
		}
		return "";
	}
	
	
	@GetMapping(path="/change-pass")
	public String changePass() {
		return "genaral/change-password";
	}
	@GetMapping(path="/st-do-test")
	public String studentDoTest() {
		return "student/student-do-test";
	}
	@GetMapping(path="/st-no-group")
	public String studentNoGroup() {
		return "student/student-no-group";
	}
	@GetMapping(path="/st-have-group")
	public String studentHaveGroup() {
		return "student/student-have-group";
	}
	@GetMapping(path="/st-update-info")
	public String studentUpdateInfo() {
		return "student/student-update-info";
	}
	@GetMapping(path="/st-view-grade")
	public String studentViewGrade() {
		return "student/student-view-grade";
	}
	@GetMapping(path="/st-view-info")
	public String StudentViewInfo() {
		
		return "student/student-view-info";
	}

	@GetMapping(path="/professor/{id_professor}")
	public String professor(@PathVariable int id_professor, ModelMap mm) {
		List<GroupStudentCustom> groups = professorService.customsById(id_professor);
		List<GroupStudentCustom> groupsAnother = professorService.customsAnotherById(id_professor);
		int countGroupRegister = professorService.countGroupRegistered();
		int countGroup = professorService.countGroup();
		int countProfessor = professorService.countProfessor();
		
		mm.addAttribute("groups",groups);
		mm.addAttribute("groupsAnother",groupsAnother);
		mm.addAttribute("countGroup", countGroup);
		mm.addAttribute("countProfessor", countProfessor);
		mm.addAttribute("countGroupRegister", countGroupRegister);
		
		return "professor/professor";
	}
	@GetMapping(path="/pr-create-topic")
	public String professorCreateTopic() {
		return "professor/professor-create-topic";
	}
	@GetMapping(path="/pr-view-info")
	public String professorViewInfo() {
		return "professor/professor-view-info";
	}
	@GetMapping(path="/pr-update-info")
	public String professorUpdateInfo() {
		return "professor/professor-update-info";
	}
	@GetMapping(path="/pr-view-group/{idGroup}")
	public String professorViewGroupStudent(@PathVariable int idGroup, ModelMap mm) {
		return "professor/professor-view-group-student";
	}
	@GetMapping(path="/admin")
	public String admin() {
		return "admin/admin";
	}
	@GetMapping(path="/admin-set-role")
	public String adminSetRole() {
		return "admin/admin-set-role";
	}	
	
}
