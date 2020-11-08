package com.ground.spring;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ground.spring.model.User;
import com.ground.spring.service.UserService;

@Controller
public class LoginController {

	private UserService userService;

	@Autowired(required = true)
	@Qualifier(value = "userService")
	public void setUserService(UserService us) {
		this.userService = us;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("login");
		User user = new User();
		user.setUsername("christez");
		mav.addObject("user", user);

		return mav;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("user") User p) {
		ModelAndView mav = null;
		User user = null;

		user = userService.validateUser(p);

		if (null != user) {
			if (userService.verifyUserPassword(p.getPassword(), user.getPassword(), user.getSalt())) {
				mav = new ModelAndView("home");
			} else {
				mav = new ModelAndView("login");
				mav.addObject("message", "Username or Password is wrong!!");
			}
		} else {
			mav = new ModelAndView("login");
			mav.addObject("message", "Username or Password is wrong!!");
		}
		return mav;
	}

}