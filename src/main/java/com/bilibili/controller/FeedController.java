package com.bilibili.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.bilibili.domain.Feed;
import com.bilibili.query.FeedQuery;
import com.bilibili.service.IFeedService;
import com.bilibili.utils.AjaxResult;
import com.bilibili.utils.QueryResult;

@Controller
@RequestMapping("/system/feed")
public class FeedController {
	
	@Autowired
	private IFeedService feedService;
	
	@RequestMapping("/loadAll")
	@ResponseBody
	public QueryResult<Feed> loadAll(FeedQuery feedQuery) {
		return feedService.loadAll(feedQuery);
	}
	
	@RequestMapping("/remove")
	@ResponseBody
	public AjaxResult remove(Long id, HttpServletRequest request) {
		try {
			feedService.remove(id,request);
			return new AjaxResult();
		} catch (Exception e) {
			return new AjaxResult("系统繁忙", false);
		}
	}
	
	@RequestMapping("/addOrUpt")
	@ResponseBody
	public AjaxResult addOrUpt(Feed feed, MultipartFile fileImg, HttpServletRequest request) {
		try {
			if (feed.getId() == null) {
				feedService.add(feed,fileImg,request);
			} else {
				feedService.update(feed,fileImg,request);
			}
			return new AjaxResult();
		} catch (Exception e) {
			return new AjaxResult("系统繁忙", false);
		}
	}
	

	
	@RequestMapping("/index")
	public String index() {
		return "system/feed/feed";
		
	}
}
