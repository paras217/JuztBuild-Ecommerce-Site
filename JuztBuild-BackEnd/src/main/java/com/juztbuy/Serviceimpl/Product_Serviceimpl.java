package com.juztbuy.Serviceimpl;

import java.util.List;

import com.juztbuy.Dao.Product_dao;
import com.juztbuy.Model.Product;
import com.juztbuy.Service.Product_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class Product_Serviceimpl implements Product_Service {
	
	@Autowired
	Product_dao product_dao;

	public boolean addProduct(Product product) {
		product_dao.addProduct(product);
		return true;
	}

	public boolean updateProduct(Product product) {
		product_dao.updateProduct(product);
		return true;
	}

	public List<Product> getProductList() {
		return product_dao.getProductList();
	}

	public Product getProductByid(int id) {
		Product product = product_dao.getProductById(id);
		return product;
	}

	public boolean deleteProduct(Product product) {
		product_dao.deleteProduct(product);
		return false;
	}

	public List<Product> getProductListByID(int id) {
		
		return product_dao.getProductListByID(id);
	}

	public String listProducts() {
		
		return product_dao.listProducts() ;
	}

	public List<Product> getSearch(String text) {
	
		return product_dao.getSearch(text);
	}



	
	
	

}
