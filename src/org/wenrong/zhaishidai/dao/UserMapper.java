package org.wenrong.zhaishidai.dao;

import org.wenrong.zhaishidai.pojo.User;

public interface UserMapper {

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
	 * @param userName
	 * @return
	 */
	public User getUserByName(String userName);
	
}
