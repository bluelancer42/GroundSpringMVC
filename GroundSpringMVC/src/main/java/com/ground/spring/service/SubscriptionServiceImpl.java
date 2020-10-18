package com.ground.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ground.spring.dao.SubscriptionDAO;
import com.ground.spring.model.Subscription;

@Service
public class SubscriptionServiceImpl implements SubscriptionService {
	@Autowired
	private SubscriptionDAO subscriptionDAO;

	public void setSubscriptionDAO(SubscriptionDAO SubscriptionDAO) {
		this.subscriptionDAO = SubscriptionDAO;
	}

	@Override
	@Transactional
	public void addSubscription(Subscription p) {
		this.subscriptionDAO.addSubscription(p);
	}

	@Override
	@Transactional
	public void updateSubscription(Subscription p) {
		this.subscriptionDAO.updateSubscription(p);
	}

	@Override
	@Transactional
	public void updateSubscriptionById(Integer id, String bbox) {
		this.subscriptionDAO.updateSubscriptionById(id, bbox);
	}

	@Override
	@Transactional
	public List<Subscription> listSubscription() {
		return this.subscriptionDAO.listSubscription();
	}

	@Override
	@Transactional
	public Subscription getSubscriptionById(int id) {
		return this.subscriptionDAO.getSubscriptionById(id);
	}

	@Override
	@Transactional
	public List<Subscription> getSubscriptionByUserId(int id) {
		return this.subscriptionDAO.getSubscriptionByUserId(id);
	}

	@Override
	@Transactional
	public void removeSubscription(int id) {
		this.subscriptionDAO.removeSubscription(id);
	}
}
