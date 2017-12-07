package org.wenrong.zhaishidai.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.wenrong.zhaishidai.dao.MemuMapper;
import org.wenrong.zhaishidai.pojo.Memu;
import org.wenrong.zhaishidai.pojo.PageBean;
import org.wenrong.zhaishidai.pojo.QueryPojo;
import org.wenrong.zhaishidai.service.MemuService;
@Service
public class MemuServiceImpl implements MemuService {

	@Autowired
	private MemuMapper mapper;
	
	@Override
	public void saveMemu(Memu memu) {
	
		mapper.saveMemu(memu);
		
	}

	@Override
	public PageBean<Memu> getMemuPage(QueryPojo pojo) {

		PageBean<Memu> bean = new PageBean<Memu>();
		
		pojo.setPageSize(bean.getPageCount());
		if(pojo.getCurrentIndex()!=null) {
			
			pojo.setStartIndex((pojo.getCurrentIndex()-1)*pojo.getPageSize());
			bean.setCurrentPage(pojo.getCurrentIndex());
		}else {
			pojo.setStartIndex(0);
		}
		
		
		
		if(pojo.getCategory1()!=null&&!pojo.getCategory1().equals("")&&pojo.getCategory2()!=null&&!pojo.getCategory2().equals("")) {
			
			pojo.setCategory(pojo.getCategory1()+"-"+pojo.getCategory2());
			
		}else if(pojo.getCategory1()!=null&&!pojo.getCategory1().equals("")) {
			
			pojo.setCategory(pojo.getCategory1());
			
		}
		
		bean.setTotalCount(mapper.getMemuCount(pojo));
		bean.setPageData(mapper.getMemu(pojo));
		
		return bean;
	}
		
}
