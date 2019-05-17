package com.juztbuy.Test;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;
import org.springframework.test.context.junit4.SpringRunner;

import com.juztbuy.Config.DBconfig;
import com.juztbuy.Model.User;
import com.juztbuy.Service.User_Service;

import static org.junit.Assert.*;

import org.junit.Ignore;
import org.junit.Test;


@RunWith(SpringRunner.class)
@SpringJUnitConfig(classes=DBconfig.class)
public class User_Test {
	
	@Autowired
	User_Service user_Service;

	@Test
	public void test() {
		fail("Not yet implemented");
	}
	@Ignore
	@Test
	public void addUser() {
		User user = new User();
		user.setFname("Yash");
		user.setLname("Bhagat");
		user.setEmail("yashbhagat17@hotmail.com");
		user.setPhone("9768927210");
		user.setPassword("rocket11");
		
		assertTrue("Category Added",user_Service.addUser(user));
		
	}
	
	@Ignore
	@Test
	public void updateUser() {
		User user = user_Service.getUserByid(2);
		user.setFname("Meet");
		user.setEmail("meetbhagat@gmail.com");
			assertTrue("User Update",user_Service.updateUser(user));
	}
	
	@Test 
	public void deleteUser() {
		User user =user_Service.getUserByid(2);
	
		assertTrue("User Update",user_Service.deleteUser(user));
	}
	

}
