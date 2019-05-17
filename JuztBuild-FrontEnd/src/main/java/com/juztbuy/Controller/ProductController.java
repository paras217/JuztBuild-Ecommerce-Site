package com.juztbuy.Controller;




import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import com.juztbuy.Service.Product_Service;
@Controller
public class ProductController {
	
	@Autowired
	private Product_Service product_Service ;
	
	
	@RequestMapping("/product {id}-{subCateName}")
	public String getProduct(@PathVariable("id") int id,@PathVariable("subCateName") String category, Model model) {
		model.addAttribute("productList1",product_Service.getProductListByID(id));
		model.addAttribute("category",category);	
		return "product";
	}
	@RequestMapping("/products")
	public String productList(Model model) {
		String list=product_Service.listProducts();
		model.addAttribute("productList",list );
		
		return "test";
	}
	@RequestMapping("/products{id}")
	public String productDetails(@PathVariable("id")int id ,Model model) {
		model.addAttribute("productDetails",product_Service.getProductByid(id));
	/*	model.addAttribute("productDetails",product_Service.getByName(productName));*/
		return "productDetails";
	}
	
	@RequestMapping("/search")
	public String searchProduct(HttpServletRequest request, Model model) {
		try {
			System.out.println(request.getParameter("key"));
			model.addAttribute("searchProduct", product_Service.getSearch(request.getParameter("key")));
			
			model.addAttribute("searchWord", request.getParameter("key"));
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "search";
	}
	}
	

