package com.juztbuy.Service;

import java.util.List;

import com.juztbuy.Model.SubCategory;

public interface SubCategory_Service {
	
	boolean addSubCategory(SubCategory subCategory);
	boolean updateSubCategory(SubCategory subCategory);
	boolean deleteSubCategory(SubCategory subCategory);
	List<SubCategory> getSubCategoryList();
	SubCategory getSubCategorybyid(int id);
	

}
