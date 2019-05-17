package com.juztbuy.Daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.juztbuy.Dao.Category_dao;
import com.juztbuy.Model.Category;



@Transactional
@Repository

public class Category_daoimpl implements Category_dao {
	@Autowired
    private SessionFactory sessionFactory;
	

	public boolean addCategory(Category category) {
		 sessionFactory.getCurrentSession().save(category);
	    return true;
	}

	public boolean upadetCategory(Category category) {
		sessionFactory.getCurrentSession().update(category);
        return true;
	}

	public boolean deletCategory(Category category) {
		sessionFactory.getCurrentSession().delete(category);
		return true;
	}

	public List<Category> getCategoryList() {
		@SuppressWarnings("unchecked")
		List<Category> listcategory=sessionFactory.getCurrentSession().createQuery("from Category").list();
		return listcategory;
	}

	public Category getCategoryById(int id) {
		Category category=sessionFactory.getCurrentSession().get(Category.class,id);
		return category;
	}

	public Category getCategoryByName(String categoryName) {
		@SuppressWarnings("unchecked")
		List<Category> list = sessionFactory.getCurrentSession().createQuery("from Category where categoryName =" + "'"+ categoryName + "'").list();
		return list.get(0);
	}

	
}
