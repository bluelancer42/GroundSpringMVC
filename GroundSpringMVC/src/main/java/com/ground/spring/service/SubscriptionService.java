package com.ground.spring.service;

import java.util.List;

import com.ground.spring.model.Subscription;

public interface SubscriptionService {

	public void addSubscription(Subscription p);

	public void updateSubscription(Subscription p);

	public void updateSubscriptionById(Integer id, String bbox);

	public List<Subscription> listSubscription();

	public Subscription getSubscriptionById(int id);

	public List<Subscription> getSubscriptionByUserId(int id);

	public void removeSubscription(int id);

}
