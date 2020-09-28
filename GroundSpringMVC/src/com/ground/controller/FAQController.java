package com.ground.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FAQController {
	@RequestMapping("/faq")
	public ModelAndView faqPageLoad() {

		String message = "";

		return new ModelAndView("faq", "message", message);
	}
}
