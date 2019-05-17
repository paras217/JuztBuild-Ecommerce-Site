package com.juztbuy.Service;

import com.juztbuy.Model.User;
import java.util.List;

public interface User_Service {
	boolean addUser(User user);
	boolean updateUser(User user);
	List<User> getUserList();
	User getUserByid(int id);
	boolean deleteUser(User user);
	public User getByEmail(String name);

}
