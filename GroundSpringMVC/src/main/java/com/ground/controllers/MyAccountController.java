package com.ground.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyAccountController {
	@RequestMapping("/myaccount")
	public ModelAndView myAccountPageLoad() {

		String message = "";

		return new ModelAndView("myaccount", "message", message);
	}
}
