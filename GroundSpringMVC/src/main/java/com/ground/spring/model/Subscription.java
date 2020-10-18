package com.ground.spring.model;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "subscription", schema = "Subscriptions")
public class Subscription implements Serializable {
	private static final long serialVersionUID = 1553653694074548541L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer subscriptionId;

	@Column(nullable = false, unique = true)
	private String subscriptionName;
	private Date lastReceived;
	private Date lastSent;
	private String bbox;

	@ManyToOne
	@JoinColumn(name = "userId")
	private User userId;

	public Subscription() {
	}

	public Subscription(Integer subscriptionId, String subscriptionName, Date lastReceived, Date lastSent, String bbox,
			User userId) {
		super();
		this.subscriptionId = subscriptionId;
		this.subscriptionName = subscriptionName;
		this.lastReceived = lastReceived;
		this.lastSent = lastSent;
		this.bbox = bbox;
		this.userId = userId;
	}

	public Integer getSubscriptionId() {
		return subscriptionId;
	}

	public void setSubscriptionId(Integer subscriptionId) {
		this.subscriptionId = subscriptionId;
	}

	public String getSubscriptionName() {
		return subscriptionName;
	}

	public void setSubscriptionName(String subscriptionName) {
		this.subscriptionName = subscriptionName;
	}

	public Date getLastReceived() {
		return lastReceived;
	}

	public void setLastReceived(Date lastReceived) {
		this.lastReceived = lastReceived;
	}

	public Date getLastSent() {
		return lastSent;
	}

	public void setLastSent(Date lastSent) {
		this.lastSent = lastSent;
	}

	public String getBbox() {
		return bbox;
	}

	public void setBbox(String bbox) {
		this.bbox = bbox;
	}

	public User getUserId() {
		return userId;
	}

	public void setUserId(User userId) {
		this.userId = userId;
	}

	@Override
	public int hashCode() {
		int hash = 7;
		hash = 79 * hash + Objects.hashCode(this.subscriptionId);
		hash = 79 * hash + Objects.hashCode(this.subscriptionName);
		hash = 79 * hash + Objects.hashCode(this.lastReceived);
		hash = 79 * hash + Objects.hashCode(this.lastSent);
		hash = 79 * hash + Objects.hashCode(this.bbox);
		hash = 79 * hash + Objects.hashCode(this.userId);
		return hash;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		final Subscription other = (Subscription) obj;
		if (this.lastReceived != other.lastReceived) {
			return false;
		}
		if (this.lastSent != other.lastSent) {
			return false;
		}
		if (!Objects.equals(this.subscriptionName, other.subscriptionName)) {
			return false;
		}
		if (!Objects.equals(this.bbox, other.bbox)) {
			return false;
		}
		return Objects.equals(this.subscriptionId, other.subscriptionId);
	}

	@Override
	public String toString() {
		final StringBuilder sb = new StringBuilder("Subscription{");
		sb.append("id=").append(subscriptionId);
		sb.append(", subscriptionName='").append(subscriptionName).append('\'');
		sb.append(", lastReceived=").append(lastReceived).append('\'');
		sb.append(", lastSent=").append(lastSent).append('\'');
		sb.append(", bbox=").append(bbox).append('\'');
		sb.append(", userId=").append(userId);
		sb.append('}');
		return sb.toString();
	}
}
