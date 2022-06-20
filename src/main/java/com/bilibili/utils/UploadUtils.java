package com.bilibili.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.springframework.web.multipart.MultipartFile;

import com.bilibili.domain.Feed;

public class UploadUtils {
	
	public static Feed upload(Feed fdde,MultipartFile fileImg, HttpServletRequest req) throws Exception {
			// 获取文件输入流
			InputStream inputStream = fileImg.getInputStream();
			// 获取时间戳
			long timeMillis = System.currentTimeMillis();
			//获取文件名
			String filename = fileImg.getOriginalFilename();
			// 获取文件后缀
			String extension = FilenameUtils.getExtension(filename);
			// 拼接文件名
			String name = timeMillis + "." + extension;
			//获取上下文
			ServletContext context = req.getServletContext();
			// 获取真是路径
			String path = context.getRealPath("/upload");
			// 创建文件
			File file = new File(path,name);
			// 判断文件是否存在
			if (!file.getParentFile().exists()) {
				file.getParentFile().mkdirs();
			}
			// 获取文件输出流
			FileOutputStream outputStream = new FileOutputStream(file);
			// 用IOUtils工具类拷贝
			IOUtils.copy(inputStream, outputStream);
			// 关流
			outputStream.close();
			inputStream.close();
			// 把文件名赋值给fdde对象
			fdde.setName(name);
			// 把文件对象转化为字符串
			String path1 = file.toString();
			// 使用split方法分割字符串
			String[] split = path1.split("webapp");
			String path2 = split[1];
			// 替换路径里面的斜杠
			String replace = path2.replace("\\","/");
			// 把路径赋值给对象
			fdde.setPath(replace);
			return fdde;
		}
}

