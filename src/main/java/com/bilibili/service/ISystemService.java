package com.bilibili.service;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bilibili.domain.AdminLog;
import com.bilibili.domain.User;
import com.bilibili.query.AdminLogQuery;
import com.bilibili.utils.QueryResult;

import java.util.List;

public interface ISystemService {

	void login(User user, HttpSession session, String remember, HttpServletResponse resp);

	QueryResult<AdminLog> loadAll(AdminLogQuery adminLogQuery);
	
	

}
