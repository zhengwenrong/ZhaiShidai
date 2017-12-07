package org.wenrong.zhaishidai.pojo;

/**
 * 单个菜单的数据封装类
 * 
 * @author admin
 *
 */
public class Memu {
	private String id;

	private String name;
	private Double price;
	private String categort_1;
	private String categort_2;
	private String category;
	private int count;

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCategort_1() {
		return categort_1;
	}

	public void setCategort_1(String categort_1) {
		this.categort_1 = categort_1;
	}

	public String getCategort_2() {
		return categort_2;
	}

	public void setCategort_2(String categort_2) {
		this.categort_2 = categort_2;
	}

	private String imageurl;
	private String description;

	public String getId() {
		return id;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Memu other = (Memu) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getImageurl() {
		return imageurl;
	}

	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
