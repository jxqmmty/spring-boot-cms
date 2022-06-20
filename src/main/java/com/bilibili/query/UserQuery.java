package com.bilibili.query;

import com.bilibili.basic.BaseQuery;
/**
 *  用户的高级查询条件类
 * @author Wjp
 *
 */
public class UserQuery extends BaseQuery{
	
	private String username;

	public UserQuery() {
		super();
	}

	public UserQuery(String username) {
		super();
		this.username = username;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	

}
