package com.juztbuy.Dao;

import java.util.List;

import com.juztbuy.Model.User;

public interface User_dao {
	
	boolean addUser(User user);
	boolean updateUser(User user);
	boolean deleteUser(User user);
	List<User> getUserList();
	User getUserById(int id);
	public User getByEmail(String name);

}
