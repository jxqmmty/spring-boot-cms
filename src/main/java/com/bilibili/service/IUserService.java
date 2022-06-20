package com.bilibili.service;


import com.bilibili.domain.User;
import com.bilibili.query.UserQuery;
import com.bilibili.utils.QueryResult;

public interface IUserService {
	// 新增
	void add(User user);
	
	// 修改
	void update(User user);
	
	// 删除
	void remove(Long id);
	
	// 根据Id查询
	User loadById(Long id);
	
	// 查询所有
	QueryResult<User> loadAll(UserQuery userQuery);
}
