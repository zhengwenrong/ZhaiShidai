package org.wenrong.zhaishidai.pojo;

public class OrderItem {

	private String order_id;
	private String memu_id;
	private int buynum;
	
	//表之外的其他字段
	private String name;
	private double price;
	private String imageurl;
	
	public String getImageurl() {
		return imageurl;
	}
	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getMemu_id() {
		return memu_id;
	}
	public void setMemu_id(String memu_id) {
		this.memu_id = memu_id;
	}
	public int getBuynum() {
		return buynum;
	}
	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}
	
	
	
}
