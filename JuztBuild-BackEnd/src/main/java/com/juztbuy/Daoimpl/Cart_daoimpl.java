package com.juztbuy.Daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.juztbuy.Dao.Cart_dao;
import com.juztbuy.Model.Cart;



@Transactional
@Repository
public class Cart_daoimpl implements Cart_dao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public boolean addCart(Cart cart) {
		sessionFactory.getCurrentSession().save(cart);
		return false;
	}

	public boolean deletCart(Cart cart) {
		sessionFactory.getCurrentSession().delete(cart);
		return false;
	}

	public List<Cart> getCartList() {
		@SuppressWarnings("unchecked")
	    List<Cart> cartlist = sessionFactory.getCurrentSession().createQuery("from Cart").list();
		return cartlist;
	}

	public Cart getByCartId(int Id) {
		Cart cart = sessionFactory.getCurrentSession().get(Cart.class, Id);
		return cart;
	}

}
