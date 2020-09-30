package com.ground.controllers;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ground.model.Subscriptions;

@Controller
public class SubscriptionsController {

	@RequestMapping("/subscriptions1")
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

	@RequestMapping("/subscriptions")
	public void loadSubcriptions(@ModelAttribute("SpringWeb") Subscriptions subscription, ModelMap model) {

		final List<Subscriptions> subscriptions = new ArrayList<Subscriptions>();
		subscription.setName("Test1");
		Date date = new Date();
		subscription.setLastSentDate(date);
		subscriptions.add(subscription);
		subscription.setName("Test2");
		subscription.setLastSentDate(date);
		subscriptions.add(subscription);
		subscription.setName("Test3");
		subscription.setLastSentDate(date);
		subscriptions.add(subscription);
		model.addAttribute("subscriptions", subscriptions);

	}

}
