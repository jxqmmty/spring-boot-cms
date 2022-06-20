package com.bilibili.query;

import com.bilibili.basic.BaseQuery;

public class FAQQuery extends BaseQuery{
	
	private String title;
	
	private Boolean enable;

	public FAQQuery() {
		super();
	}

	public FAQQuery(String title, Boolean enable) {
		super();
		this.title = title;
		this.enable = enable;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Boolean getEnable() {
		return enable;
	}

	public void setEnable(Boolean enable) {
		this.enable = enable;
	}
	
	
	
}
