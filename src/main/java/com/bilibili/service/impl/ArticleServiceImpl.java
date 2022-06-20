package com.bilibili.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.bilibili.annotation.MyLog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bilibili.constant.BaseConstant;
import com.bilibili.domain.Article;
import com.bilibili.domain.ArticleType;
import com.bilibili.mapper.ArticeTypeMapper;
import com.bilibili.mapper.ArticleMapper;
import com.bilibili.query.ArticleQuery;
import com.bilibili.service.IArticleService;
import com.bilibili.utils.QueryResult;

@Service
public class ArticleServiceImpl implements IArticleService {

	@Autowired
	private ArticleMapper articleMapper;
	
	@Override
	@MyLog(operation = "添加文章",type = 0)
	public void add(Article article) {
		articleMapper.add(article);
	}

	@Override
	@MyLog(operation = "修改文章",type = 1)
	public void update(Article article) {
		articleMapper.update(article);
	}

	@Override
	@MyLog(operation = "根据id删除文章",type = 2)
	public void remove(Long id) {
		articleMapper.remove(id);
	}

	@Override
	@MyLog(operation = "根据id查询文章",type = 3)
	public Article loadById(Long id) {
		return articleMapper.loadById(id);
	}

	@Override
	@MyLog(operation = "查询全部文章",type = 3)
	public QueryResult<Article> loadAll(ArticleQuery articleQuery) {
		
		 List<Article> data = articleMapper.loadAll(articleQuery);
		 
		 Integer totals = articleMapper.queryCount(articleQuery);

		return new QueryResult<Article>(totals, data);
	}

	@Override
	public Map<String, Object> findArticles() {
	Map<String,Object> map = new HashMap<String, Object>();
	
	List<Article> technology = articleMapper.findArticleByCode(BaseConstant.TECHNOLOGY);
	List<Article> industry = articleMapper.findArticleByCode(BaseConstant.INDUSTRY);
	List<Article> subject = articleMapper.findArticleByCode(BaseConstant.SUBJECT);
	map.put("technologys", technology);
	map.put("industrys", industry);
	map.put("subjects", subject);
		return map;
	}

}
