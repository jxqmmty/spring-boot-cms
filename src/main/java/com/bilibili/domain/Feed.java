package com.bilibili.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.stereotype.Component;

@Component
public class Feed {
	private Long id;
	
	private String name;
	
	private String path;
	
	//创建时间
	// 从后端返回JSON到前端
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss", timezone="GMT+8")
	// 从前端传递时间字段到后端
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date createDate = new Date();
	// 是否开启
	private Boolean enable;

	public Feed() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Feed(Long id, String name, String path, Date createDate, Boolean enable) {
		super();
		this.id = id;
		this.name = name;
		this.path = path;
		this.createDate = createDate;
		this.enable = enable;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Boolean getEnable() {
		return enable;
	}

	public void setEnable(Boolean enable) {
		this.enable = enable;
	}

	@Override
	public String toString() {
		return "Feedbacks [id=" + id + ", name=" + name + ", path=" + path + ", createDate=" + createDate + ", enable="
				+ enable + "]";
	}

	
	
	
	
}
