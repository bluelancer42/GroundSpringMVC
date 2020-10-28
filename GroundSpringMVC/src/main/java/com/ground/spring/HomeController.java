package com.ground.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ground.spring.model.User;

@Controller
public class HomeController {
	@RequestMapping(value = "/")
	public ModelAndView mainPage() {
		ModelAndView mav = new ModelAndView("login");
		User user = new User();
		user.setUsername("christez");
		mav.addObject("user", user);

		return mav;
	}

	@RequestMapping(value = "/index")
	public ModelAndView indexPage() {
		return new ModelAndView("home");
	}
}