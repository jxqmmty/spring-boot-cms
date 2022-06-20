package com.bilibili.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bilibili.domain.User;
import com.bilibili.query.UserQuery;
import com.bilibili.service.IUserService;
import com.bilibili.utils.AjaxResult;
import com.bilibili.utils.QueryResult;

@Controller
@RequestMapping("/system/user")
public class UserController {
	@Autowired
	private IUserService userService;
	
	@RequestMapping("/loadAll")
	@ResponseBody
	public QueryResult<User> loadAll(UserQuery userQuery) {
		return userService.loadAll(userQuery);
	}
	
	@RequestMapping("/remove")
	@ResponseBody
	public AjaxResult remove(Long id) {
		try {
			userService.remove(id);
			return new AjaxResult();
		} catch (Exception e) {
			e.getLocalizedMessage();
			return new AjaxResult("删除失败，请稍后重试！！！！",false);
		}
		
	}
	
	
	@RequestMapping("/addOrUpt")
	@ResponseBody
	public AjaxResult addOrUpt(User user) {
		try {
			if (user.getId() == null) {
				userService.add(user);
			} else {
				userService.update(user);
			}
			return new AjaxResult();
			
		} catch (Exception e) {
			e.getLocalizedMessage();
			return new AjaxResult("服务器繁忙，请稍后重试！！！！",false);
		}
		
	}
	
	
	@RequestMapping("/index")
	public String index() {
		
		return "system/user/user";
	}
}
