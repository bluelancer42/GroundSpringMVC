package com.ground.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ground.spring.model.Products;
import com.ground.spring.service.ProductsService;

@Controller
public class ProductsController {
	private ProductsService productsService;

	@Autowired(required = true)
	@Qualifier(value = "productsService")
	public void setProductsService(ProductsService ps) {
		this.productsService = ps;
	}

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String listProducts(Model model) {
		model.addAttribute("Products", new Products());
		model.addAttribute("listProducts", this.productsService.listProducts());
		return "products";
	}

}
