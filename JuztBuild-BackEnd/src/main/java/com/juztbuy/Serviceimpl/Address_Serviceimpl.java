package com.juztbuy.Serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.juztbuy.Dao.Address_dao;
import com.juztbuy.Model.Address;
import com.juztbuy.Service.Address_Service;

@Service
public class Address_Serviceimpl implements Address_Service {
	
	@Autowired
	Address_dao address_dao;

	public boolean addAddress(Address address) {
		address_dao.addAddress(address);
		return true;
	}

	public boolean upadetAddress(Address address) {
		address_dao.upadetAddress(address);
		return true;
	}

	public boolean deletAddress(Address address) {
		address_dao.deletAddress(address);
		return true;
	}

	public List<Address> getByuserId(int userId) {
		
		return address_dao.getByuserId(userId);
	}

	public Address getAddressById(int addressId) {
	    Address address = address_dao.getAddressById(addressId);
		return address;
	}

}
