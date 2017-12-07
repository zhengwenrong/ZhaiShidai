package org.wenrong.zhaishidai.service.impl;

import org.apache.solr.client.solrj.SolrServerException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.wenrong.zhaishidai.pojo.Memu;
import org.wenrong.zhaishidai.pojo.PageBean;
import org.wenrong.zhaishidai.pojo.QueryPojo;
import org.wenrong.zhaishidai.service.MemuSearchService;
import org.wenrong.zhaishidai.solr.MemuSearchDao;
@Service
public class MemuSearchServiceImpl implements MemuSearchService {

	@Autowired
	private MemuSearchDao dao;
	
	@Override
	public PageBean<Memu> searchMemu(QueryPojo pojo) throws SolrServerException {
		
		return dao.serachMemu(pojo);
	}

	
	
	
}
