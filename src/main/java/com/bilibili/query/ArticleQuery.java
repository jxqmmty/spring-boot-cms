package com.bilibili.query;

import com.bilibili.basic.BaseQuery;

/**
 * 文章模块的高级查询条件类
 * @author admin
 *
 */
public class ArticleQuery extends BaseQuery {
	
	private String title;
	
	private Long typeId;
	
	private Boolean enable;

	public ArticleQuery() {
		super();
	}

	public ArticleQuery(String title, Long typeId, Boolean enable) {
		super();
		this.title = title;
		this.typeId = typeId;
		this.enable = enable;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Long getTypeId() {
		return typeId;
	}

	public void setTypeId(Long typeId) {
		this.typeId = typeId;
	}

	public Boolean getEnable() {
		return enable;
	}

	public void setEnable(Boolean enable) {
		this.enable = enable;
	}

	@Override
	public String toString() {
		return "ArticleQuery [title=" + title + ", typeId=" + typeId + ", enable=" + enable + "]";
	}
	
}
