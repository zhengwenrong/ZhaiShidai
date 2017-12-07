package org.wenrong.zhaishidai.service;

import java.util.List;

import org.wenrong.zhaishidai.pojo.Memu;
import org.wenrong.zhaishidai.pojo.PageBean;
import org.wenrong.zhaishidai.pojo.QueryPojo;

public interface MemuService {
	/**
	 * 保存Memu到数据库
	 * @param memu
	 */
	public void saveMemu(Memu memu);
	
	/**
	 * 获取查询的菜单分页数据
	 * @param pojo
	 * @return
	 */
	public PageBean<Memu> getMemuPage(QueryPojo pojo);
	
	
	
}
