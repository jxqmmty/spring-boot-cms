package com.bilibili.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Article {
	
	private Long id;
	private String title;
	private String url;
	private Long typeId;
	private Integer clickCount = 0;
	private String content;
	private Boolean enable;
	
	private ArticleType articleType;
	
	// 从后端返回JSON到前端
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss", timezone="GMT+8")
	// 从前端传递时间字段到后端
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date createDate = new Date();
	
	public Article() {
		super();
	}
	
	
	public Article(Long id, String title, String url, Long typeId, Integer clickCount, String content, Boolean enable,
			ArticleType articleType, Date createDate) {
		super();
		this.id = id;
		this.title = title;
		this.url = url;
		this.typeId = typeId;
		this.clickCount = clickCount;
		this.content = content;
		this.enable = enable;
		this.articleType = articleType;
		this.createDate = createDate;
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
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Long getTypeId() {
		return typeId;
	}
	public void setTypeId(Long typeId) {
		this.typeId = typeId;
	}
	public Integer getClickCount() {
		return clickCount;
	}
	public void setClickCount(Integer clickCount) {
		this.clickCount = clickCount;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Boolean getEnable() {
		return enable;
	}
	public void setEnable(Boolean enable) {
		this.enable = enable;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}


	public ArticleType getArticleType() {
		return articleType;
	}


	public void setArticleType(ArticleType articleType) {
		this.articleType = articleType;
	}


	@Override
	public String toString() {
		return "Article [id=" + id + ", title=" + title + ", url=" + url + ", typeId=" + typeId + ", clickCount="
				+ clickCount + ", content=" + content + ", enable=" + enable + ", articleType=" + articleType
				+ ", createDate=" + createDate + "]";
	}
	
	
	
}
