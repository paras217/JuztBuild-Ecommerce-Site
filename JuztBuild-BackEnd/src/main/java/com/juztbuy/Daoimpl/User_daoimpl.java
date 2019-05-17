package com.juztbuy.Daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.juztbuy.Dao.User_dao;
import com.juztbuy.Model.User;


@Repository
public class User_daoimpl implements User_dao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public boolean addUser(User user) {
		sessionFactory.getCurrentSession().save(user);
		return true;
	}

	public boolean updateUser(User user) {
		sessionFactory.getCurrentSession().update(user);
		return true;
	}

	public boolean deleteUser(User user) {
		sessionFactory.getCurrentSession().delete(user);
		return true;
	}

	public List<User> getUserList() {
		@SuppressWarnings("unchecked")
		List<User> listuser=sessionFactory.getCurrentSession().createQuery("from User").list();
		return listuser;
	}

	public User getUserById(int id) {
		User user=sessionFactory.getCurrentSession().get(User.class,id);
		return user;
	}

	public User getByEmail(String name) {
		User list = (User) sessionFactory.getCurrentSession().createQuery("from User where email =" + "'" + name + "'").uniqueResult();
		return list;
	}

	

}
