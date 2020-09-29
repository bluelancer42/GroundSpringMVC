package com.ground.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ground.model.Subscriptions;

@Controller
public class SubscriptionsController {

	@RequestMapping("/subscriptions")
	public ModelAndView subscriptionsPageLoad() {

		return new ModelAndView("subscriptions", "command", new Subscriptions());
	}

	/*
	 * @RequestMapping("/subscriptions") public ModelAndView pageLoad() {
	 * 
	 * String message = "";
	 * 
	 * return new ModelAndView("subscriptions", "message", message); }
	 */

	@RequestMapping("/subscriptions1")
	public String loadSubcriptions(@ModelAttribute("SpringWeb") Subscriptions subscription, ModelMap model) {
		model.addAttribute("name", subscription.getName());
		model.addAttribute("lastSentDate", subscription.getLastSentDate());
		model.addAttribute("id", subscription.getId());

		return "subscriptions";
	}

}
