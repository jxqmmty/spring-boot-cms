<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
    	<title>CMS系统欢迎您</title>
    	<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<!-- Main CSS-->
    	<link rel="stylesheet" type="text/css" href="/system/css/main.css">
    	<!-- Font-icon css-->
    	<link rel="stylesheet" type="text/css" href="/system/css/font-awesome.min.css">
    	<!-- 引入girdmanager的css -->
    	<link rel="stylesheet" href="/system/gridmanager/css/gm.css">
    	<!-- 引入gridmanager的js -->
    	<script type="text/javascript" src="/system/gridmanager/js/gm.js"></script>
	</head>
  	<body class="app sidebar-mini">
    	<!-- 导航条-->
    	<header class="app-header"><a class="app-header__logo" href="index.html">源码时代</a>
      		<a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
      		<!-- 导航条右边菜单-->
      		<ul class="app-nav">
	        	<!-- 用户菜单-->
	        	<li class="dropdown">
	        		<a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu">
	        		<i class="fa fa-user fa-lg"></i></a>
	          		<ul class="dropdown-menu settings-menu dropdown-menu-right">
	            		<li><a class="dropdown-item" href="/system/logOut">
	            		<i class="fa fa-sign-out fa-lg"></i> 退出</a></li>
	          		</ul>
	        	</li>
      		</ul>
    	</header>
    	<!-- Sidebar menu-->
    	<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    
    	<!-- 侧边栏 -->
    	<aside class="app-sidebar">
      		<div class="app-sidebar__user">
      			<img class="app-sidebar__user-avatar" width="48px" height="48px" src="/system/images/m1.jpg" alt="User Image">
        		<div>
          			<p class="app-sidebar__user-name">王天霸</p>
        		</div>
      		</div>
      		<ul class="app-menu">
	        	<li>
	        		<a class="app-menu__item active" href="/system/article/index">
	        			<i class="app-menu__icon fa fa-dashboard"></i>
	        			<span class="app-menu__label">文章管理</span>
	        		</a>
	        	</li>
	        	<li>
	        		<a class="app-menu__item active" href="/system/user/index">
	        			<i class="app-menu__icon fa fa-dashboard"></i>
	        			<span class="app-menu__label">用户管理</span>
	        		</a>
	        	</li>
	        	<li>
	        		<a class="app-menu__item active" href="/system/faq/index">
	        			<i class="app-menu__icon fa fa-dashboard"></i>
	        			<span class="app-menu__label">常见问题</span>
	        		</a>
	        	</li>
				<li>
					<a class="app-menu__item active" href="/system/feed/index">
						<i class="app-menu__icon fa fa-dashboard"></i>
						<span class="app-menu__label">轮播图管理</span>
					</a>
				</li>

				<li>
					<a class="app-menu__item active" href="/system/logindex">
						<i class="app-menu__icon fa fa-dashboard"></i>
						<span class="app-menu__label">日志管理</span>
					</a>
				</li>
	        	
      		</ul>
    	</aside>
		
    	<!-- 中间显示内容的 -->
    	<main class="app-content">
	    	<!-- 列表展示 -->
	    	<div class="row app-title">
	    		<div class="col-md-12">
	    			<!-- 高级查询 -->
					<div class="row app-title">
					  <div class="col-md-12">
					    <!-- 表单 -->
					    <form id="queryForm" class="form-inline">
					      <div class="form-group">
					        <label for="userName">输入用户名：</label>
					        <input type="text" class="form-control" name="userName" id="userName">
					      </div>
					      <button type="button" id="queryButton" class="btn btn-success" style="margin-left: 20px">查询</button>
					    </form>
					  </div>	
					</div>
					<!-- 高级查询模态框结束 -->


	    			<!-- 存放table列表 -->
	    			<table id='table-demo-baseCode'></table>
	    		</div>	
	    	</div>
    	</main>
	    <!-- Essential javascripts for application to work-->
	    <script src="/system/js/jquery-3.3.1.min.js"></script>
	    <script src="/system/js/popper.min.js"></script>
	    <script src="/system/js/bootstrap.min.js"></script>
	    <script src="/system/js/main.js"></script>
	    <!-- The javascript plugin to display page loading on top-->
	    <script src="/system/js/plugins/pace.min.js"></script>
	    <script src="/system/js/plugins/form-load.js"></script>
	    <script src="/system/js/plugins/jquery.jdirk.js"></script>
	    <script src="/system/js/plugins/jquery-form.js"></script>
	    
	    <script type="text/javascript">
	    	$(function() {
	    		document.querySelector('#table-demo-baseCode').GM({
		    	    gridManagerName: 'demo-baseCode',
		    	    ajaxData: '/system/myLog',
		    	    ajaxType: 'POST',
		    	 	// 开启分页
	    		    supportAjaxPage:true,
	    		    // 设置分页两个参数传递的key值
	    		    currentPageKey:"currentPage",
	    		    pageSizeKey:"pageSize",
	    		    
	    		    // 改变初次进入页面时的当前显示条数
	    		    pageSize:15,
	    		    // 改变页面的显示条数候选项
	    		    sizeData:[5,10,15,20,30],
	    		    height: '100%',
		    	    columnData: [
		    	        {
		    	            key: 'userId',
		    	            text: '用户id'
		    	        },{
		    	            key: 'userName',
		    	            text: '用户名'
		    	        },{
		    	            key: 'loginip',
		    	            text: 'ip'
		    	        },{
							key: 'type',
							text: '操作类型'
						},{
							key: 'url',
							text: '接口路径'
						},{
							key: 'operation',
							text: '操作'
						},{
							key: 'createtime',
							text: '操作时间'
						},{
							key: 'remark',
							text: '备注'
						}
		    	    ]
		    	});

	    		// 高级查询
		    	$("#queryButton").click(function() {
					var data = $("#queryForm").serializeObject()
					GridManager.setQuery("demo-baseCode",data); 

				})

	    		
			})
	    
	    
	    </script>
  	</body>
</html>