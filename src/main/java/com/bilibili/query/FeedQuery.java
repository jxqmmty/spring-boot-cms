package com.bilibili.query;

import com.bilibili.basic.BaseQuery;
import org.springframework.stereotype.Component;

@Component
public class FeedQuery extends BaseQuery{
	
	private String name;
	
	private Boolean enable;

	public FeedQuery() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FeedQuery(String name, Boolean enable) {
		super();
		this.name = name;
		this.enable = enable;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Boolean getEnable() {
		return enable;
	}

	public void setEnable(Boolean enable) {
		this.enable = enable;
	}
	
	


}
