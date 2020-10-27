package com.ground.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.ground.spring.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {

	private static final Logger logger = LoggerFactory.getLogger(ProductDAOImpl.class);
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Override
	public void addProduct(Product p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Product saved successfully, Product Details=" + p);
	}

	@Override
	public void updateProduct(Product p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Product updated successfully, Product Details=" + p);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> listProduct() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Product> productList = session.createQuery("from Product").list();
		for (Product p : productList) {
			logger.info("Product List::" + p);
		}
		return productList;
	}

	@Override
	public Product getProductById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Product p = (Product) session.load(Product.class, Integer.valueOf(id));
		logger.info("Product loaded successfully, Product details=" + p);
		return p;
	}

	@Override
	public void removeProduct(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Product p = (Product) session.load(Product.class, Integer.valueOf(id));
		if (null != p) {
			session.delete(p);
		}
		logger.info("Product deleted successfully, Product details=" + p);
	}
}