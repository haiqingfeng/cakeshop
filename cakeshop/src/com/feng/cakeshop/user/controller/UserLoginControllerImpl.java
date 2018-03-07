package com.feng.cakeshop.user.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.feng.cakeshop.entity.Admin;
import com.feng.cakeshop.entity.UserLogin;
import com.feng.cakeshop.user.service.UserLoginServiceImpl;

@Controller
@RequestMapping("/user")
public class UserLoginControllerImpl {

	@Resource
	private UserLoginServiceImpl userLoginServiceImpl;
	
	@RequestMapping("/userLogin")
	public String userLogin(@RequestParam("userName") String userName,@RequestParam("password") String password,RedirectAttributes att,HttpSession session) {
		UserLogin ul = userLoginServiceImpl.userLogin(userName, password);
		if(ul != null) {
			session.setAttribute("user", ul);
			return "redirect:/front-end/index.jsp";
		}else {
			att.addFlashAttribute("userLoginError", "¸ÃÓÃ»§²»´æÔÚ£¬ÇëÏÈ×¢²á£¡");	
			return "redirect:/front-end/account.jsp";
		}
	}
	
	@RequestMapping("/adminLogin")
	public String adminLogin(@RequestParam("userName") String userName,@RequestParam("password") String password,HttpServletRequest request,RedirectAttributes att) {
		HttpSession session = request.getSession();
		System.out.println(userName + password);
		Admin admin = userLoginServiceImpl.adminLogin(userName, password);
		if(admin != null) {
			session.setAttribute("admin", admin);
			System.out.println("µÇÂ¼³É¹¦");
			return "redirect:/admin/findCake.do";
		}else {
			session.setAttribute("loginError", "µÇÂ¼Ê§°Ü£¬ÇëÖØÊÔ");	
			System.out.println("µÇÂ¼Ê§°Ü");
			return "redirect:/backstage/login.jsp";
		}
	}
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Admin admin = (Admin) session.getAttribute("admin");
		if(null != admin) {
			session.removeAttribute("admin");
		}
		return "redirect:/backstage/login.jsp";
		
	}
}
