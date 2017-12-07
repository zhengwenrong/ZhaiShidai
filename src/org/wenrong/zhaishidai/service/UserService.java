package org.wenrong.zhaishidai.service;

import org.springframework.stereotype.Service;
import org.wenrong.zhaishidai.pojo.User;

public interface UserService {

	/**
	 * 通过ID查询用户
	 * @return
	 */
	public User getUserById(String id);
	
	/**
	 * 保存用户到数据库汇总
	 */
	public void saveUser(User user);
	
	/**
	 * 通过昵称查询用户
	 * 	注册时检查用户是否重复
	 * @param userName
	 * @return true 用户已存在
	 * 		   false 用户不存在
	 */
	public boolean getCheckUser(String userName);
	
	
}
