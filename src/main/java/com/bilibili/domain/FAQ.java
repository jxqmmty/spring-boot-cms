package com.bilibili.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class FAQ {
	private Long id;
	//标题
	private String title;
	//内容
	private String content;
	//创建时间
	// 从后端返回JSON到前端
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss", timezone="GMT+8")
		// 从前端传递时间字段到后端
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date createDate = new Date();
	//问题排序
	private Integer orderBy;
	// 是否开启
	private Boolean enable;
	
	public FAQ() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FAQ(Long id, String title, String content, Date createDate, Integer orderBy, Boolean enable) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.createDate = createDate;
		this.orderBy = orderBy;
		this.enable = enable;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Integer getOrderBy() {
		return orderBy;
	}

	public void setOrderBy(Integer orderBy) {
		this.orderBy = orderBy;
	}

	public Boolean getEnable() {
		return enable;
	}

	public void setEnable(Boolean enable) {
		this.enable = enable;
	}

	@Override
	public String toString() {
		return "FAQ [id=" + id + ", title=" + title + ", content=" + content + ", createDate=" + createDate
				+ ", orderBy=" + orderBy + ", enable=" + enable + "]";
	}
	
	
}