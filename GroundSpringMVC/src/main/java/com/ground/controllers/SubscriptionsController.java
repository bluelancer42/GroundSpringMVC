package com.ground.controllers;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ground.model.Subscriptions;

@Controller
public class SubscriptionsController {

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
