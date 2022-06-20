package com.bilibili.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bilibili.domain.FAQ;
import com.bilibili.query.FAQQuery;
import com.bilibili.service.IFAQService;
import com.bilibili.utils.AjaxResult;
import com.bilibili.utils.QueryResult;

@Controller
@RequestMapping("/system/faq")
public class FAQController {
	
	@Autowired
	private IFAQService faqService;
	
	@RequestMapping("/loadAll")
	@ResponseBody
	public QueryResult<FAQ> loadAll(FAQQuery faqQuery) {
		return faqService.loadAll(faqQuery);
		
	}
	
	
	
	@RequestMapping("/remove")
	@ResponseBody
	public AjaxResult remove(Long id) {
		try {
			faqService.remove(id);
			return new AjaxResult();
		} catch (Exception e) {
			return new AjaxResult("系统繁忙，删除失败", false);
		}
	}
	
	
	
	@RequestMapping("/addOrUpt")
	@ResponseBody
	public AjaxResult addOrUpt(FAQ faq) {
		try {
			if (faq.getId() == null) {
				faqService.add(faq);
			} else {
				faqService.update(faq);
			}
			return new AjaxResult();
		} catch (Exception e) {
			return new AjaxResult("服务器繁忙，请稍后再试！", false);
		}
	}
	
	
	
	
	
	
	
	@RequestMapping("/index")
	public String index() {
		return "/system/faq/faq";
		
	}
}
