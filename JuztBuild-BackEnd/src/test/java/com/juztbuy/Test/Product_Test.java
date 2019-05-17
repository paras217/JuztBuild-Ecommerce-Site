package com.juztbuy.Test;

import static org.junit.Assert.*;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;
import org.springframework.test.context.junit4.SpringRunner;

import com.juztbuy.Config.DBconfig;
import com.juztbuy.Model.Product;
import com.juztbuy.Service.Product_Service;



@RunWith(SpringRunner.class)
@SpringJUnitConfig(classes=DBconfig.class)
public class Product_Test {
	
	@Autowired
	Product_Service product_Service;

	
    @Ignore
	@Test
	public void addProduct() {
		Product product = new Product();
		product.setProduct_name("Stock");
		product.setProduct_description("Stock Description");
		product.setProduct_price(17000);
		product.setProduct_unit(20);
		
		assertTrue("Product Added",product_Service.addProduct(product));
		
	}
	@Ignore
	@Test
	public void updateProduct() {
		Product product = product_Service.getProductByid(1);
		product.setProduct_name("Stock-1");
			assertTrue("Product Is Update",product_Service.updateProduct(product));
	}
    @Ignore
	@Test 
	public void deleteProduct() {
		Product product =product_Service.getProductByid(1);
	
		assertTrue("Product Is Delete",product_Service.deleteProduct(product));
	}
	
	@Test
	public void simpleJsonWithPrettyPrinting() throws Exception {
	  System.out.println();
	  product_Service.listProducts();
	}
}
