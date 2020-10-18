package com.ground.spring.model;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@SuppressWarnings("deprecation")
@Entity
@Table(name = "products", schema = "Subscriptions")
public class Products implements Serializable {
	private static final long serialVersionUID = 1553653694074548541L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer productsId;

	@NotEmpty
	@Column(nullable = false, unique = true)
	private String productName;
	private Date dateReceived;

	public Products() {
	}

	public Products(Integer productsId, String productName, Date dateReceived) {
		super();
		this.productsId = productsId;
		this.productName = productName;
		this.dateReceived = dateReceived;
	}

	public Integer getProductsId() {
		return productsId;
	}

	public void setProductsId(Integer productsId) {
		this.productsId = productsId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String username) {
		this.productName = username;
	}

	public Date getDateReceived() {
		return dateReceived;
	}

	public void setDateReceived(Date dateReceived) {
		this.dateReceived = dateReceived;
	}

	@Override
	public int hashCode() {
		int hash = 7;
		hash = 79 * hash + Objects.hashCode(this.productsId);
		hash = 79 * hash + Objects.hashCode(this.productName);
		hash = 79 * hash + Objects.hashCode(this.dateReceived);
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
		final Products other = (Products) obj;
		if (!Objects.equals(this.productName, other.productName)) {
			return false;
		}
		if (!Objects.equals(this.dateReceived, other.dateReceived)) {
			return false;
		}
		return Objects.equals(this.productsId, other.productsId);
	}

	@Override
	public String toString() {
		final StringBuilder sb = new StringBuilder("Products{");
		sb.append("productsId=").append(productsId);
		sb.append(", productName='").append(productName).append('\'');
		sb.append(", dateReceived='").append(dateReceived);
		sb.append('}');
		return sb.toString();
	}
}
