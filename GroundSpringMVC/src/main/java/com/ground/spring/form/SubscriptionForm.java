package com.ground.spring.form;

import java.util.List;

import com.ground.spring.model.Subscription;

public class SubscriptionForm {
	private List<Subscription> subscriptions;

	public List<Subscription> getSubscriptions() {
		return subscriptions;
	}

	public void setSubscriptions(List<Subscription> subscriptions) {
		this.subscriptions = subscriptions;
	}
}
