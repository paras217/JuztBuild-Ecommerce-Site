package com.juztbuy.Service;

import java.util.List;

import com.juztbuy.Model.Cart;

public interface Cart_Service {
	
	boolean addCart(Cart cart);
	boolean deletCart(Cart cart);
	Cart getByCartId(int Id);
    List<Cart> getCartList();

}
