package com.bilibili.mapper;

import java.util.List;

import com.bilibili.domain.FAQ;
import com.bilibili.query.FAQQuery;

public interface FAQMapper {
	
	// 新增
	void add(FAQ faq);
	
	// 修改
	void update(FAQ faq);
	
	// 删除
	void remove(Long id);
	
	// 根据Id查询
	FAQ loadById(Long id);
	
	// 查询所有
	List<FAQ> loadAll(FAQQuery faqQuery);
	// 查询有多少条数据
	Integer queryCount(FAQQuery faqQuery);
	
	List<FAQ> list(FAQQuery faqQuery);
}
