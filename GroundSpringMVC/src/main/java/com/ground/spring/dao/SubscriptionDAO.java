package com.ground.spring.dao;

import java.util.List;

import com.ground.spring.model.Subscription;

public interface SubscriptionDAO {

	public void addSubscription(Subscription p);

	public void updateSubscription(Subscription p);

	public void updateSubscriptionById(Subscription subscription);

	public List<Subscription> listSubscription();

	public Subscription getSubscriptionById(int id);

	public List<Subscription> getSubscriptionByUserId(int id);

	public void removeSubscription(int id);

}
