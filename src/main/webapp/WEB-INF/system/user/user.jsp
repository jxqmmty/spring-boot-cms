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
					        <label for="username">输入用户名：</label>
					        <input type="text" class="form-control" name="username" id="username">
					      </div>
					      <button type="button" id="queryButton" class="btn btn-success" style="margin-left: 20px">查询</button>
					    </form>
					  </div>	
					</div>
					<!-- 高级查询模态框结束 -->
					<!-- 删除时的确认模态框 -->
					<div class="modal fade" id="delModal">
					  <div class="modal-dialog">
					    <div class="modal-content message_align">
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">×</span>
					        </button>
					      </div>
					      <div class="modal-body">
					        <h5 style="color: red">您确认要删除吗？</h5>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					        <a href="javascript:void(0);" id="delModelButton" class="btn btn-success">确定</a>
					      </div>
					    </div><!-- /.modal-content -->
					  </div><!-- /.modal-dialog -->
					</div>
					<!-- 删除模态框结束 -->
					<!-- 添加或者修改的模态框 -->
					<div class="modal fade" id="saveModal">
					  <div class="modal-dialog">
					    <div class="modal-content message_align">
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">×</span>
					        </button>
					      </div>
					      <div class="modal-body">
					        <form action="/system/user/addOrUpt" method="post" class="form-horizontal" id="saveForm">
					          <input type="hidden" name="id">
					          <div class="form-group row">
					            <label for="username" class="control-label col-md-3">用户名</label>
					            <div class="col-md-9">
					              <input class="form-control" type="text" name="username">
					            </div>
					          </div>
					          <div class="form-group row">
					            <label for="password" class="control-label col-md-3">密码</label>
					            <div class="col-md-9">
					              <input class="form-control" type="text" name="password">
					            </div>
					          </div>
							  <div class="form-group row">
					            <label for="nickname" class="control-label col-md-3">昵称</label>
					            <div class="col-md-9">
					              <input class="form-control" type="text" name="nickname">
					            </div>
					          </div>
					        </form>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					        <a href='javascript:void(0);' id="saveButton" class="btn btn-success" >确定</a>
					      </div>
					    </div>
					  </div>
					</div>
					<!-- 添加修改的模态框结束 -->
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
		    	    ajaxData: '/system/user/loadAll',
		    	    ajaxType: 'POST',
		    	 	// 开启分页
	    		    supportAjaxPage:true,
	    		    // 设置分页两个参数传递的key值
	    		    currentPageKey:"currentPage",
	    		    pageSizeKey:"pageSize",
	    		    
	    		    // 改变初次进入页面时的当前显示条数
	    		    pageSize:5,
	    		    // 改变页面的显示条数候选项
	    		    sizeData:[5,10,15,20,30],
	    		    height: '100%',
		    	    columnData: [
		    	        {
		    	            key: 'username',
		    	            text: '用户名'
		    	        },{
		    	            key: 'password',
		    	            text: '密码'
		    	        },{
		    	            key: 'nickname',
		    	            text: '昵称'
		    	        },{
		    	        	  key: 'id',
		    	        	    text: '操作&emsp;<a style="color:green" class="addButton" href="javascript:void(0);">添加</a>',
		    	        	    align: 'center',
		    	        	        //cell：当前字段的值    row：当前行的数据，当前对象   index：当前对象的下标   key：enable
		    	        	    template: function(cell, row, index, key){
		    	        	          return "<a style='color:red' href='#;' data-id='"+cell+"'>删除</a>&emsp;"
		    	        	            +"<a style='color:#337ab7' data-row='"+JSON.stringify(row)+"' href='#'>修改</a>";
		    	        	      }
		    	        	}
		    	    ]
		    	});
	    		
	    		
	    		
	    		// 高级查询
		    	$("#queryButton").click(function() {
					var data = $("#queryForm").serializeObject()
					GridManager.setQuery("demo-baseCode",data); 

				})
	    		
				// 事件委托到a标签
				$("body").on("click","a[data-id]",function(){
					// 获取当前行id的值
					var id = $(this).data("id");
					// 打开模态框
					$("#delModal").modal("show");
					// 关闭单击事件
					$("#delModelButton").off("click");
					// 给删除模态框的确定按钮绑定单击事件
					$("#delModelButton").click(function() {
						// 发送请求
						$.get("/system/user/remove","id="+id,function(result){
							if (result.success) {
								// 关闭模态框
								$("#delModal").modal("hide");
								// 刷新列表
								GridManager.refreshGrid("demo-baseCode");
							} else {
								alelt(result.message);
							}
						})
					})
					
				})
				
				// 修改回显的数据
				$("body").on("click","a[data-row]",function(){
					// 获取当前行数据
					var data = $(this).data("row");
					// 清空表单
					$("#saveForm").resetForm();
					// 清空隐藏域
					$("input[name=id]").val("");
					// 设置表单数据
					$("#saveForm").setForm(data);
					// 打开模态框
					$("#saveModal").modal("show");
					
				})
				
				
				$("#saveButton").click(function() {
					$("#saveForm").ajaxSubmit({
						success:function(result){
							if (result.success) {
								// 关闭模态框
								$("#saveModal").modal("hide");
								// 刷新列表
								GridManager.refreshGrid("demo-baseCode");
							} else {
								alelt(result.message);
							}
						}
					})
				})
				
				$("body").on("click",".addButton",function(){
					// 清空表单
					$("#saveForm").resetForm();
					// 清空隐藏域
					$("input[name=id]").val("");
					// 打开模态框
					$("#saveModal").modal("show");
				})
				
	    		
	    		
			})
	    
	    
	    </script>
  	</body>
</html>