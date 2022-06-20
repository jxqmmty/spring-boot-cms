package com.bilibili.controller;

import java.util.List;
import java.util.Map;

import com.bilibili.domain.Feed;
import com.bilibili.service.IFeedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bilibili.domain.FAQ;
import com.bilibili.query.FAQQuery;
import com.bilibili.service.IArticleService;
import com.bilibili.service.IFAQService;

@Controller
@RequestMapping("/home")
public class HomeController {
	
	@Autowired
	private IArticleService articleService;
	
	@Autowired
	private IFAQService faqService;

	@Autowired
	private IFeedService feedService;
	
	@RequestMapping("/index")
	public String index() {
		return "home/index";
		
	}
	
	@RequestMapping("/findArticles")
	@ResponseBody
	public Map<String,Object> findArticles() {
		return articleService.findArticles();
		
	}
	
	@RequestMapping("/faq")
	public String faq() {
		return "home/FAQ";
	}
	
	@RequestMapping("/list")
	@ResponseBody
	public List<FAQ> list(FAQQuery faqQuery) {
		
		return faqService.list(faqQuery);
		
	}




	/**
	 * 前台展示轮播图
	 * @return
	 */
	@RequestMapping("/findimgs")
	@ResponseBody
	private List<Feed> findimgs() {
		List<Feed> findimgs = feedService.findimgs();
		return findimgs;
	}
}
