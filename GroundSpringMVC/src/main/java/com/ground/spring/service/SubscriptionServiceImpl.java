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
	public void updateSubscriptionById(Subscription subscription) {
		this.subscriptionDAO.updateSubscriptionById(subscription);
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
	public List<Subscription> getSubscriptionByProductId(int id) {
		return this.subscriptionDAO.getSubscriptionByProductId(id);
	}

	@Override
	@Transactional
	public void removeSubscription(int id) {
		this.subscriptionDAO.removeSubscription(id);
	}

	@Override
	@Transactional
	public Subscription getFormattedUrl(Subscription subscription) {
		String url = "http://localhost:8080/geoserver/wms?request=GetMap&service=WMS&version=1.1.1&layers="
				+ subscription.getProduct().getProductName().toString() + "&styles=default&srs=EPSG:4326&bbox="
				+ subscription.getBbox().toString() + "width=780&height=330&format=image/png";
		subscription.setUrl(url);
		return subscription;
	}
}
