package com.ground.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SubscriptionsController {
	@RequestMapping("/subscriptions")
	public ModelAndView subscriptionsPageLoad() {

		String message = "";

		return new ModelAndView("subscriptions", "message", message);
	}
}