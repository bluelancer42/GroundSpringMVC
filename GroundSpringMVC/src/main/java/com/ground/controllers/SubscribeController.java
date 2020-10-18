package com.ground.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SubscribeContorller {
	@RequestMapping("/subscribe")
	public ModelAndView subscribePageLoad() {

		String message = "";

		return new ModelAndView("subscribe", "message", message);
	}
}
