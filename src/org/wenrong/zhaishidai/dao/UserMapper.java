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
	
	/**
	 * 更新用户token
	 * @param token
	 * @return
	 */
	public void updateUserToken(User user);
	
	/**
	 * 通过用户名和ID获取用户
	 * @param user
	 * @return
	 */
	public User getUser(User user);
	
}
