package com.bilibili.service;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.bilibili.domain.Feed;
import com.bilibili.query.FeedQuery;
import com.bilibili.utils.QueryResult;

public interface IFeedService {
	// 新增
	void add(Feed feed, MultipartFile fileImg, HttpServletRequest request) throws Exception;
		
	// 修改
	void update(Feed feed, MultipartFile fileImg, HttpServletRequest request) throws Exception;
		
	// 删除
	void remove(Long id, HttpServletRequest request);
		
	// 根据Id查询
	Feed loadById(Long id);
		
		// 查询所有
	QueryResult<Feed> loadAll(FeedQuery feedQuery);

	List<Feed> findimgs();
}
