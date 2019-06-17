package spm.mock.group4.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import spm.mock.group4.entity.Student;
import spm.mock.group4.entity.custom.StudentCustom;
import spm.mock.group4.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@Autowired
	StudentService studentService;
	
	@GetMapping(path="/register-professor/{idUser}/{idProfessor}")
	@ResponseBody
	public String registerProfessor(@PathVariable("idUser") int idUser, @PathVariable("idProfessor") int idProfessor  ) {
		return studentService.registerProfessor(idProfessor, idUser);
	}
	
	
	//vũ
	@GetMapping(path = "/getall/{id}")
	@Transactional
	public List<Student> getAll(@PathVariable("id") int id){
		return studentService.findAll(id);
	}
	
	//vũ
	@GetMapping(path = "/getstudent/{id}")
	@Transactional
	public List<StudentCustom> getSudentCustom(@PathVariable("id") int id){
		return studentService.getStudentCustom(id);
	}
}
