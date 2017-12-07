package org.wenrong.zhaishidai.service;

import org.apache.solr.client.solrj.SolrServerException;
import org.springframework.stereotype.Service;
import org.wenrong.zhaishidai.pojo.Memu;
import org.wenrong.zhaishidai.pojo.PageBean;
import org.wenrong.zhaishidai.pojo.QueryPojo;

/**
 * 通过Solr查询菜单
 * @author Administrator
 *
 */
public interface MemuSearchService {

	/**
	 * 处理首页搜索菜单请求
	 * @param pojo
	 * @return
	 * @throws SolrServerException 
	 */
	public PageBean<Memu> searchMemu(QueryPojo pojo) throws SolrServerException;
	
}
