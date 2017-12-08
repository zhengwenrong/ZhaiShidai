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

	@RequestMapping("/login.action")
	public String userLogin(User user){
		
		
		try{
			userService.saveUser(user);
			
		}catch (Exception e) {
			return "redirect:login";
		
		}
		
		
		return "redirect:index";
	}
	
	
	
	/**
	 * 用户注册
	 * @param model
	 * @param user
	 * @return
	 */
	@RequestMapping("/register.action")
	public String userRegister(User user) {

		try {

			userService.saveUser(user);
			return "redirect:login";
		} catch (Exception e) {

			return "redirect:register";

		}

	}

	@RequestMapping("/toRegisterPage.action")
	public String toRegitsterPage() {

		return "register";
	}

	/**
	 * 检查用户ajax调用
	 * 
	 * @param account
	 */
	@RequestMapping(value = "/check.action", produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String checkUser(String username) {

		try {
			boolean result = userService.getCheckUser(username);

			return "{status:200,result:" + result + "}";

		} catch (Exception e) {

			return "{status:500,result:未知错误!}";
		}

	}

}
