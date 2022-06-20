package com.bilibili.controller;

import com.bilibili.domain.AdminLog;
import com.bilibili.domain.User;
import com.bilibili.query.AdminLogQuery;
import com.bilibili.service.ISystemService;
import com.bilibili.utils.AjaxResult;
import com.bilibili.utils.QueryResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/system")
public class SystemController {

	@Autowired
	private ISystemService systemService;

	@RequestMapping("/index")
	public String index() {
		return "system/index";

	}
	
	@RequestMapping("/home")
	public String home() {
		return "index";
		
	}
	




	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public String goLogin() {
		return "system/login";
	}

	@RequestMapping(value = "/login",method = RequestMethod.POST)
	@ResponseBody
	public AjaxResult login(User user, HttpSession session, String remember, HttpServletResponse resp){
		try {
			systemService.login(user, session, remember, resp);
			return new AjaxResult();
		} catch (RuntimeException e) {
			e.printStackTrace();
			// e.getMessage()：获取异常的提示语，此提示语可以在抛出异常时进行设置
			return new AjaxResult(e.getMessage(), false);
		}catch (Exception e) {
			e.printStackTrace();
			return new AjaxResult("系统繁忙，请稍后重试！", false);
		}
	}

	@RequestMapping("/logOut")
	public String logOut(HttpSession session) {
		session.invalidate();
		return "redirect:/system/login";
	}


	@RequestMapping("/logindex")
	public String logindex() {
		return "system/log/myLog";

	}

	@RequestMapping("/myLog")
	@ResponseBody
	public QueryResult<AdminLog> myLog(AdminLogQuery adminLogQuery){

		return systemService.loadAll(adminLogQuery);
	}

}
