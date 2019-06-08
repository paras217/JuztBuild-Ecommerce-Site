package com.juztbuy.Daoimpl;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.juztbuy.Dao.Logs_dao;
import com.juztbuy.Model.Logs;

@Transactional
@Repository
public class Logs_daoimpl implements Logs_dao {
	

	@Autowired
	private SessionFactory sessionFactory;

	public boolean addLogs(Logs logs) {
		sessionFactory.getCurrentSession().save(logs);
		return true;
	}
	
	
	

}
