package spm.mock.group4.controller;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import spm.mock.group4.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Autowired
	LoginService loginService;
	
	@Autowired
	HandlerController handlerController;

	@PostMapping()
	@Transactional
	public String login(@RequestParam String username, @RequestParam String pass, ModelMap mm, HttpSession session) {
		String s = loginService.login(username, pass); 
		JSONObject object  = new JSONObject(s);
		System.out.println(object.get("loginCheck").getClass().getTypeName());
		if (object.get("loginCheck").equals(1)) {
			System.out.println("check");
			int userId = object.getInt("userid");
			int roleId = object.getInt("role");
			return handlerController.login(userId, roleId, mm,session);
		}else {
			mm.addAttribute("err","Tài khoản hoặc mật khẩu không đúng!");
			return "home";
		}
	}
	
}
