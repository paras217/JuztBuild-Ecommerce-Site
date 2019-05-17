package com.juztbuy.Service;

import java.util.List;

import com.juztbuy.Model.Category;

public interface Category_Service {
	boolean addCategory(Category category);
	boolean upadetCategory(Category category);
	boolean deletCategory(Category category);
	List<Category> getCategoryList();
	Category getCategoryById(int id);
	Category getCategoryByName(String categoryName);


}
