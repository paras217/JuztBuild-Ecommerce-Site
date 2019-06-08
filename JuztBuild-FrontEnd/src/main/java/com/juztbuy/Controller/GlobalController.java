package com.juztbuy.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.juztbuy.Model.Address;
import com.juztbuy.Service.Category_Service;
import com.juztbuy.Service.SubCategory_Service;
import com.juztbuy.Service.User_Service;



@ControllerAdvice
public class GlobalController {
	
	
	

	
	@Autowired
	private User_Service user_Service;
	 
	
	@Autowired
	private Category_Service category_Service;
	
	@Autowired
	private SubCategory_Service subCategory_Service;
	
  
	
	@ModelAttribute
    public void categoryList(Model model) {
		model.addAttribute("categoryList", category_Service.getCategoryList());
		model.addAttribute("subCategoryList", subCategory_Service.getSubCategoryList());
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String userDetails = auth.getName();
	    model.addAttribute("userDetails",user_Service.getByEmail(userDetails) );
	    model.addAttribute("address", new Address());

	    }
	 
	
   
	
	
	
}
