package com.ground.spring.dao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.Root;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.ground.spring.model.Subscription;
import com.ground.spring.model.User;

@SuppressWarnings("deprecation")
@Repository
public class SubscriptionDAOImpl implements SubscriptionDAO {

	private static final Logger logger = LoggerFactory.getLogger(SubscriptionDAOImpl.class);
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Override
	public void addSubscription(Subscription p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Subscription saved successfully, Subscription Details=" + p);
	}

	@Override
	public void updateSubscription(Subscription p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Subscription updated successfully, Subscription Details=" + p);
	}

	@SuppressWarnings({ "rawtypes" })
	@Override
	public void updateSubscriptionById(Subscription subscription) {
		Session session = this.sessionFactory.getCurrentSession();
		String hql = "UPDATE Subscription SET  bbox=:bbox, toSend=:toSend, destinationType=:destinationType, url=:url, destination=:destination WHERE subscriptionId=:id";
		Query query = session.createQuery(hql);
		query.setParameter("bbox", subscription.getBbox());
		query.setParameter("id", subscription.getSubscriptionId());
		query.setParameter("toSend", subscription.getToSend());
		query.setParameter("destinationType", subscription.getDestinationType());
		query.setParameter("url", subscription.getUrl());
		query.setParameter("destination", subscription.getDestination());
		int result = query.executeUpdate();
		logger.info("Subscription updated successfully, Subscription Details=" + result);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Subscription> listSubscription() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Subscription> subscriptionsList = session.createQuery("from Subscription ORDER BY subscriptionId").list();
		for (Subscription p : subscriptionsList) {
			logger.info("Subscription List::" + p);
			System.out.println("Subscription List::" + p);
		}
		return subscriptionsList;
	}

	@Override
	public Subscription getSubscriptionById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Subscription p = (Subscription) session.load(Subscription.class, Integer.valueOf(id));
		logger.info("Subscription loaded successfully, Subscription details=" + p);
		return p;
	}

	@Override
	public List<Subscription> getSubscriptionByUserId(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		// create Criteria
		CriteriaBuilder builder = session.getCriteriaBuilder();
		CriteriaQuery<Subscription> criteria = builder.createQuery(Subscription.class);
		Root<Subscription> mySubscriptionRoot = criteria.from(Subscription.class);
		Join<Subscription, User> joinObject = mySubscriptionRoot.join("user");
		criteria.select(mySubscriptionRoot).where(joinObject.get("userId").in(id));
		criteria.orderBy(builder.asc(mySubscriptionRoot.get("subscriptionId")));
		List<Subscription> subscriptionsList = session.createQuery(criteria).getResultList();
		for (Subscription p : subscriptionsList) {
			logger.info("Subscription List::" + p);
		}
		return subscriptionsList;
	}

	@Override
	public void removeSubscription(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Subscription p = (Subscription) session.load(Subscription.class, Integer.valueOf(id));
		if (null != p) {
			session.delete(p);
		}
		logger.info("Subscription deleted successfully, Subscription details=" + p);
	}

	public String getSubscriptionUrl(Subscription subscription) {
		String url = "https://testurlfordestination.com?";
		url = url + "BBOX=" + subscription.getBbox().toString();
		return url;
	}
}