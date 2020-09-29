package com.ground.model;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "subscriptions")
public class Subscriptions implements Serializable {
	private static final long serialVersionUID = 1553653694074548541L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer subscription_id;

	@NotEmpty
	@Column(nullable = false, unique = true)
	private String name;

	private Date lastSentDate;

	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "user_authority", joinColumns = { @JoinColumn(name = "subscription_id") }, inverseJoinColumns = {
			@JoinColumn(name = "subscription_id") })
	private Set<Authority> authorities = new HashSet<>();

	public Subscriptions() {
	}

	public Subscriptions(Integer subscription_id, String name, Date lastSentDate) {
		super();
		this.subscription_id = subscription_id;
		this.name = name;
		this.lastSentDate = lastSentDate;
	}

	public Integer getId() {
		return subscription_id;
	}

	public void setId(Integer subscription_id) {
		this.subscription_id = subscription_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getLastSentDate() {
		return lastSentDate;
	}

	public void setLastSentDate(Date lastSentDate) {
		this.lastSentDate = lastSentDate;
	}
}
