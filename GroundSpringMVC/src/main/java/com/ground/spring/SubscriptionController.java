package com.ground.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ground.spring.model.Subscription;
import com.ground.spring.service.SubscriptionService;

@Controller
public class SubscriptionController {
	private SubscriptionService subscriptionService;

	@Autowired(required = true)
	@Qualifier(value = "subscriptionService")
	public void setSubscriptionService(SubscriptionService ss) {
		this.subscriptionService = ss;
	}

	@RequestMapping(value = "/subscription", method = RequestMethod.GET)
	public String listSubscriptions(@ModelAttribute("subscription") Subscription p, Model model) {
		model.addAttribute("subscription", new Subscription());
		model.addAttribute("listSubscriptions",
				this.subscriptionService.getSubscriptionByUserId(p.getUserId().getUserId()));
		return "subscription";
	}

	// For add and update subscription both
	@RequestMapping(value = "/subscription/add", method = RequestMethod.POST)
	public String addSubscription(@ModelAttribute("Subscription") Subscription p) {
		if (p.getSubscriptionId() == 0) {
			// new subscription, add it
			this.subscriptionService.addSubscription(p);
		} else {
			// existing subscription, call update
			this.subscriptionService.updateSubscription(p);
		}
		return "redirect:/subscription";
	}

	@RequestMapping("/remove/{id}")
	public String removeSubscription(@PathVariable("id") int id) {
		this.subscriptionService.removeSubscription(id);
		return "redirect:/subscription";
	}

	@RequestMapping("/edit/{id}")
	public String editSubscription(@PathVariable("id") int id, Model model) {
		model.addAttribute("subscription", this.subscriptionService.getSubscriptionById(id));
		model.addAttribute("listSubscriptions", this.subscriptionService.getSubscriptionByUserId(id));
		return "subscription";
	}
}
