package org.wenrong.zhaishidai.solr;

import java.util.List;

import org.apache.solr.client.solrj.SolrServerException;
import org.wenrong.zhaishidai.pojo.Memu;
import org.wenrong.zhaishidai.pojo.PageBean;
import org.wenrong.zhaishidai.pojo.QueryPojo;

/**
 * 使用solr服务器对菜单进行查询
 * @author Administrator
 *
 */
public interface MemuSearchDao {

	public PageBean<Memu> serachMemu(QueryPojo vo) throws SolrServerException;

}
