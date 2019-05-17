package com.juztbuy.Controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.juztbuy.Model.Address;
import com.juztbuy.Model.User;
import com.juztbuy.Service.Address_Service;
import com.juztbuy.Service.User_Service;



@Controller
public class MainController {
	

	
	@Autowired
	private PasswordEncoder passwordEncoder;

	@Autowired 
    private User_Service user_Service;
	
	@Autowired
	private Address_Service address_Service;
	
	@RequestMapping("/")
	public String getHome() {
	
		return "index";
	}
	

	@RequestMapping("/registration")
	public String registration(Model model) {
		model.addAttribute("user", new User());
		
	  
		   return "registration";
	  
	  }
	@RequestMapping("/registration/success")
	public String successRegistration(@ModelAttribute("user")
	 User user) {
		user.setPassword(passwordEncoder.encode(user.getPassword()));
	      user.setRoleId(1);
		  user_Service.addUser(user); 
		  
		   return "redirect:/UserLogin";
	  
	  }
	@RequestMapping("/Home")
	public String getlogin1(Model model) {
		
		
	  
		    
	   return "index";
	   }
	@RequestMapping("/UserLogin")
	public String userlogin() {
		
		  
	  return "login";
	
	}
	
	@RequestMapping("/perform_logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		
		return "redirect:/";
		
	}
	@RequestMapping("/Profile {userId}")
	public String profile(@PathVariable("userId") int id,Model model) {
		model.addAttribute("address", new Address());
		model.addAttribute("addressList",address_Service.getByuserId(id));
		return "profile";
	}
	@RequestMapping("/AddAddress{userId}")
	public String addAddress(@ModelAttribute("address") Address address) {
	      address_Service.addAddress(address);
	
		return "redirect:/Profile{userId}";
		
		
	}
	@RequestMapping("/UpdateAddress{userId}")
	public String updateAddress(@ModelAttribute("address") Address address) {
		    address_Service.upadetAddress(address);
		return "redirect:/Profile{userId}";
	}
	@RequestMapping("/DeleteAddress{addressId}/{userId}")
	  public String deleteAddress(@PathVariable("addressId") int id,Model model) {
		Address address = address_Service.getAddressById(id);
		address_Service.deletAddress(address);
		return "redirect:/Profile{userId}";
		
	}
	
	
	
}
