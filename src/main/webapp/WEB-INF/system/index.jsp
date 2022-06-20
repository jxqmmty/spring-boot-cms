<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
    	<title>CMS系统欢迎你</title>
    	<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<!-- Main CSS-->
    	<link rel="stylesheet" type="text/css" href="/system/css/main.css">
    	<!-- Font-icon css-->
    	<link rel="stylesheet" type="text/css" href="/system/css/font-awesome.min.css">
  	</head>
  	<body class="app sidebar-mini">
    	<!-- 导航条-->
		<header class="app-header">
    		<a class="app-header__logo" href="index.html">源码时代</a>
			<a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
			<!-- 导航条右边菜单 -->
      		<ul class="app-nav">
        		<!-- 用户菜单 -->
       	 		<li class="dropdown">
        			<a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu">
        			<i class="fa fa-user fa-lg"></i></a>
          			<ul class="dropdown-menu settings-menu dropdown-menu-right">
            			<li>
            				<a class="dropdown-item" href="/system/logOut">
            				<i class="fa fa-sign-out fa-lg"></i> 退出 </a>
            			</li>
          			</ul>
        		</li>
      		</ul>
		</header>
    	<!-- 侧边菜单 -->
    	<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    	<aside class="app-sidebar">
      		<div class="app-sidebar__user">	
      			<img class="app-sidebar__user-avatar" width="48px" height="48px" src="/system/images/m1.jpg" alt="User Image">
        		<div>
          			<p class="app-sidebar__user-name">John Doe</p>
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
    	<!-- 中间内容区域 -->
    	<main class="app-content">
      		<div class="app-title">
        		<div>
          			<h1><i class="fa fa-dashboard"></i> Dashboard</h1>
          			<p>A free and open source Bootstrap 4 admin template</p>
        		</div>
        		<ul class="app-breadcrumb breadcrumb">
          			<li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          			<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
        		</ul>
      		</div>
      		<!-- 第一行 -->
      		<div class="row">
        		<div class="col-md-6 col-lg-3">
          			<div class="widget-small primary coloured-icon"><i class="icon fa fa-users fa-3x"></i>
            			<div class="info">
              				<h4>Users</h4>
              				<p><b>5</b></p>
            			</div>
          			</div>
        		</div>
        		<div class="col-md-6 col-lg-3">
          			<div class="widget-small info coloured-icon"><i class="icon fa fa-thumbs-o-up fa-3x"></i>
            			<div class="info">
			            	<h4>Likes</h4>
			              	<p><b>25</b></p>
            			</div>
          			</div>
        		</div>
        		<div class="col-md-6 col-lg-3">
          			<div class="widget-small warning coloured-icon"><i class="icon fa fa-files-o fa-3x"></i>
            			<div class="info">
              				<h4>Uploades</h4>
              				<p><b>10</b></p>
            			</div>
          			</div>
        		</div>
        		<div class="col-md-6 col-lg-3">
          			<div class="widget-small danger coloured-icon"><i class="icon fa fa-star fa-3x"></i>
            			<div class="info">
              				<h4>Stars</h4>
              				<p><b>500</b></p>
            			</div>
          			</div>
        		</div>
      		</div>
      		<!-- 第二行 -->
      		<div class="row">
        		<div class="col-md-6">
          			<div class="tile">
            			<h3 class="tile-title">Monthly Sales</h3>
            			<div class="embed-responsive embed-responsive-16by9">
              				<canvas class="embed-responsive-item" id="lineChartDemo"></canvas>
            			</div>
          			</div>
        		</div>
        		<div class="col-md-6">
          			<div class="tile">
            			<h3 class="tile-title">Support Requests</h3>
            			<div class="embed-responsive embed-responsive-16by9">
              				<canvas class="embed-responsive-item" id="pieChartDemo"></canvas>
            			</div>
          			</div>
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
    	<!-- Page specific javascripts-->
    	<script type="text/javascript" src="/system/js/plugins/chart.js"></script>
    	<script type="text/javascript">
      		var data = {
      			labels: ["January", "February", "March", "April", "May"],
      			datasets: [
	      			{
	      				label: "My First dataset",
	      				fillColor: "rgba(220,220,220,0.2)",
	      				strokeColor: "rgba(220,220,220,1)",
	      				pointColor: "rgba(220,220,220,1)",
	      				pointStrokeColor: "#fff",
	      				pointHighlightFill: "#fff",
	      				pointHighlightStroke: "rgba(220,220,220,1)",
	      				data: [65, 59, 80, 81, 56]
	      			},
	      			{
		      			label: "My Second dataset",
		      			fillColor: "rgba(151,187,205,0.2)",
		      			strokeColor: "rgba(151,187,205,1)",
		      			pointColor: "rgba(151,187,205,1)",
		      			pointStrokeColor: "#fff",
		      			pointHighlightFill: "#fff",
		      			pointHighlightStroke: "rgba(151,187,205,1)",
		      			data: [28, 48, 40, 19, 86]
	      			}
      			]
      		};
      		var pdata = [
	      		{
	      			value: 300,
	      			color: "#46BFBD",
	      			highlight: "#5AD3D1",
	      			label: "Complete"
      			},
		      	{
		      		value: 50,
		      		color:"#F7464A",
		      		highlight: "#FF5A5E",
		      		label: "In-Progress"
		      	}
      		]
      
      		var ctxl = $("#lineChartDemo").get(0).getContext("2d");
      		var lineChart = new Chart(ctxl).Line(data);
      
      		var ctxp = $("#pieChartDemo").get(0).getContext("2d");
      		var pieChart = new Chart(ctxp).Pie(pdata);
    	</script>
    	<!-- Google analytics script-->
    	<script type="text/javascript">
      		if(document.location.hostname == 'pratikborsadiya.in') {
      			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      			ga('create', 'UA-72504830-1', 'auto');
      			ga('send', 'pageview');
      		}
    	</script>
	</body>
</html>