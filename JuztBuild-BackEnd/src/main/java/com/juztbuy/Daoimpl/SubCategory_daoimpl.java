package com.juztbuy.Daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.juztbuy.Dao.SubCategory_dao;
import com.juztbuy.Model.SubCategory;


@Transactional
@Repository
public  class SubCategory_daoimpl implements SubCategory_dao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public boolean addSubCategory(SubCategory subCategory) {
		sessionFactory.getCurrentSession().save(subCategory);
		return true;
	}

	public boolean updateSubCategory(SubCategory subCategory) {
		sessionFactory.getCurrentSession().update(subCategory);
		return true;
	}

	public boolean deleteSubCategory(SubCategory subCategory) {
		sessionFactory.getCurrentSession().delete(subCategory);
		return true;
	}

	public List<SubCategory> getSubCategoryList() {
		@SuppressWarnings("unchecked")
		List<SubCategory> listSubCategory=sessionFactory.getCurrentSession().createQuery("from SubCategory").list();
		return listSubCategory;
	}

	

	public SubCategory getSubCategorybyid(int id) {
		SubCategory subCategory=sessionFactory.getCurrentSession().get(SubCategory.class,id);
		return subCategory;
	}

	
}
