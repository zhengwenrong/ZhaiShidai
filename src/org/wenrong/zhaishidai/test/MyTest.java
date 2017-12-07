package org.wenrong.zhaishidai.test;

import javax.annotation.Resource;

import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.wenrong.zhaishidai.pojo.QueryPojo;
import org.wenrong.zhaishidai.solr.MemuSearchDao;

import com.alibaba.druid.pool.DruidDataSource;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class MyTest {

	@Autowired
	DruidDataSource datasource;
	
	@Resource(name="solrServer")
	SolrServer solrServer;
	
	@Test
	public void Protes() {

		System.out.println("---------------"+solrServer);
		
	}

	@Autowired
	MemuSearchDao memuSerachDao; 
	
	
	@Test
	public void testSolr() throws SolrServerException{
		
		System.out.println(memuSerachDao);
		QueryPojo pojo = new QueryPojo();
		pojo.setMenuName("汤");
		memuSerachDao.serachMemu(pojo);
		
	}
	
	
}
