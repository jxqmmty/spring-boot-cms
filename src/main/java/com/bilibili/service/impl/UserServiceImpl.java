package com.bilibili.service.impl;

import java.util.List;

import com.bilibili.annotation.MyLog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bilibili.domain.User;
import com.bilibili.mapper.UserMapper;
import com.bilibili.query.UserQuery;
import com.bilibili.service.IUserService;
import com.bilibili.utils.QueryResult;

@Service
public class UserServiceImpl implements IUserService {

	@Autowired
	private UserMapper userMapper;
	
	@Override
	@MyLog(operation = "添加用户",type = 0)
	public void add(User user) {
		userMapper.add(user);
	}

	@Override
	@MyLog(operation = "修改用户",type = 1)
	public void update(User user) {
		userMapper.update(user);
		
	}

	@Override
	@MyLog(operation = "删除用户",type = 2)
	public void remove(Long id) {
		userMapper.remove(id);
		
	}

	@Override
	@MyLog(operation = "根据id查询用户",type = 3)
	public User loadById(Long id) {
		return userMapper.loadById(id);
	}

	@Override
	@MyLog(operation = "查询所有用户",type = 3)
	public QueryResult<User> loadAll(UserQuery userQuery) {
		List<User> data = userMapper.loadAll(userQuery);
		Integer count = userMapper.queryCount(userQuery);
		return new QueryResult<User>(count, data);
		
	}

}
