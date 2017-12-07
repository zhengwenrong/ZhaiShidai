package org.wenrong.zhaishidai.pojo;

/**
 * 收货地址数据封装
 * 
 * @author admin
 *
 */
public class Address {

	@Override
	public String toString() {
		return "Address [homeaddress=" + homeaddress + ", phone=" + phone + ", reseiver=" + receiver + ", id=" + id
				+ ", area=" + area + ", user_id=" + user_id + "]";
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	private String homeaddress;// 收货详细地址
	private String phone;// 联系电话
	private String receiver;// 收货人
	private String id;// 地址的编号
	private String area;

	public String getHomeaddress() {
		return homeaddress;
	}

	public void setHomeaddress(String homeaddress) {
		this.homeaddress = homeaddress;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	private int user_id;// 当前用户的ID

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}
