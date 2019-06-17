package spm.mock.group4.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import spm.mock.group4.service.HomeService;

@CrossOrigin(origins = "*", maxAge = 3600, allowedHeaders = "*")
@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	private HomeService homeService;
	@Autowired
	private HandlerController handlerController;

	@GetMapping()
	public String home(HttpSession session, ModelMap mm) {
		if (session.getAttribute("user") != null) {
			return handlerController.login((int)session.getAttribute("userId"), (int)session.getAttribute("roleId"), mm, session);
		} else {
			return homeService.home();
		}
		
	}
	@GetMapping(path="/logout")
	public String logout(HttpSession session, ModelMap mm) {
		session.removeAttribute("userId");
		session.removeAttribute("roleId");
		session.removeAttribute("user");
		return home(session, mm);
	}
}
