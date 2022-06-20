<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- Main CSS-->
  <link rel="stylesheet" type="text/css" href="/system/css/main.css">
  <!-- Font-icon css-->
  <link rel="stylesheet" type="text/css" href="/system/css/font-awesome.min.css">
	
	<title>CMS登陆</title>
</head>
<body>
	<section class="material-half-bg">
		<div class="cover"></div>
	</section>
	<section class="login-content">
	<div class="logo">
		<h1>cms后台登陆</h1>
	</div>
	<div class="login-box">
		<form class="login-form" method="post" action="/system/login" id="loginForm">
			<h3 class="login-head">
				<i class="fa fa-lg fa-fw fa-user"></i>登陆&emsp;<span id="loginMessage"></span>
			</h3>
			<div class="form-group">
				<label class="control-label">用户名</label> <input class="form-control"
					type="text" name="username" placeholder="用户名" autofocus>
			</div>
			<div class="form-group">
				<label class="control-label">密码</label> <input class="form-control"
					type="password" name="password" placeholder="密码">
			</div>
			<div class="form-group">
				<div class="utility">
					<div class="animated-checkbox">
						<label> <input type="checkbox" name="remember" value="1"><span
							class="label-text">记住我</span>
						</label>
					</div>
				</div>
			</div>
			<div class="form-group btn-container">
				<!-- button标签在form表单中默认是提交按钮，需要加上type="button" 才会变成普通按钮 -->
				<button type="button" class="btn btn-primary btn-block" id="loginButton">
					<i class="fa fa-sign-in fa-lg fa-fw"></i>登陆
				</button>
			</div>
		</form>
	</div>
	</section>
  
	<!-- Essential javascripts for application to work-->
  <script src="/system/js/jquery-3.3.1.min.js"></script>
  <script src="/system/js/popper.min.js"></script>
  <script src="/system/js/bootstrap.min.js"></script>
  <script src="/system/js/main.js"></script>
  <!-- The javascript plugin to display page loading on top-->
  <script src="/system/js/plugins/pace.min.js"></script>
  <!-- 引入jQuery的cookie插件 -->
  <script src="/system/js/plugins/jquery.cookie.js"></script>
  <!-- 引入jQuery的三个插件 -->
  <script src="/system/js/plugins/form-load.js"></script>
  <script src="/system/js/plugins/jquery-form.js"></script>
  <script src="/system/js/plugins/jquery.jdirk.js"></script>
  
  
  <script type="text/javascript">
  
  	function login(){
 		var data = $("#loginForm").serialize();
		$.post("/system/login", data, function(result){
			if(result.success){
				// 成功：跳转到后台首页
				location.href = "/system/index";
			}else {
				// 提示用户
				alert(result.message);
			}
		},"json")
  	}
  
  	$(function(){
  		// 给登录按钮绑定单击事件
  		$("#loginButton").click(function(){
  			login();
  		})
  		
  		// 键盘事件
  		// event.keyCode：键盘每个按键对应的值
  		$(window).keydown(function(event){
  		  if(event.keyCode == 13){
  			login();
  		  }
  		});
  		
  		var username = $.cookie("username");
  		var password = $.cookie("password");
  		// undefined是if判断假的一种
  		// undefined是得到false
  		if(username && password){
  			$("input[name=username]").val(username);
  			$("input[name=password]").val(password);
  			// prop设置存在属性   attr设置不存在属性
  			$("input[name=remember]").prop("checked", true);
  		}else {
  			$("#loginForm").clearForm();
  		}
  		
  	})
  
  </script>
	
</body>
</html>