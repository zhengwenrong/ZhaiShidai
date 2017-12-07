package org.wenrong.zhaishidai.solr.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.stereotype.Repository;
import org.wenrong.zhaishidai.pojo.Memu;
import org.wenrong.zhaishidai.pojo.PageBean;
import org.wenrong.zhaishidai.pojo.QueryPojo;
import org.wenrong.zhaishidai.solr.MemuSearchDao;
@Repository
public class MemuSearchDaoImpl implements MemuSearchDao {

	@Resource(name="solrServer")
	private SolrServer solrServer;
	
	/* (non-Javadoc)
	 * @see org.wenrong.zhaishidai.solr.MemuSerachDao#serachMemu(org.wenrong.zhaishidai.pojo.QueryPojo)
	 */
	@Override
	public PageBean<Memu> serachMemu(QueryPojo vo) throws SolrServerException {
		
		SolrQuery query = new SolrQuery();
		
		//设置查询条件
		//设置默认查询字段
		if(vo.getMenuName()!=null){
			query.set("df", "memu_keywords");
			query.setQuery(vo.getMenuName());
		}else {
			query.setQuery("memu_keywords:*");
			
		}
		//设置查询的域
		query.setFields("id","memu_name","memu_imageurl","memu_price","memu_description");
		
		int start = (vo.getCurrentIndex()-1)*vo.getPageSize();
		//分页开始位置
		query.setStart(start);
		//每页显示多少条
		query.setRows(vo.getPageSize());

		//打开高亮
		query.setHighlight(true);
		query.addHighlightField("memu_name");
		query.addHighlightField("memu_description");
		//query.addHighlightField("memu_description");
		
		query.setHighlightSimplePre("<span style='color:red'>");
		//4：高亮的简单样式 后缀
		query.setHighlightSimplePost("</span>");
		
		
		QueryResponse response = solrServer.query(query);
		//数据
		SolrDocumentList results = response.getResults();
		
		//高亮数据
		Map<String, Map<String, List<String>>> highlighting = response.getHighlighting();
		
		PageBean<Memu> pageBean = new PageBean<Memu>();
		
		List<Memu> memus = new ArrayList<Memu>();
		
		for(SolrDocument solrDocument:results){
			
			Memu memu = new Memu();
			memu.setId((String) solrDocument.get("id"));
			Map<String, List<String>> map = highlighting.get(solrDocument.get("id"));
			
			memu.setPrice((Double) solrDocument.get("memu_price"));
			memu.setImageurl((String) solrDocument.get("memu_imageurl"));
			
			List<String> memuNameHL = map.get("memu_name");
			
			if(memuNameHL == null){
				//不匹配菜名,从solrDocument中获取memu_name
				memu.setName((String) solrDocument.get("memu_name"));
				
			}else {
				//匹配菜名,从memuNameHL中获取memu_name
				memu.setName(memuNameHL.get(0));
				
			}
			List<String> memuDescHL = map.get("memu_description");
			if(memuDescHL == null){
				
				memu.setDescription((String) solrDocument.get("memu_description"));
				
				
			}else{
				memu.setDescription(memuDescHL.get(0));
			}
			
			memus.add(memu);
						
		}
		pageBean.setPageData(memus);
		
		System.out.println();
	
		return pageBean;
	}

}
