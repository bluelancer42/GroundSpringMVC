package com.ground.spring.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.ground.spring.model.User;

@SuppressWarnings({ "deprecation", "rawtypes", "unchecked" })
@Repository
public class UserDAOImpl implements UserDAO {

	private static final Logger logger = LoggerFactory.getLogger(UserDAOImpl.class);
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Override
	public void addUser(User p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(p);
		logger.info("User saved successfully, User Details=" + p);
	}

	@Override
	public void updateUser(User p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("User updated successfully, User Details=" + p);
	}

	@Override
	public List<User> listUser() {
		Session session = this.sessionFactory.getCurrentSession();
		List<User> usersList = session.createQuery("from User").list();
		for (User p : usersList) {
			logger.info("User List::" + p);
		}
		return usersList;
	}

	@Override
	public User getUserById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		User p = new User();
		p = (User) session.load(User.class, Integer.valueOf(id));
		logger.info("User loaded successfully, User details=" + p);
		return p;
	}

	@Override
	public void removeUser(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		User p = (User) session.load(User.class, Integer.valueOf(id));
		if (null != p) {
			session.delete(p);
		}
		logger.info("User deleted successfully, User details=" + p);
	}

	public User validateUser(User user) {
		List<User> users = null;
		Session session = this.sessionFactory.getCurrentSession();
		String sql = "FROM User where username=:username";

		Query query = session.createQuery(sql);
		query.setParameter("username", user.getUsername());
		users = query.getResultList();

		return users.size() > 0 ? users.get(0) : null;
	}

	public User registerUser(User user) {
		User users = getUserByUsername(user.getUsername());
		if (users == null) {
			addUser(user);
		}

		return users != null ? users : null;
	}

	public List<User> checkUsername(User user) {

		Session session = this.sessionFactory.getCurrentSession();
		String sql = "FROM User where username=:username";

		Query query = session.createQuery(sql);
		query.setParameter("username", user.getUsername());
		List<User> users = query.getResultList();

		return users;
	}

	public User getUserByUsername(String username) {
		Session session = this.sessionFactory.getCurrentSession();
		String sql = "FROM User where username=:username";
		Query query = session.createQuery(sql);
		query.setParameter("username", username);
		List<User> users = query.getResultList();

		return users.size() > 0 ? users.get(0) : null;
	}

	public List<User> getUsersBySearch(String search) {
		List<User> users = null;
		Session session = this.sessionFactory.getCurrentSession();
		String sql = "FROM User where upper(username) like :search";
		String wildcardSearch = "%" + search.toUpperCase() + "%";
		Query query = session.createQuery(sql);
		query.setParameter("search", wildcardSearch);
		List<User> usersList = query.getResultList();

		query = null;
		sql = "FROM User where upper(firstName) like :search";
		query = session.createQuery(sql);
		query.setParameter("search", wildcardSearch);
		users = query.getResultList();
		for (User user : users) {
			if (!usersList.contains(user)) {
				usersList.add(user);
			}

		}

		query = null;
		sql = "FROM User where upper(lastName) like :search";
		query = session.createQuery(sql);
		query.setParameter("search", wildcardSearch);
		users = query.getResultList();
		for (User user : users) {
			if (!usersList.contains(user)) {
				usersList.add(user);
			}

		}

		query = null;
		sql = "FROM User where upper(email) like :search";
		query = session.createQuery(sql);
		query.setParameter("search", wildcardSearch);
		users = query.getResultList();
		for (User user : users) {
			if (!usersList.contains(user)) {
				usersList.add(user);
			}

		}

		return usersList;
	}

}