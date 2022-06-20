package com.bilibili.mapper;

import java.util.List;

import com.bilibili.domain.Feed;
import com.bilibili.query.FeedQuery;

public interface FeedMapper {

		// 新增
		void add(Feed feed);
		
		// 修改
		void update(Feed feed);
		
		// 删除
		void remove(Long id);
		
		// 根据Id查询
		Feed loadById(Long id);
		
		// 查询所有
		List<Feed> loadAll(FeedQuery feedQuery);
		
		Integer queryCount(FeedQuery feedQuery);
}
