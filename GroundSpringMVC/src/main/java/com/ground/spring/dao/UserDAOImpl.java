package com.ground.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.ground.spring.model.User;

@SuppressWarnings("deprecation")
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
		session.persist(p);
		logger.info("User saved successfully, User Details=" + p);
	}

	@Override
	public void updateUser(User p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("User updated successfully, User Details=" + p);
	}

	@SuppressWarnings("unchecked")
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
		User p = (User) session.load(User.class, Integer.valueOf(id));
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

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public User validateUser(User user) {

		Session session = this.sessionFactory.getCurrentSession();
		String sql = "FROM User where username=:username and password=crypt(:password, password)";

		Query query = session.createQuery(sql);
		query.setParameter("username", user.getUsername());
		query.setParameter("password", user.getPassword());
		List<User> users = query.getResultList();

		return users.size() > 0 ? users.get(0) : null;
	}
}

class UserMapper implements RowMapper<User> {

	public User mapRow(ResultSet rs, int arg1) throws SQLException {
		User user = new User();

		user.setUsername(rs.getString("username"));
		user.setPassword(rs.getString("password"));
		user.setFirstName(rs.getString("firstname"));
		user.setLastName(rs.getString("lastname"));
		user.setEmail(rs.getString("email"));

		return user;
	}
}