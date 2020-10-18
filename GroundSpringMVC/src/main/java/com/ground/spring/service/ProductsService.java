package com.ground.spring.service;

import java.util.List;

import com.ground.spring.model.Products;

public interface ProductsService {

	public void addProducts(Products p);

	public void updateProducts(Products p);

	public List<Products> listProducts();

	public Products getProductsById(int id);

	public void removeProducts(int id);

}
