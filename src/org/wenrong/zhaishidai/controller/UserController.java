package org.wenrong.zhaishidai.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.wenrong.zhaishidai.pojo.User;
import org.wenrong.zhaishidai.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/login.action")
	public String userLogin(User user,HttpServletRequest request,HttpServletResponse response){
		
		try{
			
			User login = userService.login(user);
			
			if(login!=null) {
				
				request.getSession().setAttribute("user",login);
				Cookie cookie = new Cookie("usertoken",user.getUsertoken());
				response.addCookie(cookie);
			}
			
		}catch (Exception e) {
			return "redirect:login";
		
		}
		
		
		return "redirect:index";
	}
	
	/**
	 * 检查用户登陆状态
	 * @return
	 */
	@RequestMapping("/checkstatus.action")
	public String checkUserStatus(HttpServletRequest request,String usertoken) {
		
		User user = (User) request.getSession().getAttribute("user");
		
		System.out.println();
		
		
		
		return null;
		
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
