package com.example.homework.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;

@Controller
@SessionAttributes("name")
public class LogoutController {
	@GetMapping("/logout")
	public String logout(ModelMap map, HttpSession session) {
		map.remove("name");
		session.removeAttribute("name");
		return "redirect:login";
	};
}
