package com.bilibili.service.impl;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import com.bilibili.annotation.MyLog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bilibili.domain.Feed;
import com.bilibili.mapper.FeedMapper;
import com.bilibili.query.FeedQuery;
import com.bilibili.service.IFeedService;
import com.bilibili.utils.QueryResult;
import com.bilibili.utils.UploadUtils;


@Service
public class FeedServiceImpl implements IFeedService {
	
	@Autowired
	private FeedMapper feedMapper;
	
	@Override
	@MyLog(operation = "添加图片",type = 0)
	public void add(Feed feed, MultipartFile fileImg, HttpServletRequest request) throws Exception {
		// 调用工具类来上传图片
		Feed feed2 = UploadUtils.upload(feed, fileImg, request);
		feedMapper.add(feed2);
		
	}

	@Override
	@MyLog(operation = "修改图片",type = 1)
	public void update(Feed feed, MultipartFile fileImg, HttpServletRequest request) throws Exception{
		// 获取前端传过来的对象的id
		Long id = feed.getId();
		// 根据id查询数据库
		Feed feed2 = feedMapper.loadById(id);
		// 判断前端是否传了图片
		if (fileImg == null) {
			// 用户只修改是否开启
			feed2.setEnable(feed.getEnable());
			feedMapper.update(feed2);
		} else {
			// 获取数据对象里面的路径
			String feed2Name = feed2.getName();
			String name = "/" + feed2Name;
			ServletContext context = request.getServletContext();
			// 获取真是路径
			String path2 = context.getRealPath("/upload");
			File file = new File(path2,name);
			// 删除当前路径的文件
			file.delete();
			// 调用工具类来上传图片
			Feed feed3 = UploadUtils.upload(feed, fileImg, request);
			feedMapper.update(feed3);
		}
	}

	@Override
	@MyLog(operation = "删除图片",type = 2)
	public void remove(Long id, HttpServletRequest request) {
		// 先根据id查询
		Feed feed = feedMapper.loadById(id);
		// 获取数据对象里面的路径
		String feed2Name = feed.getName();
		// 路径不为空就删除路径下面的文件
		if (feed2Name != null) {
			String name = "/" + feed2Name;
			ServletContext context = request.getServletContext();
			// 获取真是路径
			String path2 = context.getRealPath("/upload");
			File file = new File(path2,name);
			file.delete();
		}
		// 调用删除方法
		feedMapper.remove(id);
	}

	@Override
	@MyLog(operation = "根据id查询图片",type = 3)
	public Feed loadById(Long id) {
		return feedMapper.loadById(id);
	}

	@Override
	@MyLog(operation = "查询全部图片",type = 3)
	public QueryResult<Feed> loadAll(FeedQuery feedQuery) {
		List<Feed> loadAll = feedMapper.loadAll(feedQuery);
		Integer queryCount = feedMapper.queryCount(feedQuery);
		return new QueryResult<Feed>(queryCount, loadAll);
	}

	@Override
	public List<Feed> findimgs() {
		FeedQuery feedQuery = new FeedQuery();
		List<Feed> imgs = feedMapper.loadAll(feedQuery);
		
		return imgs;
	}
	
}
