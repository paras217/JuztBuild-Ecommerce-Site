package com.juztbuy.Serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;

import com.juztbuy.Dao.Logs_dao;
import com.juztbuy.Model.Logs;
import com.juztbuy.Service.Logs_Service;

public class Logs_Serviceimpl implements Logs_Service {
	
	@Autowired
	Logs_dao logs_dao;

	public boolean addLogs(Logs logs) {
		logs_dao.addLogs(logs);
		return false;
	}
	
	
	
	
	

}
