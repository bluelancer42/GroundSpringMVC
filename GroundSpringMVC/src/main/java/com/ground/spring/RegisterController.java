package com.ground.spring;

import java.util.List;

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
public class RegisterController {

	private UserService userService;

	@Autowired(required = true)
	@Qualifier(value = "userService")
	public void setUserService(UserService us) {
		this.userService = us;
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView showRegistration(HttpServletRequest request, HttpServletResponse response) {
		User user = new User();
		ModelAndView mav;
		mav = new ModelAndView("register");
		mav.addObject("user", user);

		return mav;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView registerProcess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("user") User p) {

		List<User> users = userService.checkUsername(p);
		ModelAndView mav = null;
		if (users.size() <= 0) {
			p = userService.encryptPassword(p);
			User user = userService.registerUser(p);
			if (null != user) {
				mav = new ModelAndView("register");
			} else {
				mav = new ModelAndView("login");
			}
		} else {
			mav = new ModelAndView("register");
			mav.addObject("user", p);
			mav.addObject("message", "Username already registered");
		}

		return mav;
	}
}