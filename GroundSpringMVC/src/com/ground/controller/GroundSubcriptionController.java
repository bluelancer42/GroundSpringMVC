package com.ground.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GroundSubscriptionController {

	@RequestMapping("/welcome")
	public ModelAndView subscriptionPageLoad() {

		String message = "<br><div style='text-align:center;'>"
				+ "<p>********** This message is coming from GroundHomePage.java **********</p></div><br><br>";

		return new ModelAndView("welcome", "message", message);
	}
	
	@RequestMapping("/admin")
	public ModelAndView adminPageLoad() {

		String message = "<br><div>Admin Home Page</div><br><br>";

		return new ModelAndView("admin", "message", message);
	}
	
	@RequestMapping("/faq")
	public ModelAndView faqPageLoad() {

		String message = "";

		return new ModelAndView("faq", "message", message);
	}
}
