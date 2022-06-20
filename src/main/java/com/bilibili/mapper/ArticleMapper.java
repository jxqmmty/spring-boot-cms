package com.bilibili.mapper;

import java.util.List;

import com.bilibili.domain.Article;
import com.bilibili.query.ArticleQuery;

public interface ArticleMapper {
	// 新增
	void add(Article article);
	
	// 修改
	void update(Article article);
	
	// 删除
	void remove(Long id);
	
	// 根据Id查询
	Article loadById(Long id);
	
	// 查询所有
	List<Article> loadAll(ArticleQuery articleQuery);
	// 查询有多少条数据
	Integer queryCount(ArticleQuery articleQuery);
	
	List<Article> findArticleByCode(String code);
}
