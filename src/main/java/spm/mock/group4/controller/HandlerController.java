package spm.mock.group4.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import spm.mock.group4.service.AdminService;
import spm.mock.group4.service.ChangePasswordService;
import spm.mock.group4.service.LoginService;
import spm.mock.group4.service.ProfessorService;
import spm.mock.group4.service.StudentService;
import spm.mock.group4.service.TestService;
import spm.mock.group4.service.TopicService;
import spm.mock.group4.entity.*;
import spm.mock.group4.entity.custom.GradeCustom;
import spm.mock.group4.entity.custom.GroupAnotherCustom;
import spm.mock.group4.entity.custom.GroupStudentCustom;
import spm.mock.group4.entity.custom.ListProfessorCustom;
import spm.mock.group4.entity.custom.ProfessorCustom;
import spm.mock.group4.entity.custom.Score;
import spm.mock.group4.entity.custom.StudentCustom;
import spm.mock.group4.entity.custom.StudentCustom2;

@CrossOrigin(origins = "*", maxAge = 3600, allowedHeaders = "*")
@Controller
@RequestMapping("/handler")
@SessionAttributes(names = { "user", "userId", "roleId" })
public class HandlerController {

	@Autowired
	ProfessorService professorService;
	@Autowired
	LoginService loginService;
	@Autowired
	StudentService studentService;
	@Autowired
	ChangePasswordService changePasswordService;
	@Autowired
	TopicService topicService;
	@Autowired
	AdminService adminService;
	@Autowired
	TestService testService;
	
	@PostMapping(path = "/login")
	public String login(@RequestParam("userId") int userId, @RequestParam("roleId") int roleId, ModelMap mm,
			HttpSession session) {
		User u = loginService.getUserById(userId);
		UserDetail udt = loginService.getUserDetailById(userId);
		session.setAttribute("userId", userId);
		session.setAttribute("roleId", roleId);
		session.setAttribute("user", udt);
		mm.addAttribute("userId", userId);
		mm.addAttribute("roleId", roleId);
		mm.addAttribute("user", udt);
		switch (roleId) {
		case 1:
			return admin(mm);

		case 2:
			return professor(userId, mm);

		case 3:
			String s = loginService.login(userId, roleId);
			System.out.println(s);
			if(s.equals("9999")) {
				return studentNoGroup(mm);
			}else {
				return studentHaveGroup(mm,Integer.valueOf(s));
			}
		}
		return "home";
	}

	@GetMapping(path = "/change-pass/{id}/{old_pass}/{new_pass}")
	@Transactional
	@ResponseBody
	public String changePass(@PathVariable int id, @PathVariable String old_pass, @PathVariable String new_pass) {
		System.out.println("change-pass");
		return changePasswordService.changePassword(id, old_pass, new_pass);
	}

	@GetMapping(path = "/change-pass")
	public String changePass() {
		return "genaral/change-password";
	}

	@GetMapping(path="/st-no-group")
	public String studentNoGroup(ModelMap mm) {
		List<GroupAnotherCustom> studentGroup = studentService.studentGroup();
		mm.addAttribute("studentGroup", studentGroup);
		return "student/student-no-group";
	}
	
	// Vu
	@GetMapping(path = "/st-have-group/{group_id}")
	@Transactional
	public String studentHaveGroup(ModelMap mm,@PathVariable int group_id) {
		System.out.println("have");
		List<ListProfessorCustom> list = adminService.getListProCustom();
		List<StudentCustom> studentCustoms = studentService.getStudentCustom(group_id);
		mm.addAttribute("professors", list);
		mm.addAttribute("students", studentCustoms);
		return "student/student-have-group";
	}

	// Vo Van Tri
	@GetMapping(path = "/st-update-info/{id}/{email}/{address}/{phone}/{description}")
	@Transactional
	@ResponseBody
	public String studentUpdateInfo(@PathVariable int id, @PathVariable String email, @PathVariable String address,
			@PathVariable String phone, @PathVariable String description) {
		System.out.println("st-update");
		return studentService.studentUpdateInfo(id, email, address, phone, description);
	}

	// Vo Van Tri
	@GetMapping(path = "/st-update-info/tech/{id}/{tech}")
	@Transactional
	@ResponseBody
	public String studentUpdateInfo(@PathVariable int id, @PathVariable String tech) {
		return studentService.studentUpdateInfo(id, tech);

	}

	// Vo Van Tri
	@GetMapping(path = "/st-view-info/{student_id}")
	@Transactional
	public String studentViewInfo(@PathVariable int student_id, ModelMap modelMap) {
		Student st = studentService.getStudent(student_id);
		if (st != null) {
			modelMap.addAttribute("student", st);
		} else {
			System.out.println("error");
		}
		return "student/student-view-info";
	}
	@GetMapping(path = "/st-view-st-info/{student_id}")
	@Transactional
	public String studentViewStudentInfo(@PathVariable int student_id, ModelMap modelMap) {
		Student st = studentService.getStudent(student_id);
		System.out.println(st);
		if (st != null) {
			modelMap.addAttribute("student", st);
		} else {
			System.out.println("error");
		}
		return "student/student-view-student-info";
	}
	@GetMapping(path = "/st-view-pr-info/{professorId}")
	@Transactional
	public String studentViewProfessorInfo(@PathVariable int professorId, ModelMap mm) {
		ProfessorCustom professorCustom = professorService.getProfessorCustom(professorId);
		List<Topic> listTopic = topicService.getTopicById(professorId);
		mm.addAttribute("professor", professorCustom);
		mm.addAttribute("listtopic", listTopic);

		return "student/student-view-professor-info";
	}
	@GetMapping(path="/st-view-grade/{userId}/{testId}")
	public String studentViewGrade(ModelMap mm,@PathVariable  int userId,@PathVariable  int testId, HttpSession httpSession) {
		List<GradeCustom> gradeCustoms = studentService.studentGrade(userId);
		mm.addAttribute("gradeCustoms", gradeCustoms);
		boolean check = testService.checkDidTest(testId, userId);
		if (!check) {
			mm.addAttribute("err2", "Bạn chưa làm bài này nên không thể xem điểm chi tiết");
			return "student/student-status-test";
		}else {
			if (httpSession.getAttribute("score")!=null) {
				Score sc = (Score)httpSession.getAttribute("score");
				mm.addAttribute("score", sc);
			}else {
				Score sc = testService.score(userId, testId);
				mm.addAttribute("score", sc);
			}
			return "student/student-view-grade";
		}
		
	}
	
	@GetMapping(path="/st-do-test")
	public String studentDoTest(ModelMap mm,@SessionAttribute("userId") int userId, HttpSession httpSession) {
		List<Test> tests = testService.getTests();
		if (tests.size() == 0) {
			mm.addAttribute("errTest","Không có bài test nào hiện tại");
		}else {
			mm.addAttribute("tests",tests);
		}
		return "student/student-list-test";
	}
	@GetMapping(path="/st-view-list-grade")
	public String studentViewListGrade(ModelMap mm, HttpSession httpSession) {
		List<Test> tests = testService.getTests();
		if (tests.size() == 0) {
			mm.addAttribute("errTest","Không có bài test nào hiện tại");
		}else {
			mm.addAttribute("tests",tests);
		}
		return "student/student-view-list-grade";
	}

	@GetMapping(path = "/st-view-info")
	public String StudentViewInfo() {
		return "student/student-view-info";
	}
	@GetMapping(path = "/st-score/{userId}/{testId}")
	public String studentScore(@PathVariable ("userId") int userId,@PathVariable("testId") int testId, ModelMap mm,HttpSession session) {
		Score score = testService.score(userId,testId);
		mm.addAttribute("score", score);
		session.setAttribute("score", score);
		return "student/score";
	}
	
	@GetMapping(path = "/professor/{id_professor}")
	public String professor(@PathVariable int id_professor, ModelMap mm) {
		List<GroupStudentCustom> groups = professorService.customsById(id_professor);
		List<GroupStudentCustom> groupsAnother = professorService.customsAnotherById(id_professor);
		int countGroupRegister = professorService.countGroupRegistered();
		int countGroup = professorService.countGroup();
		int countProfessor = professorService.countProfessor();

		mm.addAttribute("groups", groups);
		mm.addAttribute("groupsAnother", groupsAnother);
		mm.addAttribute("countGroup", countGroup);
		mm.addAttribute("countProfessor", countProfessor);
		mm.addAttribute("countGroupRegister", countGroupRegister);

		return "professor/professor";
	}

	@GetMapping(path = "/pr-create-topic")
	public String professorCreateTopic() {
		return "professor/professor-create-topic";
	}

	@GetMapping(path = "/pr-view-info")
	@Transactional
	public String professorViewInfo(@SessionAttribute("userId") int userId, ModelMap mm) {
		ProfessorCustom professorCustom = professorService.getProfessorCustom(userId);
		List<Topic> listTopic = topicService.getTopicById(userId);
		mm.addAttribute("professor", professorCustom);
		mm.addAttribute("listtopic", listTopic);

		return "professor/professor-view-info";
	}

	@GetMapping(path = "/pr-view-group/{id}")
	@Transactional
	public String professorViewGroupStudent(@PathVariable("id") int id, ModelMap mm) {
		List<StudentCustom> list = studentService.getStudentCustom(id);
		mm.addAttribute("students", list);
		return "professor/professor-view-group-student";
	}
	@GetMapping(path = "/pr-view-student-info/{id}")
	@Transactional
	public String professorViewStudentInfo(@PathVariable("id") int id, ModelMap mm) {
		Student st = studentService.getStudent(id);
		mm.addAttribute("student",st );
		return "professor/professor-view-student-info";
	}
	@GetMapping(path = "/pr-view-topic")
	@Transactional
	public String professorViewTopic(ModelMap mm) {
		List<Topic> list = topicService.findAll();
		mm.addAttribute("topics", list);
		return "professor/professor-view-topic";
	}

	@GetMapping(path = "/pr-update-info")
	public String professorUpdateInfo() {
		return "professor/professor-update-info";
	}

	// Linh
	@GetMapping(path = "/admin")
	public String admin(ModelMap mm) {
		List<GroupStudentCustom> grStudents = adminService.getListGrStuCustom();
		List<ListProfessorCustom> professors = adminService.getListProCustom();
		List<StudentCustom2> students = adminService.getListStudentCustom();
		mm.addAttribute("grStudentList", grStudents);
		mm.addAttribute("professors", professors);
		mm.addAttribute("students", students);
		mm.addAttribute("countStudent", adminService.countStudent());
		mm.addAttribute("countGroup", adminService.countGroup());
		mm.addAttribute("countProfessor", adminService.countProfessor());
		mm.addAttribute("countAcccount", adminService.countAccount());
		mm.addAttribute("countTopic", adminService.countTopic());
		return "admin/admin";
	}

	@GetMapping(path = "/admin-set-role")
	public String adminSetRole() {
		return "admin/admin-set-role";
	}

}
