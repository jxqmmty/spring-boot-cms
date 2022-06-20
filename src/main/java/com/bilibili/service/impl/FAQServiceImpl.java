package com.bilibili.service.impl;

import java.util.List;

import com.bilibili.annotation.MyLog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bilibili.domain.FAQ;
import com.bilibili.mapper.FAQMapper;
import com.bilibili.query.FAQQuery;
import com.bilibili.service.IFAQService;
import com.bilibili.utils.QueryResult;

@Service
public class FAQServiceImpl implements IFAQService {
	
	@Autowired
	private FAQMapper faqMapper;
	
	@Override
	@MyLog(operation = "添加问题",type = 0)
	public void add(FAQ faq) {
		faqMapper.add(faq);
	}

	@Override
	@MyLog(operation = "修改问题",type = 1)
	public void update(FAQ faq) {
		faqMapper.update(faq);
	}

	@Override
	@MyLog(operation = "删除问题",type = 2)
	public void remove(Long id) {
		faqMapper.remove(id);
	}

	@Override
	@MyLog(operation = "根据id查询问题",type = 3)
	public FAQ loadById(Long id) {
		
		return faqMapper.loadById(id);
	}

	@Override
	@MyLog(operation = "根据全部问题",type = 3)
	public QueryResult<FAQ> loadAll(FAQQuery faqQuery) {
		
		Integer queryCount = faqMapper.queryCount(faqQuery);
		List<FAQ> data = faqMapper.loadAll(faqQuery);
		return new QueryResult<FAQ>(queryCount, data);
	}

	@Override
	public List<FAQ> list(FAQQuery faqQuery) {
		return faqMapper.list(faqQuery);
	}

}
