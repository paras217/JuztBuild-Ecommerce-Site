package com.juztbuy.Daoimpl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.juztbuy.Dao.Product_dao;
import com.juztbuy.Model.Product;



@Transactional
@Repository
public class Product_daoimpl implements Product_dao {
	
	@Autowired
    private SessionFactory sessionFactory;
    
	@PersistenceContext
	private EntityManager entityManager;
	
	public boolean addProduct(Product product) {
		sessionFactory.getCurrentSession().save(product);
		return true;	
	}

	public boolean updateProduct(Product product) {
		sessionFactory.getCurrentSession().update(product);
		return true;
	}

	public boolean deleteProduct(Product product) {
		  sessionFactory.getCurrentSession().delete(product);
			return true;
	}

	public List<Product> getProductList() {
		@SuppressWarnings("unchecked")
		List<Product> listproduct=sessionFactory.getCurrentSession().createQuery("from Product").list();
		return listproduct;
	}

	public Product getProductById(int id) {
		Product product=sessionFactory.getCurrentSession().get(Product.class,id);
		return product;
	}

	public List<Product> getProductListByID(int id) {
		@SuppressWarnings("unchecked")
		List<Product> list = sessionFactory.getCurrentSession().createQuery("from Product where subcategoryId =" + id).list();
		return list;
	}

	public String listProducts() {
		@SuppressWarnings("unchecked")
		List<Product> productList=sessionFactory.getCurrentSession().createQuery("select product_name from Product").list();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonProduct = gson.toJson(productList);
		System.out.println(jsonProduct);
		return jsonProduct;
	}

	public List<Product> getSearch(String text) {
		@SuppressWarnings("unchecked")
		List<Product> list = sessionFactory.getCurrentSession().createQuery("from Product where product_name like " + "'" + "%" + text + "%" + "'" ).list();
		
		return list;
	}

	public Product getbyName(String Name) {
	    Product product = (Product) sessionFactory.getCurrentSession().createQuery("from Product where product_name =" + "'" + Name + "'").uniqueResult();
	    
	    return  product;
	}

	
  





	
	}



	


