package com.bilibili.service.impl;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bilibili.annotation.MyLog;
import com.bilibili.domain.AdminLog;
import com.bilibili.mapper.MyLogMapper;
import com.bilibili.query.AdminLogQuery;
import com.bilibili.utils.QueryResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.bilibili.constant.BaseConstant;
import com.bilibili.domain.User;
import com.bilibili.mapper.UserMapper;
import com.bilibili.service.ISystemService;

import java.util.List;

@Service
public class SystemServiceImpl implements ISystemService{

	@Autowired
	private UserMapper userMapper;

	@Autowired
	private MyLogMapper myLogMapper;
	
	@Override
	@MyLog(operation = "登陆",type = 4)
	public void login(User user, HttpSession session, String remember, HttpServletResponse resp) {
		System.out.println(user);
		String username = user.getUsername();
		String password = user.getPassword();
		if (StringUtils.isEmpty(username) || StringUtils.isEmpty(password)) {
			throw new RuntimeException("账号或密码不能为空！！！");
		}
		User byUsername = userMapper.loadByUsername(username);
		if (byUsername == null) {
			throw new RuntimeException("账号或密码错误！！！");
		}
		if (!password.equals(byUsername.getPassword())) {
			throw new RuntimeException("账号或密码错误！！！");
		}
		
		session.setAttribute(BaseConstant.USER_SESSION, byUsername);
		
		Cookie name = null;
		Cookie pass = null;
		
		if (remember != null) {
			name = new Cookie("username", username);
			pass = new Cookie("password", password);
			
			name.setMaxAge(60*60*24);
			pass.setMaxAge(60*60*24);
			
		} else {
			name = new Cookie("username", "");
			pass = new Cookie("password", "");
			
			name.setMaxAge(0);
			pass.setMaxAge(0);
		}
		name.setPath("/");
		pass.setPath("/");
		resp.addCookie(pass);
		resp.addCookie(name);
		
	}

	@Override
	public QueryResult<AdminLog> loadAll(AdminLogQuery adminLogQuery) {
		List<AdminLog> data = myLogMapper.loadAll(adminLogQuery);
		Integer count = myLogMapper.queryCount(adminLogQuery);
		return new QueryResult<AdminLog>(count,data);
	}

}
