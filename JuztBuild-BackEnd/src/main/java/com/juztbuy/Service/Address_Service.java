package com.juztbuy.Service;

import java.util.List;

import com.juztbuy.Model.Address;

public interface Address_Service {
	
	boolean addAddress(Address address);
	boolean upadetAddress(Address address);
	boolean deletAddress(Address address);
	List<Address> getByuserId(int userId);
	Address getAddressById(int addressId);

}
