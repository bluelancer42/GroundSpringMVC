package com.ground.service;

import java.util.List;

import com.ground.model.Subscriptions;

public interface SubscriptionService {
	void insertSubscriptions(Subscriptions subscription);
	void insertSubscriptions(List<Subscriptions> empsubscriptionloyees);
	List<Subscriptions> getAllEmployees();
	void getSubscriptionById(String subscriptionId);
}