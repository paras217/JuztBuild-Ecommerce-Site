package com.juztbuy.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Logs {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int logsId;
	private String name;
	private String ipAddress;
	private int date;
	private String time;
	private String logDescription;
	public int getLogsId() {
		return logsId;
	}
	public void setLogsId(int logsId) {
		this.logsId = logsId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIpAddress() {
		return ipAddress;
	}
	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}
	public int getDate() {
		return date;
	}
	public void setDate(int date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getLogDescription() {
		return logDescription;
	}
	public void setLogDescription(String logDescription) {
		this.logDescription = logDescription;
	}
	
	
	
	

	
	
	
	
}
