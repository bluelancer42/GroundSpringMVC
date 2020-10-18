package com.ground.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.ground.spring.model.Products;

@Repository
public class ProductsDAOImpl implements ProductsDAO {

	private static final Logger logger = LoggerFactory.getLogger(ProductsDAOImpl.class);
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Override
	public void addProducts(Products p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Products saved successfully, Products Details=" + p);
	}

	@Override
	public void updateProducts(Products p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Products updated successfully, Products Details=" + p);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Products> listProducts() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Products> productsList = session.createQuery("from Products").list();
		for (Products p : productsList) {
			logger.info("Products List::" + p);
		}
		return productsList;
	}

	@Override
	public Products getProductsById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Products p = (Products) session.load(Products.class, Integer.valueOf(id));
		logger.info("Products loaded successfully, Products details=" + p);
		return p;
	}

	@Override
	public void removeProducts(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Products p = (Products) session.load(Products.class, Integer.valueOf(id));
		if (null != p) {
			session.delete(p);
		}
		logger.info("Products deleted successfully, Products details=" + p);
	}
}