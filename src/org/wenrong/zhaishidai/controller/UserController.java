package org.wenrong.zhaishidai.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.wenrong.zhaishidai.pojo.User;
import org.wenrong.zhaishidai.service.UserService;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/register.action")
	public String userRegister(Model model,User user){
		
		
		
		
		return "login";
	}
	
	@RequestMapping("/toRegisterPage.action")
	public String toRegitsterPage(){

		return "register";
	}
	
	/**
	 * 检查用户ajax调用
	 * @param account
	 */
	@RequestMapping("/check.action")
	@ResponseBody
	public void checkUser(@RequestBody String account){
		
		JSONObject object = JSON.parseObject(account);
		boolean checkUser = userService.getCheckUser(object.getString(""));
		
		
		
		
	}
	
	
}
