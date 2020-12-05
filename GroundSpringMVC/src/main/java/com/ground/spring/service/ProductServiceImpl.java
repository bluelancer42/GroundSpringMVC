package com.ground.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ground.spring.dao.ProductDAO;
import com.ground.spring.model.Product;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDAO productDAO;

	public void setProductDAO(ProductDAO ProductDAO) {
		this.productDAO = ProductDAO;
	}

	@Override
	@Transactional
	public void addProduct(Product p) {
		this.productDAO.addProduct(p);
	}

	@Override
	@Transactional
	public void updateProduct(Product p) {
		this.productDAO.updateProduct(p);
	}

	@Override
	@Transactional
	public List<Product> listProduct() {
		return this.productDAO.listProduct();
	}

	@Override
	@Transactional
	public Product getProductById(int id) {
		return this.productDAO.getProductById(id);
	}

	@Override
	@Transactional
	public void removeProduct(int id) {
		this.productDAO.removeProduct(id);
	}

	@Override
	@Transactional
	public List<String> listStats(List<Product> products) {
		return this.productDAO.listStats(products);
	}

	@Override
	@Transactional
	public List<Product> getProductsBySearch(String search) {
		return this.productDAO.getProductsBySearch(search);
	}
}
