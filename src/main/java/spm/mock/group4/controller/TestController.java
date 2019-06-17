package spm.mock.group4.controller;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import spm.mock.group4.entity.Answer;
import spm.mock.group4.entity.Question;
import spm.mock.group4.service.TestService;
@CrossOrigin(origins = "*", maxAge = 3600, allowedHeaders = "*")
@Controller
@RequestMapping("/test")
public class TestController {
	
	@Autowired
	TestService testService;

	// get questions by id_test
	@GetMapping(path = "/question/{id_test}")
	public String getQuestions(@PathVariable int id_test, ModelMap mm, HttpSession session) {
		int idUser = (int) session.getAttribute("userId");
		boolean check = testService.checkDidTest(id_test, idUser);
		if (!check) {
			List<Question> list = testService.getQuestions(id_test);
			mm.addAttribute("list", list);
			return "/student/student-do-test";
		}else {
			mm.addAttribute("err","Bạn đã làm bài test này rồi");
			return "/student/student-status-test";
		}
		
		

	}

	// answer by answers
	@GetMapping(path = "/answer/{id_student}/{id_question}/{answer}")
	@ResponseBody
	public String getAnswer(@PathVariable int id_student, @PathVariable int id_question, @PathVariable int answer, ModelMap mm) {
		System.out.print(id_student+" ");
		System.out.print(id_question+" ");
		System.out.print(answer+"\n");
		return testService.getAnswer(id_student, id_question, answer);

	}
}
