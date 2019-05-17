package com.juztbuy.Serviceimpl;

import java.util.List;

import com.juztbuy.Dao.User_dao;
import com.juztbuy.Model.User;
import com.juztbuy.Service.User_Service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Transactional
@Service
public class User_Serviceimpl implements User_Service{
	
	@Autowired
	User_dao user_dao;

	public boolean addUser(User user) {
		user_dao.addUser(user);
		return true;
	}

	public boolean updateUser(User user) {
		user_dao.updateUser(user);
		return true;
	}

	public List<User> getUserList() {
		return user_dao.getUserList();	
		}

	public User getUserByid(int id) {
		User user = user_dao.getUserById(id);
		return user;
	}

	public boolean deleteUser(User user) {
       user_dao.deleteUser(user);
		return true;
	}

	public User getByEmail(String name) {
		
		return user_dao.getByEmail(name);
	}

}
