package com.juztbuy.Service;

import java.util.List;

import com.juztbuy.Model.Product;

public interface Product_Service {
	
	boolean addProduct(Product product);
	boolean updateProduct(Product product);
	List<Product> getProductList();
	Product getProductByid(int id);
	boolean deleteProduct(Product product);
	List<Product> getProductListByID(int id);
	public String listProducts();
	List<Product> getSearch(String text);
	

}
