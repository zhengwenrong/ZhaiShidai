package org.wenrong.zhaishidai.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.wenrong.zhaishidai.dao.UserMapper;
import org.wenrong.zhaishidai.pojo.User;
import org.wenrong.zhaishidai.service.UserService;
@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User getUserById(String id) {
		
		User userById = userMapper.getUserById(id);
		
		return userById;
	}

	@Override
	public void saveUser(User user) {
		
		userMapper.saveUser(user);
		
		
	}

	@Override
	public boolean getCheckUser(String userName) {
		
		User user = userMapper.getUserByName(userName);
		System.out.println("user: "+user);
		if(user == null) {
			
			return false;
			
		}else {
			return true;
		}
		
	}

	
	
}
