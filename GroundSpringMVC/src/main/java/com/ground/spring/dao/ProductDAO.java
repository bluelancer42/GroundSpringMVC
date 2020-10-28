package com.ground.spring.dao;

import java.util.List;

import com.ground.spring.model.Product;

public interface ProductDAO {
	public void addProduct(Product p);

	public void updateProduct(Product p);

	public List<Product> listProduct();

	public Product getProductById(int id);

	public void removeProduct(int id);
}
