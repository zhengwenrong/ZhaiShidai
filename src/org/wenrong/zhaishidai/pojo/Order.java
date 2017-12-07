package org.wenrong.zhaishidai.pojo;

import java.sql.Date;
import java.util.List;

/**
 * 订单数据封装
 * 
 * @author admin
 *
 */
public class Order {

	private String id;
	private Double money;
	private Date ordertime;
	private String receiverinfo;
	private int paystate;
	private int userId;

	// 表之外的其他字段
	private List<OrderItem> orderItems;// 订单项集合
	private String account;// 用户账号
	private String reciver;// 收货人

	public String getReciver() {
		return reciver;
	}

	public void setReciver(String reciver) {
		this.reciver = reciver;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Double getMoney() {
		return money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	public Date getOrdertime() {
		return ordertime;
	}

	public void setOrdertime(Date ordertime) {
		this.ordertime = ordertime;
	}

	public String getReceiverinfo() {
		return receiverinfo;
	}

	public void setReceiverinfo(String receiverinfo) {
		this.receiverinfo = receiverinfo;
	}

	public int getPaystate() {
		return paystate;
	}

	public void setPaystate(int paystate) {
		this.paystate = paystate;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public List<OrderItem> getOrderItems() {
		return orderItems;
	}

	public void setOrderItems(List<OrderItem> orderItems) {
		this.orderItems = orderItems;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

}
