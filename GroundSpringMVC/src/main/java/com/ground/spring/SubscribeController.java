package com.ground.spring;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ground.spring.model.Product;
import com.ground.spring.model.Subscription;
import com.ground.spring.model.User;
import com.ground.spring.service.ProductService;
import com.ground.spring.service.SubscriptionService;
import com.ground.spring.service.UserService;

@Controller
public class SubscribeController {

	private SubscriptionService subscriptionService;
	private ProductService productService;
	private UserService userService;

	@Autowired(required = true)
	@Qualifier(value = "subscriptionService")
	public void setSubscriptionService(SubscriptionService ss) {
		this.subscriptionService = ss;
	}

	@Autowired(required = true)
	@Qualifier(value = "productService")
	public void setProductService(ProductService ps) {
		this.productService = ps;
	}

	@Autowired(required = true)
	@Qualifier(value = "userService")
	public void setUserService(UserService us) {
		this.userService = us;
	}

	@RequestMapping(value = "/subscribe", method = RequestMethod.GET)
	public String listSubscriptions(String username, Model model) {
		User user = this.userService.getUserById(2);
		List<Product> productList = this.productService.listProduct();
		model.addAttribute("listProduct", productList);
		model.addAttribute("user", user);
		model.addAttribute("subscription", new Subscription());
		return "subscribe";
	}

	@RequestMapping(value = "/addSubscription", method = RequestMethod.POST)
	public String addSubscription(@ModelAttribute("subscription") Subscription subscription) {
		subscription.setProduct(this.productService.getProductById(subscription.getProduct().getProductId()));
		subscription.setUser(this.userService.getUserById(subscription.getUser().getUserId()));
		if (!subscription.getToSend()) {
			subscription = this.subscriptionService.getFormattedUrl(subscription);
		}
		this.subscriptionService.addSubscription(subscription);
		return "redirect:/subscribe";
	}

}
