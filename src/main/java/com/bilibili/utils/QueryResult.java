package com.bilibili.utils;

import java.util.List;

public class QueryResult<T> {
	
	private Integer totals;
	
	private List<T> data;

	public QueryResult() {
		super();
	}

	public QueryResult(Integer totals, List<T> data) {
		super();
		this.totals = totals;
		this.data = data;
	}

	public Integer getTotals() {
		return totals;
	}

	public void setTotals(Integer totals) {
		this.totals = totals;
	}

	public List<T> getData() {
		return data;
	}

	public void setData(List<T> data) {
		this.data = data;
	}
	
	

}
