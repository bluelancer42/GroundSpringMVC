package com.ground.spring.model;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicUpdate;

@Entity
@DynamicUpdate
@Table(name = "user", schema = "EWS")
public class User implements Serializable {
	private static final long serialVersionUID = 1553653694074548541L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer userId;

	@Column(nullable = false, unique = true)
	private String username;
	private String firstName;
	private String lastName;
	private String email;
	private String password;
	private String salt;

	public User() {
	}

	public User(Integer userId, String username, String firstName, String lastName, String email, String password,
			String salt) {
		super();
		this.userId = userId;
		this.username = username;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.salt = salt;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	@Override
	public int hashCode() {
		int hash = 7;
		hash = 79 * hash + Objects.hashCode(this.userId);
		hash = 79 * hash + Objects.hashCode(this.username);
		hash = 79 * hash + Objects.hashCode(this.firstName);
		hash = 79 * hash + Objects.hashCode(this.lastName);
		hash = 79 * hash + Objects.hashCode(this.email);
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
		final User other = (User) obj;
		if (!Objects.equals(this.username, other.username)) {
			return false;
		}
		if (!Objects.equals(this.firstName, other.firstName)) {
			return false;
		}
		if (!Objects.equals(this.lastName, other.lastName)) {
			return false;
		}
		if (!Objects.equals(this.email, other.email)) {
			return false;
		}
		if (!Objects.equals(this.password, other.password)) {
			return false;
		}
		if (!Objects.equals(this.salt, other.salt)) {
			return false;
		}
		return Objects.equals(this.userId, other.userId);
	}

	@Override
	public String toString() {
		final StringBuilder sb = new StringBuilder("User{");
		sb.append("userId=").append(userId);
		sb.append(", firstName='").append(firstName).append('\'');
		sb.append(", lastName='").append(lastName).append('\'');
		sb.append(", email=").append(email);
		sb.append('}');
		return sb.toString();
	}
}
