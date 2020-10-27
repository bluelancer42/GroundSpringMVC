package com.ground.spring.model;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "subscription", schema = "EWS")
public class Subscription implements Serializable {
	private static final long serialVersionUID = 1553653694074548541L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer subscriptionId;

	private Date lastSent;
	private String bbox;
	private Boolean toSend;
	private String destinationType;
	private String url;
	private String destination;

	@ManyToOne
	@JoinColumn(name = "userId")
	private User user;

	@ManyToOne
	@JoinColumn(name = "productId")
	private Product product;

	public Subscription() {
	}

	public Subscription(Integer subscriptionId, Date lastSent, String bbox, Boolean toSend, String destinationType,
			String url, String destination, User user, Product product) {
		super();
		this.subscriptionId = subscriptionId;
		this.lastSent = lastSent;
		this.bbox = bbox;
		this.toSend = toSend;
		this.destinationType = destinationType;
		this.url = url;
		this.destination = destination;
		this.user = user;
		this.product = product;
	}

	public Integer getSubscriptionId() {
		return subscriptionId;
	}

	public void setSubscriptionId(Integer subscriptionId) {
		this.subscriptionId = subscriptionId;
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

	public Boolean getToSend() {
		return toSend;
	}

	public void setToSend(Boolean toSend) {
		this.toSend = toSend;
	}

	public String getDestinationType() {
		return destinationType;
	}

	public void setDestinationType(String destinationType) {
		this.destinationType = destinationType;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@Override
	public int hashCode() {
		int hash = 7;
		hash = 79 * hash + Objects.hashCode(this.subscriptionId);
		hash = 79 * hash + Objects.hashCode(this.lastSent);
		hash = 79 * hash + Objects.hashCode(this.bbox);
		hash = 79 * hash + Objects.hashCode(this.toSend);
		hash = 79 * hash + Objects.hashCode(this.destinationType);
		hash = 79 * hash + Objects.hashCode(this.url);
		hash = 79 * hash + Objects.hashCode(this.destination);
		hash = 79 * hash + Objects.hashCode(this.user);
		hash = 79 * hash + Objects.hashCode(this.product);
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
		if (this.lastSent != other.lastSent) {
			return false;
		}
		if (!Objects.equals(this.bbox, other.bbox)) {
			return false;
		}
		if (!Objects.equals(this.toSend, other.toSend)) {
			return false;
		}
		if (!Objects.equals(this.destinationType, other.destinationType)) {
			return false;
		}
		if (!Objects.equals(this.url, other.url)) {
			return false;
		}
		if (!Objects.equals(this.destination, other.destination)) {
			return false;
		}
		if (!Objects.equals(this.user, other.user)) {
			return false;
		}
		if (!Objects.equals(this.product, other.product)) {
			return false;
		}
		return Objects.equals(this.subscriptionId, other.subscriptionId);
	}

	@Override
	public String toString() {
		final StringBuilder sb = new StringBuilder("Subscription{");
		sb.append("id=").append(subscriptionId);
		sb.append(", lastSent=").append(lastSent).append('\'');
		sb.append(", bbox=").append(bbox).append('\'');
		sb.append(", toSend=").append(toSend).append('\'');
		sb.append(", destinationType=").append(destinationType).append('\'');
		sb.append(", url=").append(url).append('\'');
		sb.append(", destination=").append(destination).append('\'');
		sb.append(", product=").append(product).append('\'');
		sb.append(", user=").append(user);
		sb.append('}');
		return sb.toString();
	}
}
