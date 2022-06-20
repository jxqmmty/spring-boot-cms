package com.bilibili.mapper;

import java.util.List;

import com.bilibili.domain.User;
import com.bilibili.query.UserQuery;

public interface UserMapper {
	// 新增
	void add(User user);
	
	// 修改
	void update(User user);
	
	// 删除
	void remove(Long id);
	
	// 根据Id查询
	User loadById(Long id);
	
	// 查询所有
	List<User> loadAll(UserQuery userQuery);
	// 查询有多少条数据
	Integer queryCount(UserQuery userQuery);
	
	User loadByUsername(String username);
	
}
