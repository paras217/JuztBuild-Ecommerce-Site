package com.juztbuy.Daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.juztbuy.Dao.Address_dao;
import com.juztbuy.Model.Address;


@Transactional
@Repository

public class Address_daoimpl implements Address_dao {
	
	
	
	@Autowired
	SessionFactory sessionFactory;

	public boolean addAddress(Address address) {
		sessionFactory.getCurrentSession().save(address);
		return true;
	}

	public boolean upadetAddress(Address address) {
		sessionFactory.getCurrentSession().update(address);
		return true;
	}

	public boolean deletAddress(Address address) {
        sessionFactory.getCurrentSession().delete(address);
		return true;
	}

	public List<Address> getByuserId(int userId) {
		@SuppressWarnings("unchecked")
		List<Address> list = sessionFactory.getCurrentSession().createQuery("from Address where userId =" + userId).list();
		return list;
	}

	public Address getAddressById(int addressId) {
		Address address = sessionFactory.getCurrentSession().get(Address.class,addressId);
		return address;
	}

	

}
