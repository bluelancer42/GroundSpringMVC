package com.ground.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ground.spring.model.Subscription;
import com.ground.spring.service.SubscriptionService;

@Controller
public class SubscribeController {
	private SubscriptionService subscriptionService;

	@Autowired(required = true)
	@Qualifier(value = "subscriptionService")
	public void setSubscriptionService(SubscriptionService ss) {
		this.subscriptionService = ss;
	}

	@RequestMapping("/subscribe")
	public ModelAndView subscribePageLoad() {

		String message = "";

		return new ModelAndView("subscribe", "message", message);
	}

	@RequestMapping(value = "/subscribe/add", method = RequestMethod.POST)
	public String addSubscription(@ModelAttribute("subscription") Subscription p) {
		if (p.getSubscriptionId() == 0) {
			this.subscriptionService.addSubscription(p);
		} else {
			this.subscriptionService.updateSubscription(p);
		}
		return "redirect:/subscribe";
	}

	@RequestMapping("/removesubscription/{id}")
	public String removeSubscription(@PathVariable("id") int id) {
		this.subscriptionService.removeSubscription(id);
		return "redirect:/subscribe";
	}

}
