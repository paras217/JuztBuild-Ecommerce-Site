package com.juztbuy.Controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;




  
  @Controller 
  public class AdminController {
  
	  
 

  @Autowired
  private HttpServletRequest req;
  
  @RequestMapping("/admin")
  public String getAdmin(Model model) {
	  
	  
	 
		/*
		 * model.addAttribute("ipAdd",req.getRemoteAddr());
		 * System.out.println(req.getRemoteAddr());
		 */
	 
	  
  return "admin"; }
 
 
  
 
  }
 