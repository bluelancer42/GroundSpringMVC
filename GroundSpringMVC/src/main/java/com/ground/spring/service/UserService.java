package com.ground.spring.service;

import java.util.List;

import com.ground.spring.model.User;

public interface UserService {

	public void addUser(User p);

	public void updateUser(User p);

	public List<User> listUser();

	public User getUserById(int id);

	public void removeUser(int id);

	public User validateUser(User user);

	public User registerUser(User user);

	public List<User> checkUsername(User user);

	public User encryptPassword(User user);

	public boolean verifyUserPassword(String pswd, String dbPswd, String salt);

	public User getUserByUsername(String username);

	public List<User> getUsersBySearch(String search);

}
