package org.wenrong.zhaishidai.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.wenrong.zhaishidai.dao.UserMapper;
import org.wenrong.zhaishidai.pojo.User;
import org.wenrong.zhaishidai.service.UserService;
import org.wenrong.zhaishidai.utils.MD5Utils;
import org.wenrong.zhaishidai.utils.UUIDUtils;
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
		
		user.setPassword(MD5Utils.md5(user.getPassword()));
		userMapper.saveUser(user);
		
	}

	@Override
	public boolean getCheckUser(String userName) {
		
		User user = userMapper.getUserByName(userName);
		System.out.println("user: "+user);
		if(user == null) {
			
			return true;
			
		}else {
			return false;
		}
		
	}

	@Override
	public User login(User user) {
		
		user.setPassword(MD5Utils.md5(user.getPassword()));
		User userInDb = userMapper.getUser(user);
		
		if(userInDb == null){
			
			return null;
		}else {
			
			//更新用户token
			user.setUsertoken(UUIDUtils.getRandomStr());
			userMapper.updateUserToken(user);
			return user;
		}
		
	}
}
