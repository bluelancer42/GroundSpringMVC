package com.ground.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ground.spring.dao.UserDAO;
import com.ground.spring.model.User;
import com.ground.spring.util.PasswordUtils;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;

	public void setUserDAO(UserDAO UserDAO) {
		this.userDAO = UserDAO;
	}

	@Override
	@Transactional
	public void addUser(User p) {
		this.userDAO.addUser(p);
	}

	@Override
	@Transactional
	public void updateUser(User p) {
		this.userDAO.updateUser(p);
	}

	@Override
	@Transactional
	public List<User> listUser() {
		return this.userDAO.listUser();
	}

	@Override
	@Transactional
	public User getUserById(int id) {
		return this.userDAO.getUserById(id);
	}

	@Override
	@Transactional
	public void removeUser(int id) {
		this.userDAO.removeUser(id);
	}

	@Override
	@Transactional
	public User validateUser(User user) {
		return this.userDAO.validateUser(user);
	}

	@Override
	@Transactional
	public User registerUser(User user) {
		return this.userDAO.registerUser(user);
	}

	@Override
	@Transactional
	public List<User> checkUsername(User user) {
		return this.userDAO.checkUsername(user);
	}

	@Override
	@Transactional
	public User encryptPassword(User user) {
		user.setSalt(PasswordUtils.getSalt(32));
		user.setPassword(PasswordUtils.generateSecurePassword(user.getPassword(), user.getSalt()));
		return user;
	}

	@Override
	@Transactional
	public boolean verifyUserPassword(String pswd, String dbPswd, String salt) {
		return PasswordUtils.verifyUserPassword(pswd, dbPswd, salt);
	}

}
