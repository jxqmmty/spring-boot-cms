package com.bilibili.domain;

public class ArticleType {
	
	private Long id;
	
	private String name;
	
	private String code;

	public ArticleType() {
		super();
	}

	public ArticleType(Long id, String name, String code) {
		super();
		this.id = id;
		this.name = name;
		this.code = code;
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

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	@Override
	public String toString() {
		return "ArticleType [id=" + id + ", name=" + name + ", code=" + code + "]";
	}
	
}
