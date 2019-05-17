package com.juztbuy.Serviceimpl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.juztbuy.Dao.SubCategory_dao;
import com.juztbuy.Model.SubCategory;
import com.juztbuy.Service.SubCategory_Service;

@Service

public class SubCategory_Serviceimpl implements SubCategory_Service {
	
     @Autowired
      SubCategory_dao subcategory_dao;
     
	public boolean addSubCategory(SubCategory subCategory) {
		subcategory_dao.addSubCategory(subCategory);
		
		return true;
	}

	public boolean updateSubCategory(SubCategory subCategory) {
		subcategory_dao.updateSubCategory(subCategory);
		return true;
	}

	public boolean deleteSubCategory(SubCategory subCategory) {
		subcategory_dao.deleteSubCategory(subCategory);
		return false;
	}

	public List<SubCategory> getSubCategoryList() {
		
		return subcategory_dao.getSubCategoryList();
	}

	public SubCategory getSubCategorybyid(int id) {
		SubCategory subCategory = subcategory_dao.getSubCategorybyid(id);
		return subCategory;
	}

}

