package com.bilibili.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bilibili.domain.Article;
import com.bilibili.domain.ArticleType;
import com.bilibili.query.ArticleQuery;
import com.bilibili.service.IArticleService;
import com.bilibili.service.IArticleTypeService;
import com.bilibili.utils.AjaxResult;
import com.bilibili.utils.QueryResult;

@Controller
@RequestMapping("/system/article")
public class ArticleController {
	
	@Autowired
	private IArticleService articleService;
	
	@Autowired
	private IArticleTypeService articleTypeService;
	
	/**
	 * 查询接口
	 * @return
	 */
	@RequestMapping("/loadAll")
	@ResponseBody
	public QueryResult<Article> loadAll(ArticleQuery articleQuery) {
		
		QueryResult<Article> loadAll = articleService.loadAll(articleQuery);
		
		return loadAll;
	}
	
	
	
	
	/**
	 * 展示页面接口
	 * @return
	 */
	@RequestMapping("/index")
	public String index(Model model) {
		List<ArticleType> articleTypes = articleTypeService.loadAll();
		model.addAttribute("articleTypes", articleTypes);
		
		return "system/article/article";
	}
	
	
	@RequestMapping("/remove")
	@ResponseBody
	public AjaxResult remove(Long id) {
		try {
			articleService.remove(id);
			return new AjaxResult();
		} catch (Exception e) {
			e.getLocalizedMessage();
			 return new AjaxResult("删除失败，请稍后重试！！！！", false);
		}
		
	}
	
	@RequestMapping("/addOrUpt")
	@ResponseBody
	public AjaxResult addOrUpt(Article article) {
		try {
			if (article.getId() == null) {
				articleService.add(article);
			} else {
				articleService.update(article);
			}
			return new AjaxResult();
		} catch (Exception e) {
			e.getLocalizedMessage();
			 return new AjaxResult("操作失败，请稍后重试！！！！", false);
		}
		
	}
	
	

}
