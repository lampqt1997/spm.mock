	package spm.mock.group4.controller;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder.In;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import spm.mock.group4.entity.custom.GroupStudentCustom;
import spm.mock.group4.entity.custom.ListProfessorCustom;
import spm.mock.group4.entity.custom.StudentCustom;
import spm.mock.group4.entity.custom.StudentCustom2;
import spm.mock.group4.service.AdminService;
import spm.mock.group4.service.ProfessorService;

@Controller
@RequestMapping("/Manager")
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
	@GetMapping("/ListGroupStudent")
	@ResponseBody
	public List<GroupStudentCustom> getLGroupStCus(){
		List<GroupStudentCustom> list = new ArrayList<>();
		list.addAll(adminService.getListGrStuCustom());
		return list;
	}
	
	@GetMapping("/ListProfessor")
	@ResponseBody
	public List<ListProfessorCustom> getListPro(){
		return adminService.getListProCustom();
	}
	
	@GetMapping("/ListStudent")
	@ResponseBody
	public List<StudentCustom2> getListStuCustom(){
		return adminService.getListStudentCustom();
	}
	
	
}
