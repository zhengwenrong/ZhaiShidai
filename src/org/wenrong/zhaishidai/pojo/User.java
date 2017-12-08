package org.wenrong.zhaishidai.pojo;

public class User {

	public User(){
		
		
	}
	public int id;//用户的id
	public String password;//用户密码
	public String account;//用户帐号
	public String usertoken;//用户登陆令牌
	

	public String getUsertoken() {
		return usertoken;
	}
	public void setUsertoken(String usertoken) {
		this.usertoken = usertoken;
	}
	public int getId() {
		return id;
	}
	public User(String password, String account) {
		super();
		this.password = password;
		this.account = account;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", password=" + password + ", account=" + account + "]";
	}
	
	
}
