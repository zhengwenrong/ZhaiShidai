package org.wenrong.zhaishidai.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.wenrong.zhaishidai.pojo.User;
import org.wenrong.zhaishidai.service.UserService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class UserTest {

	@Autowired
	private UserService service;
	
	@Test
	public void test1() {

		boolean checkUser = service.getCheckUser("admin");
		User userByName1 = service.getUserById("1");
		
		User user = new User();
		user.setId(0);
		user.setAccount("asdf");
		user.setPassword("123");
		//service.saveUser(user);
		
		System.out.println();
	}
	
}
