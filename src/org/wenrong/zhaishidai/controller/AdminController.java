package org.wenrong.zhaishidai.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.wenrong.zhaishidai.pojo.Memu;
import org.wenrong.zhaishidai.pojo.PageBean;
import org.wenrong.zhaishidai.pojo.QueryPojo;
import org.wenrong.zhaishidai.service.MemuService;
import org.wenrong.zhaishidai.utils.UUIDUtils;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private MemuService memuService;
	
	@RequestMapping("/index.action")
	public String toAdminPage(Model model) {
	
		return "admin";
	}

	@RequestMapping("/toUploadMemuPage.action")
	public String toUploadMemuPage(Model model) {
		
		
		
		return "upload_memu";
	}
	
	/**
	 * 获取分页数据
	 * @param model
	 * @param query
	 * @return
	 */
	@RequestMapping("/toListMemuPage.action")
	public String toListMemuPage(Model model,QueryPojo query) {
		
		PageBean<Memu> page = memuService.getMemuPage(query);
		
		model.addAttribute("page", page);
		model.addAttribute("query", query);
		
		return "list_menu";
	}
	
	@RequestMapping("/saveMemu.action")
	public String saveMemu(Model model,Memu memu,MultipartFile uploadimage,HttpServletRequest request) throws Exception {
		
		
		String path = request.getSession().getServletContext().getRealPath("/uploadimages");
		File file = new File(path);
		
		String fileName = UUIDUtils.getRandomStr();
		String ext = uploadimage.getOriginalFilename().substring(uploadimage.getOriginalFilename().indexOf("."));	
		File img = new File(file.getPath(),fileName+ext);
		uploadimage.transferTo(img);
	
		memu.setCategory(memu.getCategort_1()+"-"+memu.getCategort_2());
		memu.setImageurl(fileName+ext);
		memu.setId(UUIDUtils.getRandomStr());
		memuService.saveMemu(memu);
	
		return "upload_memu";
	}
	
	
}
