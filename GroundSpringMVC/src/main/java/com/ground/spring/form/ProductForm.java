package com.ground.spring.form;

import java.util.List;

import com.ground.spring.model.Product;

public class ProductForm {
	private List<Product> product;

	public List<Product> getProducts() {
		return product;
	}

	public void setProducts(List<Product> product) {
		this.product = product;
	}
}
