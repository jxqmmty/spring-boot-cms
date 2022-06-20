package com.bilibili.service;

import java.util.List;

import com.bilibili.domain.FAQ;
import com.bilibili.query.FAQQuery;
import com.bilibili.utils.QueryResult;

public interface IFAQService {
	
	// 新增
	void add(FAQ faq);
	
	// 修改
	void update(FAQ faq);
	
	// 删除
	void remove(Long id);
	
	// 根据Id查询
	FAQ loadById(Long id);
	
	// 查询所有
	QueryResult<FAQ> loadAll(FAQQuery faqQuery);
	
	
	List<FAQ> list(FAQQuery faqQuery);
}
