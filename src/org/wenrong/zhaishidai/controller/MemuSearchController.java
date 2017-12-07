package org.wenrong.zhaishidai.controller;

import org.apache.solr.client.solrj.SolrServerException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.wenrong.zhaishidai.pojo.Memu;
import org.wenrong.zhaishidai.pojo.PageBean;
import org.wenrong.zhaishidai.pojo.QueryPojo;
import org.wenrong.zhaishidai.service.MemuSearchService;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

/**
 * 首页菜单搜索
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/memu")
public class MemuSearchController {

	@Autowired
	private MemuSearchService service;
	
	@RequestMapping(value="/search.action",method=RequestMethod.POST,produces="text/html;charset=UTF-8")
	@ResponseBody
	public String search(@RequestBody String params){
		
		/**
		  	{
			"currentIndex":1,
			"memuName":"汤"
			}
		 */
		//解析json 获取参数
		JSONObject object = JSON.parseObject(params);
		QueryPojo pojo = new QueryPojo();		
		pojo.setMenuName((String) object.get("menuName"));
		pojo.setCurrentIndex((Integer) object.get("currentIndex"));
		pojo.setCategory((String) object.get("category"));
		
		try {
			
			PageBean<Memu> searchMemu = service.searchMemu(pojo);
			
			pojo.setResult("success");
			
			return JSON.toJSONString(searchMemu);
			
		} catch (SolrServerException e) {
			e.printStackTrace();
			return "{result:fail}";		
		}
		
	}
	
}
