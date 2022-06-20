package com.bilibili.service;

import java.util.Map;

import com.bilibili.domain.Article;
import com.bilibili.query.ArticleQuery;
import com.bilibili.utils.QueryResult;

public interface IArticleService {
	// 新增
		void add(Article article);
		
		// 修改
		void update(Article article);
		
		// 删除
		void remove(Long id);
		
		// 根据Id查询
		Article loadById(Long id);
		
		// 查询所有
		QueryResult<Article> loadAll(ArticleQuery articleQuery);
		
		Map<String, Object> findArticles();
}
