package com.juztbuy.Serviceimpl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.juztbuy.Dao.Category_dao;
import com.juztbuy.Model.Category;
import com.juztbuy.Service.Category_Service;

@Service
public class Category_Serviceimpl implements Category_Service {

	@Autowired
	Category_dao category_dao;
	
	
	public boolean addCategory(Category category) {
		category_dao.addCategory(category);
		return true;
	}

	public boolean upadetCategory(Category category) {
		category_dao.upadetCategory(category);
		return true;
	}

	public boolean deletCategory(Category category) {
		category_dao.deletCategory(category);
		return false;
	}

	

	public Category getCategoryById(int id) {
		Category category = category_dao.getCategoryById(id);
    return category;
	}

	public List<Category> getCategoryList() {
		return  category_dao.getCategoryList();
	}

	public Category getCategoryByName(String categoryName) {
		
		return null;
	}

	

}
