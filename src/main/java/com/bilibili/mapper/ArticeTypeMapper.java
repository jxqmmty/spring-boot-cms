package com.bilibili.mapper;

import java.util.List;

import com.bilibili.domain.ArticleType;

public interface ArticeTypeMapper {
	// 新增
	void add(ArticleType articleType);
	
	// 修改
	void update(ArticleType articleType);
	
	// 删除
	void remove(Long id);
	
	// 根据Id查询
	ArticleType loadById(Long id);
	
	// 查询所有
	List<ArticleType> loadAll();
}
