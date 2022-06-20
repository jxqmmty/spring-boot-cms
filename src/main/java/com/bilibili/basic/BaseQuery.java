package com.bilibili.basic;

import org.springframework.stereotype.Component;

/**
 * 分页查询类
 * @author Wjp
 *
 */
@Component
public class BaseQuery {

	private Integer currentPage = 1;
	
	private Integer pageSize = 5;
	
	public BaseQuery() {
		super();
	}
	
	public BaseQuery(Integer currentPage, Integer pageSize) {
		super();
		this.currentPage = currentPage;
		this.pageSize = pageSize;
	}
	
	public Integer getStart() {
		return (this.currentPage - 1) * this.pageSize;
	}
	
	public Integer getCurrentPage() {
		return currentPage;
	}
	
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	
	public Integer getPageSize() {
		return pageSize;
	}
	
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	
	
}
