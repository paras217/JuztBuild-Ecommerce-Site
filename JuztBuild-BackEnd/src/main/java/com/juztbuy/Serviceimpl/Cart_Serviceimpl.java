package com.juztbuy.Serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.juztbuy.Dao.Cart_dao;
import com.juztbuy.Model.Cart;
import com.juztbuy.Service.Cart_Service;

@Service
public class Cart_Serviceimpl implements Cart_Service {
	
	
	@Autowired
	Cart_dao cart_dao;
	

	public boolean addCart(Cart cart) {
		cart_dao.addCart(cart);
		return true;
	}

	public boolean deletCart(Cart cart) {
		cart_dao.deletCart(cart);
		return true;
	}

	public Cart getByCartId(int Id) {
	Cart cart = cart_dao.getByCartId(Id);
		return cart;
	}

	public List<Cart> getCartList() {
	
		return cart_dao.getCartList();
	}
	
	

}
