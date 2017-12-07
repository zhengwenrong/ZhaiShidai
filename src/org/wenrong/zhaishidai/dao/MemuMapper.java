package org.wenrong.zhaishidai.dao;

import java.util.List;

import org.wenrong.zhaishidai.pojo.Memu;
import org.wenrong.zhaishidai.pojo.PageBean;
import org.wenrong.zhaishidai.pojo.QueryPojo;

public interface MemuMapper {

	/**
	 * 分頁查找菜單
	 * @param query 查询条件
	 * @return
	 */
	public List<Memu> getMemu(QueryPojo query);
	
	/**
	 * 保存菜單
	 * @param memu
	 */
	public void saveMemu(Memu memu);
	
	/**
	 * 获取指定条件总菜单数
	 * @return
	 */
	public Integer getMemuCount(QueryPojo query);
	
}
