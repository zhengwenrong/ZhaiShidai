package org.wenrong.zhaishidai.pojo;

public class QueryPojo {

	private String category1;
	private String category2;
	private String menuName;
	private String category;
	
	private Integer currentIndex = 1;
	private Integer pageSize = 10;
	private Integer startIndex;
	
	private String result;//请求结果
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public QueryPojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Integer getStartIndex() {
		return startIndex;
	}
	public void setStartIndex(Integer startIndex) {
		this.startIndex = startIndex;
	}
	public Integer getCurrentIndex() {
		return currentIndex;
	}
	public void setCurrentIndex(Integer currentIndex) {
		this.currentIndex = currentIndex;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public String getCategory1() {
		return category1;
	}
	public void setCategory1(String category1) {
		this.category1 = category1;
	}
	public String getCategory2() {
		return category2;
	}
	public void setCategory2(String category2) {
		this.category2 = category2;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	
	
	
	
}
