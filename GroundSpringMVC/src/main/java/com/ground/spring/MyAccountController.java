package com.ground.spring;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ground.spring.form.SubscriptionForm;
import com.ground.spring.model.Subscription;
import com.ground.spring.model.User;
import com.ground.spring.service.SubscriptionService;
import com.ground.spring.service.UserService;

@Controller
public class MyAccountController {

	private static List<Subscription> subscription = new ArrayList<Subscription>();

	private SubscriptionService subscriptionService;
	private UserService userService;

	@Autowired(required = true)
	@Qualifier(value = "subscriptionService")
	public void setSubscriptionService(SubscriptionService ss) {
		this.subscriptionService = ss;
	}

	@Autowired(required = true)
	@Qualifier(value = "userService")
	public void setUserService(UserService us) {
		this.userService = us;
	}

	@RequestMapping(value = "/myaccount", method = RequestMethod.GET)
	public String myAccountPageLoad(Model model) {
		List<Subscription> subscriptions = this.subscriptionService.getSubscriptionByUserId(2);
		SubscriptionForm subscriptionForm = new SubscriptionForm();
		subscriptionForm.setSubscriptions(subscriptions);

		model.addAttribute("subscription", subscriptionForm);
		model.addAttribute("user", this.userService.getUserById(2));
		return "myaccount";
	}

	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public String updateUser(@ModelAttribute("user") User p) {
		this.userService.updateUser(p);
		return "redirect:/myaccount";
	}

	@RequestMapping(value = "/updateSubscription", method = RequestMethod.POST)
	public String updateSubscription(@ModelAttribute("subscription") SubscriptionForm subscriptionForm) {
		List<Subscription> subscriptions = subscriptionForm.getSubscriptions();
		if (null != subscriptions && subscriptions.size() > 0) {
			MyAccountController.subscription = subscriptions;
			for (Subscription subs : subscription) {
				if (subs.getToSend() != null) {
					if (!subs.getToSend()) {
						subs.setUrl(this.subscriptionService.getSubscriptionUrl(subs));
					}
					this.subscriptionService.updateSubscriptionById(subs);
				}
			}
		}
		return "redirect:/myaccount";
	}

	@RequestMapping("/removemysubscription/{id}")
	public String removeMySubscription(@PathVariable("id") int id) {
		this.subscriptionService.removeSubscription(id);
		return "redirect:/myaccount";
	}

}
