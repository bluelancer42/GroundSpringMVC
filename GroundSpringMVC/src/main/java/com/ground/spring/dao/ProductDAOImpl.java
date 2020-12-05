package com.ground.spring.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.ground.spring.model.Product;

@Repository
@SuppressWarnings({ "deprecation", "rawtypes", "unchecked" })
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

	public List<String> listStats(List<Product> products) {
		List<String> listStats = new ArrayList<String>();
		for (Product product : products) {
			listStats.add("<div>Total number of " + product.getProductName() + " subscriptions: "
					+ String.valueOf(getUserCountByProduct(product)) + "</div>");
		}
		listStats.add("<div>Total number of users: " + String.valueOf(getUserCount()) + "</div>");
		listStats.add("<div>Total number of products: " + String.valueOf(getProductCount()) + "</div>");
		listStats.add("<div>Total number of subscriptions: " + String.valueOf(getSubscriptionCount()) + "</div>");
		listStats.add("<div>Total number of subscriptions by email: " + String.valueOf(getSubscriptionByCount("email"))
				+ "</div>");
		listStats.add("<div>Total number of subscriptions by sftp: " + String.valueOf(getSubscriptionByCount("sftp"))
				+ "</div>");
		listStats.add(
				"<div>Total number of subscriptions by url: " + String.valueOf(getUrlSubscriptionByCount()) + "</div>");
//		listStats.add("<div>Total number of admins: " + String.valueOf(getAdminCount()) + "</div>");

		return listStats;
	}

	private int getUserCountByProduct(Product product) {
		Session session = this.sessionFactory.getCurrentSession();
		String sql = "FROM Subscription s WHERE s.product = :product";
		Query query = session.createQuery(sql);
		query.setParameter("product", product);
		int count = query.getResultList().size();

		return count;
	}

	private int getUserCount() {
		Session session = this.sessionFactory.getCurrentSession();
		int count = session.createQuery("from User").list().size();
		return count;
	}

	private int getProductCount() {
		Session session = this.sessionFactory.getCurrentSession();
		int count = session.createQuery("from Product").list().size();
		return count;
	}

	private int getSubscriptionCount() {
		Session session = this.sessionFactory.getCurrentSession();
		int count = session.createQuery("from Subscription").list().size();
		return count;
	}

	private int getSubscriptionByCount(String destinationType) {
		Session session = this.sessionFactory.getCurrentSession();
		String sql = "FROM Subscription where destinationType=:destinationType";
		Query query = session.createQuery(sql);
		query.setParameter("destinationType", destinationType);
		int count = query.getResultList().size();
		return count;
	}

	private int getUrlSubscriptionByCount() {
		Session session = this.sessionFactory.getCurrentSession();
		int count = session.createQuery("FROM Subscription where toSend=false").list().size();
		return count;
	}

	@SuppressWarnings("unused")
	private int getAdminCount() {
		Session session = this.sessionFactory.getCurrentSession();
		int count = session.createQuery("FROM User where role=admin").list().size();
		return count;
	}

	public List<Product> getProductsBySearch(String search) {
		Session session = this.sessionFactory.getCurrentSession();
		String sql = "FROM Product where upper(productName) like :search";
		String wildcardSearch = "%" + search.toUpperCase() + "%";
		Query query = session.createQuery(sql);
		query.setParameter("search", wildcardSearch);
		List<Product> productsList = query.getResultList();

		return productsList;
	}
}