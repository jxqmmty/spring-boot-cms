package com.bilibili.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bilibili.domain.ArticleType;
import com.bilibili.mapper.ArticeTypeMapper;
import com.bilibili.service.IArticleTypeService;

@Service
public class ArticleTypeServiceImpl implements IArticleTypeService {
	
	@Autowired
	private ArticeTypeMapper articeTypeMapper;
	
	@Override
	public void add(ArticleType articleType) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(ArticleType articleType) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(Long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArticleType loadById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ArticleType> loadAll() {
		return articeTypeMapper.loadAll();
	}



}
