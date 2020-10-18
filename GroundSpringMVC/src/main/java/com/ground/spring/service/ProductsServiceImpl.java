package com.ground.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ground.spring.dao.ProductsDAO;
import com.ground.spring.model.Products;

@Service
public class ProductsServiceImpl implements ProductsService {
	@Autowired
	private ProductsDAO productsDAO;

	public void setProductsDAO(ProductsDAO ProductsDAO) {
		this.productsDAO = ProductsDAO;
	}

	@Override
	@Transactional
	public void addProducts(Products p) {
		this.productsDAO.addProducts(p);
	}

	@Override
	@Transactional
	public void updateProducts(Products p) {
		this.productsDAO.updateProducts(p);
	}

	@Override
	@Transactional
	public List<Products> listProducts() {
		return this.productsDAO.listProducts();
	}

	@Override
	@Transactional
	public Products getProductsById(int id) {
		return this.productsDAO.getProductsById(id);
	}

	@Override
	@Transactional
	public void removeProducts(int id) {
		this.productsDAO.removeProducts(id);
	}
}
