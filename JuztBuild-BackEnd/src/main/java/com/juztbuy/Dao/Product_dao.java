package com.juztbuy.Dao;

import java.util.List;

import com.juztbuy.Model.Product;


public interface Product_dao {
		
	boolean addProduct(Product product);
	boolean updateProduct(Product product);
	boolean deleteProduct(Product product);
	List<Product> getProductList();
	Product getProductById(int id);
    List<Product> getProductListByID(int id);
    public String listProducts();
    List<Product> getSearch(String text);
    Product getbyName(String Name);

   
}
