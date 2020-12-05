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
import org.springframework.web.bind.annotation.RequestParam;

import com.ground.spring.model.Product;
import com.ground.spring.model.Subscription;
import com.ground.spring.model.User;
import com.ground.spring.service.ProductService;
import com.ground.spring.service.SubscriptionService;
import com.ground.spring.service.UserService;

@Controller
public class AdminController {
	private ProductService productService;
	private UserService userService;
	private SubscriptionService subscriptionService;

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

	@Autowired(required = true)
	@Qualifier(value = "subscriptionService")
	public void setSubscriptionService(SubscriptionService ss) {
		this.subscriptionService = ss;
	}

	@RequestMapping(value = "/statistics")
	public String adminStatisticsPage(Model model) {
		List<Product> products = this.productService.listProduct();
		model.addAttribute("listStats", this.productService.listStats(products));
		return "statistics";
	}

	@RequestMapping(value = "/adminuser", method = RequestMethod.GET)
	public String adminUserPage(Model model) {
		List<User> usersList = null;
		List<String> userLinks = null;
		model.addAttribute("user", new User());
		model.addAttribute("usersList", usersList);
		model.addAttribute("userLinks", userLinks);
		return "adminuser";
	}

	@RequestMapping(value = "/adminuser", method = RequestMethod.POST)
	public String search(@RequestParam("gsearch") String p, Model model) {
		List<User> usersList = this.userService.getUsersBySearch(p);
		List<String> userLinks = new ArrayList<String>();
		for (User user : usersList) {
			userLinks.add("<a href=\"edituser\\" + user.getUserId() + "\" id=\"a\" class=\"btn btn-outline-warning\">"
					+ user.getUsername() + "</a>");
		}
		model.addAttribute("user", new User());
		model.addAttribute("usersList", usersList);
		model.addAttribute("userLinks", userLinks);
		model.addAttribute("gsearch", p);

		return "adminuser";
	}

	@RequestMapping(value = "/edituser/{id}", method = RequestMethod.GET)
	public String editUser(@PathVariable("id") int id, Model model) {
		model.addAttribute("user", this.userService.getUserById(id));
		return "edituser";
	}

	@RequestMapping(value = "/saveuser", method = RequestMethod.POST)
	public String updateUser(@ModelAttribute("user") User p) {
		User user = this.userService.getUserById(p.getUserId());
		p.setPassword(user.getPassword());
		p.setSalt(user.getSalt());
		this.userService.updateUser(p);
		return "redirect:/adminuser";
	}

	@RequestMapping("/removeuser/{id}")
	public String removeMySubscription(@PathVariable("id") int id) {

		List<Subscription> subList = this.subscriptionService.getSubscriptionByUserId(id);
		for (Subscription subscription : subList) {
			this.subscriptionService.removeSubscription(subscription.getSubscriptionId());
		}
		this.userService.removeUser(id);
		return "redirect:/adminuser";
	}

	@RequestMapping(value = "/adminproduct", method = RequestMethod.GET)
	public String adminProductPage(Model model) {
		List<User> productsList = null;
		List<String> productLinks = null;
		model.addAttribute("product", new Product());
		model.addAttribute("productsssList", productsList);
		model.addAttribute("productLinks", productLinks);
		return "adminproduct";
	}

	@RequestMapping(value = "/adminproduct", method = RequestMethod.POST)
	public String searchProducts(@RequestParam("gsearch") String p, Model model) {
		List<Product> productsList = this.productService.getProductsBySearch(p);
		List<String> productLinks = new ArrayList<String>();
		for (Product product : productsList) {
			productLinks.add("<a href=\"editproduct\\" + product.getProductId()
					+ "\" id=\"a\" class=\"btn btn-outline-warning\">" + product.getProductName() + "</a>");
		}
		model.addAttribute("product", new Product());
		model.addAttribute("productsList", productsList);
		model.addAttribute("productLinks", productLinks);
		model.addAttribute("gsearch", p);

		return "adminproduct";
	}

	@RequestMapping(value = "/editproduct/{id}", method = RequestMethod.GET)
	public String editProduct(@PathVariable("id") int id, Model model) {
		model.addAttribute("product", this.productService.getProductById(id));
		return "editproduct";
	}

	@RequestMapping(value = "/saveproduct", method = RequestMethod.POST)
	public String updateProduct(@ModelAttribute("product") Product p) {
		Product product = this.productService.getProductById(p.getProductId());
		p.setDateReceived(product.getDateReceived());
		this.productService.updateProduct(p);
		return "redirect:/adminproduct";
	}

	@RequestMapping("/removeproduct/{id}")
	public String removeProduct(@PathVariable("id") int id) {
		List<Subscription> subList = this.subscriptionService.getSubscriptionByProductId(id);
		for (Subscription subscription : subList) {
			this.subscriptionService.removeSubscription(subscription.getSubscriptionId());
		}
		this.productService.removeProduct(id);
		return "redirect:/adminproduct";
	}

}
