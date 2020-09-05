package com.ground.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

	@RequestMapping("/admin")
	public ModelAndView loadPage() {
 
		String message = "<br><div>Admin Home Page</div><br><br>";
		
		return new ModelAndView("admin", "message", message);
	}
}
