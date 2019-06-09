package spm.mock.group4.controller;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import spm.mock.group4.service.LoginService;

@Controller
@RequestMapping("/login")

public class LoginController {

	@Autowired
	LoginService loginService;

	@GetMapping(path = "/{username}/{pass}")
	@ResponseBody
	@Transactional
	public String login(@PathVariable String username, @PathVariable String pass) {
		return loginService.login(username, pass);
	}
	
}
