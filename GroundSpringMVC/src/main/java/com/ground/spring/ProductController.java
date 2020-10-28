package com.ground.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ground.spring.model.Product;
import com.ground.spring.service.ProductService;

@Controller
public class ProductController {
	private ProductService productService;

	@Autowired(required = true)
	@Qualifier(value = "productService")
	public void setProductService(ProductService ps) {
		this.productService = ps;
	}

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String listProduct(Model model) {
		model.addAttribute("Product", new Product());
		model.addAttribute("listProduct", this.productService.listProduct());
		return "products";
	}

}
