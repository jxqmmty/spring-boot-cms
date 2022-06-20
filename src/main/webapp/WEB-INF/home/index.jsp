<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="renderer" content="webkit">
		<title></title>
		
		<link rel="stylesheet" type="text/css" href="/home/css/normalize-8.0.0.css" /><link rel="stylesheet" type="text/css" href="/home/css/normalize-8.0.0-plus_20181022.css" />
		<link rel="stylesheet" type="text/css" href="/home/css/basic(PC)_20190712.css "/>
		
		<script src="/home/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="/home/css/swiper.min.css "/>
		
		<link rel="stylesheet" type="text/css" href="/home/css/categoriesColors(PC)_20181204.css"/>
		<link rel="stylesheet" type="text/css" href="/home/css/header(PC)_20181022.css"/>
		<link rel="stylesheet" type="text/css" href="/home/css/footer(PC)_20181022.css"/>
		<link rel="stylesheet" type="text/css" href="/home/css/side-bar(PC)_20190515.css"/>
		<link rel="stylesheet" type="text/css" href="/home/css/index.css "/>
	</head>
	<body class="flex-box">
		<div class="frame header" id="header_banner"><div class="container" style="background-image: url(/home/img/header_ad.png)"><img src="/home/img/header_ad.png" style="opacity: 0" /></div></div><div class="frame header" id="header_wx-wb"><div class="panel flex-box"><div>源码时代一家口碑超好IT培训机构</div><div><div class="wx">官方微信</div>|<div class="wb">官方微博</div>|<a target="_blank" href="about-us.html">关于我们</a></div></div></div><div class="frame header" id="header_navigator"><div class="panel flex-box"><div class="logo_n_regions flex-box"><a class="logo" href="index.html"><img src="/home/img/header_logo.png" /></a><div class="regions flex-box"><a class="wrapper flex-box activated" style="background-image: url(/home/img/header_region_all.png)"><span class="text">全国校区</span></a><div class="splitter"></div><a class="wrapper flex-box" style="background-image: url(/home/img/header_region_cd.png)"><span class="text">成都校区</span></a><div class="splitter"></div><a class="wrapper flex-box" style="background-image: url(/home/img/header_region_cq.png)"><span class="text">重庆校区</span></a><div class="splitter"></div><a class="wrapper flex-box" style="background-image: url(/home/img/header_region_wh.png)"><span class="text">武汉校区</span></a></div></div><div class="motto_n_phone"><img class="motto" src="/home/img/header_motto.png" /><div class="phone"><img class="icon" src="/home/img/header_phone_icon.png" /><span>028-86261949</span></div></div></div><div class="panel flex-box"><div class="links flex-box"><a target="_blank" href="index.html" class="activated"><div class="text">首页</div></a><a target="_blank" href="courseWeb.html" id="categories-menu-trigger"><div class="text">课程中心</div></a><a target="_blank" href="public-classes.html"><div class="text">免费公开课</div></a><a target="_blank" href="videos.html"><div class="text">视频教程</div></a><a target="_blank" href="teachers.html"><div class="text">师资团队</div></a><a target="_blank" href="works.html"><div class="text">学员作品</div></a><a target="_blank" href="alumns.html"><div class="text">明星学员</div></a><a target="_blank" href="enroll.html"><div class="text">报名流程</div></a><a target="_blank" href=".html"><div class="text">源码社区</div></a></div></div><div id="categories-menu" class="flex-box deactivated"><a class="flex-box" category="java" target="_blank" href=""><div class="text">Java学科</div></a><a class="flex-box" category="python" target="_blank" href=""><div class="text">Python+人工智能学科</div></a><a class="flex-box" category="h5" target="_blank" href=""><div class="text">H5前端学科</div></a><a class="flex-box" category="ui" target="_blank" href=""><div class="text">UI设计学科</div></a><a class="flex-box" category="software-test" target="_blank" href=""><div class="text">软件测试学科</div></a><a class="flex-box" category="php" target="_blank" href=""><div class="text">PHP学科</div></a><a class="flex-box" category="bigdata" target="_blank" href=""><div class="text">大数据学科</div></a></div></div>
		<script>
			$("#categories-menu-trigger").remove();
			$("#categories-menu [category]").each(function() {
				$(this).prepend('<div class="icon" style="background-image: url(/home/img/index/category_'+$(this).attr("category")+'_icon.png);"></div>');
			});
			$("#categories-menu").wrap('<div id="categories-menu-wrapper">');
			$("#header_navigator .links").before($("#categories-menu-wrapper"));
			$("#categories-menu").fadeIn(1);
		</script>
		<div class="frame center">
			<div class="container swiper-container" id="banner">
				<div class="swiper-wrapper" id=imgsAdd></div>
				<script type="text/javascript">
					$(function(){
						$.get("/home/findimgs", function(result){
							$(result).each(function(){
								if (this.enable == true) {
									$("#imgsAdd").append('<a target="_blank" href=""  class="swiper-slide swiper-lazy" data-background=' + this.path + '><div class="swiper-lazy-preloader"></div></a>');
								}

							});
						}, "json");
					});
				</script>
			    <div class="swiper-pagination"></div>
				<script>
					$(function() {
						var bannerSwiper = new Swiper ('#banner.swiper-container', {
						 	autoplay: { disableOnInteraction: false },
						    loop: true,
						    pagination: {
						      	el: '.swiper-pagination',
						      	bulletElement: 'div',
						     	clickable: true
						    },
							lazy: true
					  	});
					  	$("#banner .swiper-slide")
						  	.mouseenter(function() {
						  		bannerSwiper.autoplay.stop();
						  	})
						  	.mouseleave(function() {
						  		bannerSwiper.autoplay.start();
						  	});
					});
				</script>
			</div>
			<div class="container">
				<div class="panel" id="quick-access">
					<div class="content flex-box">
						<div class="wrapper flex-box">
							<a target="_blank" href="/home/faq" >常见问题</a>
							<div class="splitter"></div>
							<a target="_blank" href="" >来校路线</a>
						</div>
						<a target="_blank" href="intro.html"  class="wrapper flex-box">
							<div class="icon" style="background-image: url(/home/img/index/quick-access1_icon.png), url(/home/img/index/quick-access1_icon_hovered.png);"></div>
							<div class="text">给学员的一封信</div>
						</a>
						<a target="_blank" href="feedbacks.html"  class="wrapper flex-box">
							<div class="icon" style="background-image: url(/home/img/index/quick-access2_icon.png), url(/home/img/index/quick-access2_icon_hovered.png);"></div>
							<div class="text">好评如潮</div>
						</a>
						<a target="_blank" href=""  class="wrapper flex-box activated">
							<div class="icon" style="background-image: url(/home/img/index/quick-access3_icon.png), url(/home/img/index/quick-access3_icon_hovered.png);"></div>
							<div class="text">就业真相</div>
						</a>
						<a target="_blank" href=""  class="wrapper flex-box">
							<div class="icon" style="background-image: url(/home/img/index/quick-access4_icon.png), url(/home/img/index/quick-access4_icon_hovered.png);"></div>
							<div class="text">视频下载</div>
						</a>
						<a target="_blank" href=""  class="wrapper flex-box">
							<div class="icon" style="background-image: url(/home/img/index/quick-access5_icon.png), url(/home/img/index/quick-access5_icon_hovered.png);"></div>
							<div class="text">学费价格表</div>
						</a>
						<a target="_blank" href=""  class="wrapper flex-box">
							<div class="icon" style="background-image: url(/home/img/index/quick-access6_icon.png), url(/home/img/index/quick-access6_icon_hovered.png);"></div>
							<div class="text">测试能赚多少钱</div>
						</a>
					</div>
					<script>
						$(function() {
							$("#quick-access").on("mouseenter", "a.wrapper", function() {
								$(this).siblings(".activated").removeClass("activated").end().addClass("activated");
							});
						});
					</script>
				</div>
				<div class="panel" id="employment">
					<div class="title-bar flex-box">
						<span class="title">就业数据大公开</span>
						<span class="subtitle">跟上时代脚步，薪资更上一层</span>
					</div>
					<div class="content">
						<div class="flex-box" id="salary-data">
							<a class="wrapper" style="background-image: url(/home/img/index/salary-data_placeholder1.jpg);" target="_blank" href=""></a>
							<a class="wrapper" style="background-image: url(/home/img/index/salary-data_placeholder1.jpg);" target="_blank" href=""></a>
							<a class="wrapper" style="background-image: url(/home/img/index/salary-data_placeholder2.jpg);" target="_blank" href=""></a>
							<a class="wrapper" style="background-image: url(/home/img/index/salary-data_placeholder2.jpg);" target="_blank" href=""></a>
							<a class="wrapper" style="background-image: url(/home/img/index/salary-data_placeholder3.jpg);" target="_blank" href=""></a>
							<a class="wrapper" style="background-image: url(/home/img/index/salary-data_placeholder3.jpg);" target="_blank" href=""></a>
							<a class="wrapper" style="background-image: url(/home/img/index/salary-data_placeholder3.jpg);" target="_blank" href=""></a>
							<a class="wrapper" style="background-image: url(/home/img/index/salary-data_placeholder4.jpg);" target="_blank" href=""></a>
							<a class="wrapper" style="background-image: url(/home/img/index/salary-data_placeholder4.jpg);" target="_blank" href=""></a>
							<a class="wrapper" style="background-image: url(/home/img/index/salary-data_placeholder4.jpg);" target="_blank" href=""></a>
						</div>
						<div id="feedbacks">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<div class="swiper-slide"><img src="/home/img/index/feedback1.png" /></div>
									<div class="swiper-slide"><img src="/home/img/index/feedback2.png" /></div>
									<div class="swiper-slide"><img src="/home/img/index/feedback1.png" /></div>
									<div class="swiper-slide"><img src="/home/img/index/feedback2.png" /></div>
									<div class="swiper-slide"><img src="/home/img/index/feedback1.png" /></div>
									<div class="swiper-slide"><img src="/home/img/index/feedback2.png" /></div>
									<div class="swiper-slide"><img src="/home/img/index/feedback1.png" /></div>
									<div class="swiper-slide"><img src="/home/img/index/feedback2.png" /></div>
									<div class="swiper-slide"><img src="/home/img/index/feedback1.png" /></div>
									<div class="swiper-slide"><img src="/home/img/index/feedback2.png" /></div>
									<div class="swiper-slide"><img src="/home/img/index/feedback1.png" /></div>
									<div class="swiper-slide"><img src="/home/img/index/feedback2.png" /></div>
									<div class="swiper-slide"><img src="/home/img/index/feedback1.png" /></div>
									<div class="swiper-slide"><img src="/home/img/index/feedback2.png" /></div>
									<div class="swiper-slide"><img src="/home/img/index/feedback1.png" /></div>
									<div class="swiper-slide"><img src="/home/img/index/feedback2.png" /></div>
								</div>
							</div>
						</div>
					</div>
					<script>
						$(function() {
							// Swiper.
							var feedbacksSwiper = new Swiper ('#feedbacks .swiper-container', {
								speed: 3000,
							 	autoplay: { disableOnInteraction: false },
							 	slidesOffsetBefore: -50,
							    loop: true,
							 	disableOnInteraction: false,
							    slidesPerView: 5,
								lazy: true
						  	});
						  	$("#feedbacks .swiper-slide")
							  	.mouseenter(function() {
							  		feedbacksSwiper.autoplay.stop();
							  	})
							  	.mouseleave(function() {
							  		feedbacksSwiper.autoplay.start();
							  	});
						});
					</script>
				</div>
				<div class="panel" id="starteds">
					<div class="title-bar flex-box">
						<div class="title">最新开班一览</div>
						<div class="subtitle">改变从此开始</div>
					</div>
					<div class="content flex-box">
						<a target="_blank" href=""  class="wrapper">
							<div class="photo" style="background-image: url(/home/img/index/started1.png)"></div>
							<div class="text ellipsis-line" title="标题标题标题标题标题标题标题标题"></div>
						</a>
						<a target="_blank" href=""  class="wrapper">
							<div class="photo" style="background-image: url(/home/img/index/started1.png)"></div>
							<div class="text ellipsis-line" title="标题标题标题标题标题标题标题标题"></div>
						</a>
						<a target="_blank" href=""  class="wrapper">
							<div class="photo" style="background-image: url(/home/img/index/started1.png)"></div>
							<div class="text ellipsis-line" title="标题标题标题标题标题标题标题标题"></div>
						</a>
						<a target="_blank" href=""  class="wrapper">
							<div class="photo" style="background-image: url(/home/img/index/started1.png)"></div>
							<div class="text ellipsis-line" title="标题标题标题标题标题标题标题标题"></div>
						</a>
					</div>
				</div>
				<div class="panel" id="alumn">
					<div class="title-bar flex-box">
						<div class="title">老学员现身说法</div>
						<div class="subtitle">你的薪资可以比他们更高</div>
					</div>
					<div class="content flex-box">
						<a target="_blank" href=""  class="wrapper">
							<div class="photo-wrapper" style="background-image:url(/home/img/index/alumn_photo.jpg)">
								<div class="play flex-box">
									<img src="/home/img/index/alumn_play.png" />
								</div>
							</div>
							<div class="text-wrapper ">
								<div class="grade">Java精英班101期</div>
								<div class="description ellipsis-line" title="标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题"></div>
							</div>
						</a>
						<a target="_blank" href=""  class="wrapper">
							<div class="photo-wrapper" style="background-image:url(/home/img/index/alumn_photo.jpg)">
								<div class="play flex-box">
									<img src="/home/img/index/alumn_play.png" />
								</div>
							</div>
							<div class="text-wrapper ellipsis-line">
								<div class="grade">Java精英班101期</div>
								<div class="description" title="标题标题标题标题标题标题标题标题"></div>
							</div>
						</a>
						<a target="_blank" href=""  class="wrapper">
							<div class="photo-wrapper" style="background-image:url(/home/img/index/alumn_photo.jpg)">
								<div class="play flex-box">
									<img src="/home/img/index/alumn_play.png" />
								</div>
							</div>
							<div class="text-wrapper ellipsis-line">
								<div class="grade">Java精英班101期</div>
								<div class="description" title="标题标题标题标题标题标题标题标题"></div>
							</div>
						</a>
						<a target="_blank" href=""  class="wrapper">
							<div class="photo-wrapper" style="background-image:url(/home/img/index/alumn_photo.jpg)">
								<div class="play flex-box">
									<img src="/home/img/index/alumn_play.png" />
								</div>
							</div>
							<div class="text-wrapper ellipsis-line">
								<div class="grade">Java精英班101期</div>
								<div class="description" title="标题标题标题标题标题标题标题标题"></div>
							</div>
						</a>
					</div>
					<div id="memo">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<div class="swiper-slide"><img class="swiper-lazy" data-src="/home/img/index/alumn_memo.png" /><div class="swiper-lazy-preloader"></div></div>
								<div class="swiper-slide"><img class="swiper-lazy" data-src="/home/img/index/alumn_memo.png" /><div class="swiper-lazy-preloader"></div></div>
								<div class="swiper-slide"><img class="swiper-lazy" data-src="/home/img/index/alumn_memo.png" /><div class="swiper-lazy-preloader"></div></div>
								<div class="swiper-slide"><img class="swiper-lazy" data-src="/home/img/index/alumn_memo.png" /><div class="swiper-lazy-preloader"></div></div>
								<div class="swiper-slide"><img class="swiper-lazy" data-src="/home/img/index/alumn_memo.png" /><div class="swiper-lazy-preloader"></div></div>
								<div class="swiper-slide"><img class="swiper-lazy" data-src="/home/img/index/alumn_memo.png" /><div class="swiper-lazy-preloader"></div></div>
								<div class="swiper-slide"><img class="swiper-lazy" data-src="/home/img/index/alumn_memo.png" /><div class="swiper-lazy-preloader"></div></div>
								<div class="swiper-slide"><img class="swiper-lazy" data-src="/home/img/index/alumn_memo.png" /><div class="swiper-lazy-preloader"></div></div>
							</div>
						</div>
					</div>
					<script>
						$(function() {
							// Swiper.
							var memoSwiper = new Swiper ('#memo .swiper-container', {
								speed: 3000,
							 	autoplay: { disableOnInteraction: false },
							 	loop: true,
							 	disableOnInteraction: false,
								slidesOffsetBefore: 84,
							    slidesPerView: 4,
								lazy: true
						  	});
						  	$("#memo .swiper-slide")
							  	.mouseenter(function() {
							  		memoSwiper.autoplay.stop();
							  	})
							  	.mouseleave(function() {
							  		memoSwiper.autoplay.start();
							  	});
						});
					</script>
				</div>
				<div class="panel" id="tech-video">
					<div class="title-bar flex-box">
						<div class="title">技术视频</div>
						<div class="subtitle">免费好资源全面公开</div>
					</div>
					<div class="content flex-box">
						<div class="swiper-container" id="tech-video-left">
							<div class="swiper-wrapper">
								<div class="swiper-slide swiper-lazy" data-background="/home/img/index/tech-video_left1.png">
									<div class="swiper-lazy-preloader"></div>
									<div class="mask flex-box">
										<div class="timer">
											<div data-countdown="2020/1/28 12:00:00"></div>
											<div>Java公开课倒计时</div>
										</div>
									</div>
								</div>
								<div class="swiper-slide swiper-lazy" data-background="/home/img/index/placeholder_600x400.png">
									<div class="swiper-lazy-preloader"></div>
									<div class="mask flex-box">
										<!--<div class="timer">
											<div data-countdown="2021/1/28 12:00:00"></div>
											<div>划水公开课倒计时</div>
										</div>-->
									</div>
								</div>
								<div class="swiper-slide swiper-lazy" data-background="/home/img/index/tech-video_left1.png">
									<div class="swiper-lazy-preloader"></div>
									<div class="mask flex-box">
										<div class="timer">
											<div data-countdown="2022/1/28 12:00:00"></div>
											<div>Php公开课倒计时</div>
										</div>
									</div>
								</div>
								<div class="swiper-slide swiper-lazy" data-background="/home/img/index/placeholder_600x400.png">
									<div class="swiper-lazy-preloader"></div>
									<!--<div class="mask flex-box">
										<div class="timer">
											<div data-countdown="2023/1/28 12:00:00"></div>
											<div>摸鱼公开课倒计时</div>
										</div>
									</div>-->
								</div>
							</div>
							<div class="swiper-button-prev deactivated"></div>
							<div class="swiper-button-next deactivated"></div>
							<div class="swiper-pagination"></div>
						</div>
						<div class="flex-box" id="tech-video-right">
							<a target="_blank" href=""  class="wrapper" style="background-image: url(/home/img/index/tech-video_right1.png);"></a>
							<a target="_blank" href=""  class="wrapper" style="background-image: url(/home/img/index/tech-video_right2.png);"></a>
							<a target="_blank" href=""  class="wrapper" style="background-image: url(/home/img/index/tech-video_right3.png);"></a>
							<a target="_blank" href=""  class="wrapper" style="background-image: url(/home/img/index/tech-video_right4.png);"></a>
							<a target="_blank" href=""  class="wrapper" style="background-image: url(/home/img/index/tech-video_right5.png);"></a>
							<a target="_blank" href=""  class="wrapper" style="background-image: url(/home/img/index/tech-video_right6.png);"></a>
							<a target="_blank" href=""  class="wrapper" style="background-image: url(/home/img/index/tech-video_right7.png);"></a>
							<a target="_blank" href=""  class="wrapper" style="background-image: url(/home/img/index/tech-video_right8.png);"></a>
							<a target="_blank" href=""  class="wrapper" style="background-image: url(/home/img/index/tech-video_right9.png);"></a>
						</div>
					</div>
					<script>
						$(function() {
							// Swiper.
							var techVideoSwiper = new Swiper ('#tech-video-left.swiper-container', {
							 	autoplay: { disableOnInteraction: false },
							    loop: true,
							    navigation: {
							        nextEl: '.swiper-button-next',
							        prevEl: '.swiper-button-prev',
							    },
							    pagination: {
							      	el: '.swiper-pagination',
							      	bulletElement: 'div',
							     	clickable: true
							    },
								lazy: true
						  	});
						  	$("#tech-video-left")
							  	.mouseenter(function() {
							  		$("#tech-video-left .swiper-button-prev, #tech-video-left .swiper-button-next").removeClass("deactivated");
							  	})
							  	.mouseleave(function() {
							  		$("#tech-video-left .swiper-button-prev, #tech-video-left .swiper-button-next").addClass("deactivated");
							  	});
						  	$("#tech-video-left .swiper-slide")
							  	.mouseenter(function() {
							  		techVideoSwiper.autoplay.stop();
							  	})
							  	.mouseleave(function() {
							  		techVideoSwiper.autoplay.start();
							  	});

							// Countdown.
							$('#tech-video-left [data-countdown]').each(function() {
							  	var $_this = $(this), finalDate = $(this).data('countdown');
							  	$_this.countdown(finalDate)
							  	.on('update.countdown', function(event) {
							  		var deadline = event.strftime('<b>%D</b>天 <b>%H</b>时 <b>%M</b>分 <b>%S</b>秒');
									$_this.html(deadline);
								})
							  	.on('finish.countdown', function(event) {
								  	$_this.html('<div>已过期</div>');
								});
							});
							
							// Hover aniamte.
							$("#tech-video-right .wrapper").append('<div class="halo a"></div><div class="halo b"></div><div class="halo c"></div><div class="halo d"></div>');
						});
					</script>
				</div>
				<div class="panel" id="courses-center">
					<div class="title-bar flex-box">
						<div class="title">匠心打造优质课程</div>
						<div class="subtitle">因材施教，菜鸟大神都能来</div>
					</div>
					<div class="content flex-box" category="python">
						<div class="banner">
							<div class="sectitle" style="letter-spacing: 0.05em; text-indent: 0.05em;">Python+人工智能学科</div>
							<div class="subsectitle">未来10年最受欢迎的编程语言</div>
						</div>
						<div class="class flex-box">
							<div class="links flex-box">
								<a target="_blank" href=""  class="wrapper">学习路线</a>
								<a target="_blank" href=""  class="wrapper">课程介绍</a>
								<a target="_blank" href=""  class="wrapper">就业薪资</a>
								<a target="_blank" href=""  class="wrapper">申请试听</a>
							</div>
							<div class="ads swiper-container">
							    <div class="swiper-wrapper">
									<div class="swiper-slide" style="background-image: url(/home/img/index/course_ads_placeholder.png)"></div>
									<div class="swiper-slide" style="background-image: url(/home/img/index/placeholder_550x110.png)"></div>
							    </div>
							</div>
						</div>
						<div class="date-list">
							<div class="sectitle-bar flex-box">
								<div class="sectitle">开班时间</div>
								<div class="region">
									<div class="selected"><span class="text">全国</span>校区<span class="select">▼</span></div>
									<div class="candidates flex-box" tabs-keel="region-python">
										<div class="candidate tab active">全国</div>
										<div class="candidate tab">成都</div>
										<div class="candidate tab">重庆</div>
										<div class="candidate tab">武汉</div>
										<div class="candidate tab">深圳</div>
									</div>
								</div>
							</div>
							<div tabs-panels-keel="region-python">
								<div class="tab-panel active">
									<div class="flex-box" isclassopened="true">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
									<div class="flex-box" isclassopened="true">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
									<div class="flex-box" isclassopened="true">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
									<div class="flex-box" isclassopened="false">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
									<div class="flex-box" isclassopened="false">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
								</div>
								<div class="tab-panel">
									placeholder2
								</div>
								<div class="tab-panel">
									placeholder3
								</div>
								<div class="tab-panel">
									placeholder4
								</div>
								<div class="tab-panel">
									placeholder5
								</div>
								<div class="tab-panel">
									placeholder6
								</div>
							</div>
						</div>
					</div>
					<div class="content flex-box" category="java">
						<div class="banner">
							<div class="sectitle">Java学科</div>
							<div class="subsectitle">风靡全球20年，实力一直在线</div>
						</div>
						<div class="class flex-box">
							<div class="links flex-box">
								<a target="_blank" href=""  class="wrapper">学习路线</a>
								<a target="_blank" href=""  class="wrapper">课程介绍</a>
								<a target="_blank" href=""  class="wrapper">就业薪资</a>
								<a target="_blank" href=""  class="wrapper">申请试听</a>
							</div>
							<div class="ads swiper-container">
							    <div class="swiper-wrapper">
									<div class="swiper-slide swiper-lazy" data-background="/home/img/index/course_ads_placeholder.png"></div>
									<div class="swiper-slide swiper-lazy" data-background="/home/img/index/placeholder_550x110.png"></div>
							    </div>
							</div>
						</div>
						<div class="date-list">
							<div class="sectitle-bar flex-box">
								<div class="sectitle">开班时间</div>
								<div class="region">
									<div class="selected"><span class="text">全国</span>校区<span class="select">▼</span></div>
									<div class="candidates flex-box" tabs-keel="region-java">
										<div class="candidate tab active">全国</div>
										<div class="candidate tab">成都</div>
										<div class="candidate tab">重庆</div>
										<div class="candidate tab">武汉</div>
										<div class="candidate tab">深圳</div>
									</div>
								</div>
							</div>
							<div tabs-panels-keel="region-java">
								<div class="tab-panel active">
									<div class="flex-box" isclassopened="true">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
									<div class="flex-box" isclassopened="true">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
									<div class="flex-box" isclassopened="false">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
									<div class="flex-box" isclassopened="false">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
								</div>
								<div class="tab-panel">
									placeholder2
								</div>
								<div class="tab-panel">
									placeholder3
								</div>
								<div class="tab-panel">
									placeholder4
								</div>
								<div class="tab-panel">
									placeholder5
								</div>
								<div class="tab-panel">
									placeholder6
								</div>
							</div>
						</div>
					</div>
					<div class="content flex-box" category="php">
						<div class="banner">
							<div class="sectitle">PHP学科</div>
							<div class="subsectitle">最“快”入门的千万级网站开发岗</div>
						</div>
						<div class="class flex-box">
							<div class="links flex-box">
								<a target="_blank" href=""  class="wrapper">学习路线</a>
								<a target="_blank" href=""  class="wrapper">课程介绍</a>
								<a target="_blank" href=""  class="wrapper">就业薪资</a>
								<a target="_blank" href=""  class="wrapper">申请试听</a>
							</div>
							<div class="ads swiper-container">
							    <div class="swiper-wrapper">
									<div class="swiper-slide swiper-lazy" data-background="/home/img/index/course_ads_placeholder.png"></div>
									<div class="swiper-slide swiper-lazy" data-background="/home/img/index/placeholder_550x110.png"></div>
							    </div>
							</div>
						</div>
						<div class="date-list">
							<div class="sectitle-bar flex-box">
								<div class="sectitle">开班时间</div>
								<div class="region">
									<div class="selected"><span class="text">全国</span>校区<span class="select">▼</span></div>
									<div class="candidates flex-box" tabs-keel="region-php">
										<div class="candidate tab active">全国</div>
										<div class="candidate tab">成都</div>
										<div class="candidate tab">重庆</div>
										<div class="candidate tab">武汉</div>
										<div class="candidate tab">深圳</div>
									</div>
								</div>
							</div>
							<div tabs-panels-keel="region-php">
								<div class="tab-panel active">
									<div class="flex-box" isclassopened="true">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
									<div class="flex-box" isclassopened="false">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
									<div class="flex-box" isclassopened="false">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
									<div class="flex-box" isclassopened="false">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
								</div>
								<div class="tab-panel">
									placeholder2
								</div>
								<div class="tab-panel">
									placeholder3
								</div>
								<div class="tab-panel">
									placeholder4
								</div>
								<div class="tab-panel">
									placeholder5
								</div>
								<div class="tab-panel">
									placeholder6
								</div>
							</div>
						</div>
					</div>
					<div class="content flex-box" category="ui">
						<div class="banner">
							<div class="sectitle">UI设计学科</div>
							<div class="subsectitle">打造会代码的全能设计师 </div>
						</div>
						<div class="class flex-box">
							<div class="links flex-box">
								<a target="_blank" href=""  class="wrapper">学习路线</a>
								<a target="_blank" href=""  class="wrapper">课程介绍</a>
								<a target="_blank" href=""  class="wrapper">就业薪资</a>
								<a target="_blank" href=""  class="wrapper">申请试听</a>
							</div>
							<div class="ads swiper-container">
							    <div class="swiper-wrapper">
									<div class="swiper-slide swiper-lazy" data-background="/home/img/index/course_ads_placeholder.png"></div>
									<div class="swiper-slide swiper-lazy" data-background="/home/img/index/placeholder_550x110.png"></div>
							    </div>
							</div>
						</div>
						<div class="date-list">
							<div class="sectitle-bar flex-box">
								<div class="sectitle">开班时间</div>
								<div class="region">
									<div class="selected"><span class="text">全国</span>校区<span class="select">▼</span></div>
									<div class="candidates flex-box" tabs-keel="region-ui">
										<div class="candidate tab active">全国</div>
										<div class="candidate tab">成都</div>
										<div class="candidate tab">重庆</div>
										<div class="candidate tab">武汉</div>
										<div class="candidate tab">深圳</div>
									</div>
								</div>
							</div>
							<div tabs-panels-keel="region-ui">
								<div class="tab-panel active">
									<div class="flex-box" isclassopened="true">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
									<div class="flex-box" isclassopened="true">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
									<div class="flex-box" isclassopened="true">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
									<div class="flex-box" isclassopened="false">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
									<div class="flex-box" isclassopened="false">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
								</div>
								<div class="tab-panel">
									placeholder2
								</div>
								<div class="tab-panel">
									placeholder3
								</div>
								<div class="tab-panel">
									placeholder4
								</div>
								<div class="tab-panel">
									placeholder5
								</div>
								<div class="tab-panel">
									placeholder6
								</div>
							</div>
						</div>
					</div>
					<div class="content flex-box" category="h5">
						<div class="banner">
							<div class="sectitle">H5前端学科</div>
							<div class="subsectitle">互联网热门高薪职位 </div>
						</div>
						<div class="class flex-box">
							<div class="links flex-box">
								<a target="_blank" href=""  class="wrapper">学习路线</a>
								<a target="_blank" href=""  class="wrapper">课程介绍</a>
								<a target="_blank" href=""  class="wrapper">就业薪资</a>
								<a target="_blank" href=""  class="wrapper">申请试听</a>
							</div>
							<div class="ads swiper-container">
							    <div class="swiper-wrapper">
									<div class="swiper-slide swiper-lazy" data-background="/home/img/index/course_ads_placeholder.png"></div>
									<div class="swiper-slide swiper-lazy" data-background="/home/img/index/placeholder_550x110.png"></div>
							    </div>
							</div>
						</div>
						<div class="date-list">
							<div class="sectitle-bar flex-box">
								<div class="sectitle">开班时间</div>
								<div class="region">
									<div class="selected"><span class="text">全国</span>校区<span class="select">▼</span></div>
									<div class="candidates flex-box" tabs-keel="region-h5">
										<div class="candidate tab active">全国</div>
										<div class="candidate tab">成都</div>
										<div class="candidate tab">重庆</div>
										<div class="candidate tab">武汉</div>
										<div class="candidate tab">深圳</div>
									</div>
								</div>
							</div>
							<div tabs-panels-keel="region-h5">
								<div class="tab-panel active">
									<div class="flex-box" isclassopened="true">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
									<div class="flex-box" isclassopened="true">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
									<div class="flex-box" isclassopened="false">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
									<div class="flex-box" isclassopened="false">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
									<div class="flex-box" isclassopened="false">
										<div class="region">成都校区</div>
										<div class="date">2018/11/06</div>
										<a class="entrance" target="_blank" href=""></a>
									</div>
								</div>
								<div class="tab-panel">
									placeholder2
								</div>
								<div class="tab-panel">
									placeholder3
								</div>
								<div class="tab-panel">
									placeholder4
								</div>
								<div class="tab-panel">
									placeholder5
								</div>
								<div class="tab-panel">
									placeholder6
								</div>
							</div>
						</div>
					</div>
					<script>
						$(function() {
							// Banner.
							$("#courses-center .banner").each(function() {
								$(this).css("background-image", "url(/home/img/index/course_"+$(this).closest("[category]").attr("category")+"_banner_bg.png)");
							});
							// Links.
							$("#courses-center .links >*").each(function() {
								$(this).css("background-image", "url(/home/img/index/course_"+$(this).closest("[category]").attr("category")+"_link"+($(this).index()+1)+"_icon.png)");
							});
							
							// Region.
							var slideRegionUp = function($_region) {
								$_region.find(".candidates").stop().slideUp();
								$_region.find(".selected")
									.removeClass("activated")
									.find(".text").text($_region.find(".active").text());
							}
							$("#courses-center .region").each(function() {
								var $_region = $(this);
								$_region
								.on("click", ".selected", function(e) {
									e.stopPropagation();
									var $_this = $(this);
									setTimeout(function() {
										$_this.toggleClass("activated");
										var $_candidates = $_region.find(".candidates");
										var _flex = function() {
										   if($_candidates.is(":visible")) {
									            $_candidates.css('display', 'flex');
									        }
										}
										$_candidates.stop().slideToggle(_flex);
									}, 1);
								})
								.on("click", ".candidate", function() {
									var $_this = $(this);
									setTimeout(function() {
										slideRegionUp($_this);
									}, 1);
								});
							});
							$("body").on("click", function() {
								slideRegionUp($("#courses-center .region .selected.activated").parent());
							});
							
							
							// All ad carousel set here.
							var courseSwipers = [];
							var initialAdCarousels = function(selectors) {
								for(var i = 0; i < selectors.length; i++) {
									courseSwipers.push(
										new Swiper (selectors[i], {
										 	autoplay: { disableOnInteraction: false },
										    loop: true,
											lazy: true
								  		})
								 	);
								}
								
								jQuery.each(courseSwipers, function(index, elem) {
									$("#courses-center .content").eq(index).find(".swiper-slide")
								  	.mouseenter(function() {
								  		elem.autoplay.stop();
								  	})
								  	.mouseleave(function() {
								  		elem.autoplay.start();
								  	});
								});
							}
							initialAdCarousels([
								"#courses-center [category=python] .ads.swiper-container",
								"#courses-center [category=java] .ads.swiper-container",
								"#courses-center [category=php] .ads.swiper-container",
								"#courses-center [category=ui] .ads.swiper-container",
								"#courses-center [category=h5] .ads.swiper-container"
							]);
						});
					</script>
				</div>
				<div class="panel" id="activities">
					<div class="title-bar flex-box">
						<div class="title">在拼搏中成为更好的自己</div>
						<div class="subtitle">有志同道合的人陪伴是一件幸运的事</div>
					</div>
					<div class="content flex-box">
						<a target="_blank" href=""  class="wrapper">
							<div class="photo" style="background-image: url(/home/img/index/placeholder_270x180.png)"></div>
							<div class="text ellipsis-line" title="标题标题标题标题标题标题标题标题"></div>
						</a>
						<a target="_blank" href=""  class="wrapper">
							<div class="photo" style="background-image: url(/home/img/index/placeholder_270x180.png)"></div>
							<div class="text ellipsis-line" title="标题标题标题标题标题标题标题标题"></div>
						</a>
						<a target="_blank" href=""  class="wrapper">
							<div class="photo" style="background-image: url(/home/img/index/placeholder_270x180.png)"></div>
							<div class="text ellipsis-line" title="标题标题标题标题标题标题标题标题"></div>
						</a>
						<a target="_blank" href=""  class="wrapper">
							<div class="photo" style="background-image: url(/home/img/index/placeholder_270x180.png)"></div>
							<div class="text ellipsis-line" title="标题标题标题标题标题标题标题标题"></div>
						</a>
					</div>
				</div>
				<div class="panel" id="misc">
					<div class="content flex-box">
						<div class="wrapper">
							<div class="sectitle-bar flex-box">
								<div class="sectitle"></div>
								<a target="_blank" href=""  class="more">更多</a>
							</div>
							<ul id="technologys">
							</ul>
						</div>
						<div class="wrapper">
							<div class="sectitle-bar flex-box">
								<div class="sectitle">行业新闻</div>
								<a target="_blank" href=""  class="more">更多</a>
							</div>
							<ul id="industrys">
							</ul>
						</div>
						<div class="wrapper">
							<div class="sectitle-bar flex-box">
								<div class="sectitle">学科资讯</div>
								<a target="_blank" href=""  class="more">更多</a>
							</div>
							<ul id="subjects">
							</ul>
						</div>
					</div>
					<script>
						$(function() {
							
							$.get("/home/findArticles",function(result){
								
								var technologys = result.technologys;
								$(technologys).each(function() {
									$("#technologys").append('<a target="_blank" href=""><li class="flex-box"><div class="ellipsis-line" title='+this.title+'></div><div class="date">'+this.createDate+'</div></li></a>')
								})
								
								var industrys = result.industrys;
								$(industrys).each(function() {
									$("#industrys").append('<a target="_blank" href=""><li class="flex-box"><div class="ellipsis-line" title='+this.title+'></div><div class="date">'+this.createDate+'</div></li></a>')
								})
								
								var subjects = result.subjects;
								$(subjects).each(function() {
									$("#subjects").append('<a target="_blank" href=""><li class="flex-box"><div class="ellipsis-line" title='+this.title+'></div><div class="date">'+this.createDate+'</div></li></a>')
								})
							},"json")
							
							
							
							
							
							
							
							
							
							// Title proxy.
							$("#tech-zone .wrapper ul >a").each(function() {
								$(this).attr("title", $(this).find(".ellipsis-line").attr("title"));
							});
						});
					</script>
				</div>
			</div>
			<div class="container" id="ad" style="height: 200px; background-image: url(/home/img/index/ad_bg.png);"></div>
			<div class="container">
				<div class="panel" id="news">
					<div class="title-bar flex-box">
						<div class="title">公司动态</div>
						<div class="subtitle">用一颗满怀激情的心做有温度的良心教育</div>
					</div>
					<div class="content flex-box">
						<div class="video" style="height: 400px; background-image: url(/home/img/index/news_video.png);"></div>
						<a target="_blank" href=""  class="more">更多</a>
						<div class="list">
							<a target="_blank" href="" class="ellipsis-line" title='源码时代荣膺"回响中国 2017年度特色职业职业源码时代荣膺"回响中国 2017年度特色职业职业'></a>
							<a target="_blank" href="" class="ellipsis-line" title='源码时代荣膺"回响中国 2017年度特色职业职业源码时代荣膺"回响中国 2017年度特色职业职业'></a>
							<a target="_blank" href="" class="ellipsis-line" title='源码时代荣膺"回响中国 2017年度特色职业职业源码时代荣膺"回响中国 2017年度特色职业职业'></a>
							<a target="_blank" href="" class="ellipsis-line" title='源码时代荣膺"回响中国 2017年度特色职业职业源码时代荣膺"回响中国 2017年度特色职业职业'></a>
							<a target="_blank" href="" class="ellipsis-line" title='源码时代荣膺"回响中国 2017年度特色职业职业源码时代荣膺"回响中国 2017年度特色职业职业'></a>
							<a target="_blank" href="" class="ellipsis-line" title='源码时代荣膺"回响中国 2017年度特色职业职业源码时代荣膺"回响中国 2017年度特色职业职业'></a>
							<a target="_blank" href="" class="ellipsis-line" title='源码时代荣膺"回响中国 2017年度特色职业职业源码时代荣膺"回响中国 2017年度特色职业职业'></a>
							<a target="_blank" href="" class="ellipsis-line" title='源码时代荣膺"回响中国 2017年度特色职业职业源码时代荣膺"回响中国 2017年度特色职业职业'></a>
							<a target="_blank" href="" class="ellipsis-line" title='源码时代荣膺"回响中国 2017年度特色职业职业源码时代荣膺"回响中国 2017年度特色职业职业'></a>
						</div>
					</div>
				</div>
			</div>
			<div class="container" id="photos" style="height: 450px; margin-top: 60px; background-image: url(/home/img/index/photos_bg.png);"></div>
		</div>
		<div class="frame" id="footer_friends">
			<div class="container">
				<div class="panel">
					<div class="label">友情链接：</div>
					<a target="_blank" href="" >成都IT培训</a>
					<a target="_blank" href="" >小码哥Java培训</a>
					<a target="_blank" href="" >叩丁狼Java培训</a>
					<a target="_blank" href="" >菁鱼课堂在线学习</a>
					<a target="_blank" href="" >尚硅谷</a>
					<a target="_blank" href="" >成都会计培训</a>
					<a target="_blank" href="" >高清视频会议</a>
					<a target="_blank" href="" >影视特效培训</a>
					<a target="_blank" href="" >51CTO学院</a>
					<a target="_blank" href="" >自学PHP网</a>
					<a target="_blank" href="" >UI设计培训</a>
					<a target="_blank" href="" >北京家教</a>
					<a target="_blank" href="" >AAA教育</a>
					<a target="_blank" href="" >在职考研</a>
					<a target="_blank" href="" >吉林大学研究生院</a>
					<a target="_blank" href="" >企业管理培训</a>
					<a target="_blank" href="" >教育培训加盟</a>
					<a target="_blank" href="" >轻备学院</a>
					<a target="_blank" href="" >如鹏网</a>
					<a target="_blank" href="" >ios培训</a>
				</div>
			</div>
		</div>
		<div class="frame footer" id="footer_misc"><div class="container"><div class="panel flex-box" id="footer_services"><div class="wrapper flex-box"><div class="icon" style="background-image: url(/home/img/footer_service1_icon.png)"></div><div class="text">课程升级，老学员可免费学习新课程</div></div><div class="wrapper flex-box"><div class="icon" style="background-image: url(/home/img/footer_service2_icon.png)"></div><div class="text">老学员工作遇到技术困难，提供技术支持</div></div><div class="wrapper flex-box"><div class="icon" style="background-image: url(/home/img/footer_service3_icon.png)"></div><div class="text">学员创业，提供人才技术服务</div></div><div class="wrapper flex-box"><div class="icon" style="background-image: url(/home/img/footer_service4_icon.png)"></div><div class="text">全方位就业指导，<br/>无限次推荐就业</div></div></div><div class="panel flex-box a"><div class="flex-box b"><div><a target="_blank" href="">关于我们</a>|<a target="_blank" href="">联系我们</a>|<a target="_blank" href="">校企合作</a>|<a target="_blank" href="">来校路线</a>|<a target="_blank" href="">网站地图</a>|<a target="_blank" href="">源码社区</a></div><div>成都校区：成都市高新区府城大道西段399号天府新谷1号楼6F / 028-86261949</div><div>重庆校区：重庆两江新区华山南路16号重庆互联网学院1号楼314 / 023-63561339</div><div>武汉校区：武汉市东湖新技术开发区华师园北路18号光谷科技港9栋4F / 027-81529608</div></div><div class="splitter"></div><div class="flex-box c"><img src="/home/img/wb.png" /><span>微博</span><img src="/home/img/wx.png" /><span>微信</span></div></div><div class="panel copyright"><div class="d"><span>邮箱：yuandaima@itsource.cn</span><span>法律顾问：北京京师(成都)律师事务所</span></div><div class="d"><span>®2006-2018成都源代码教育咨询有限公司 版权所有</span><span>蜀ICP备14030149号-1</span><span>蜀公网安备510114990541</span><span>站长统计</span></div></div></div></div>
		<div class="frame flex-box" id="side-bar"><div class="content flex-box"><div class="logo" style="background-image: url(/home/img/side-bar_logo.png)"></div><div class="links flex-box"><a class="wrapper" onclick="_hmt.push(['_trackEvent', 'PC_no_右侧栏目', 'click_consult', '右侧栏目_1']);" rel="nofollow" href="https://tb.53kf.com/code/client/d2abbdb2d6a875420ed7ab20394108a8/1" target="_black"><div class="icon" style="background-image: url(/home/img/side-bar_seller.png);"></div><div class="text flex-box">在线咨询</div></a><a class="wrapper" onclick="_hmt.push(['_trackEvent', 'PC_no_右侧栏目', 'click_consult', '右侧栏目_2']);" rel="nofollow" href="https://tb.53kf.com/code/client/d2abbdb2d6a875420ed7ab20394108a8/1" target="_black"><div class="icon" style="background-image: url(/home/img/side-bar_datas.png);"></div><div class="text flex-box">领取资料</div></a><a class="wrapper" onclick="_hmt.push(['_trackEvent', 'PC_no_右侧栏目', 'click_consult', '右侧栏目_3']);" rel="nofollow" href="https://tb.53kf.com/code/client/d2abbdb2d6a875420ed7ab20394108a8/1" target="_black"><div class="icon" style="background-image: url(/home/img/side-bar_jobs.png);"></div><div class="text flex-box">保障就业</div></a><a class="wrapper" onclick="_hmt.push(['_trackEvent', 'PC_no_右侧栏目', 'click_consult', '右侧栏目_4']);" rel="nofollow" href="https://tb.53kf.com/code/client/d2abbdb2d6a875420ed7ab20394108a8/1" target="_black"><div class="icon" style="background-image: url(/home/img/side-bar_study.png);"></div><div class="text flex-box">免费试学</div></a><div class="wrapper more"><div class="icon" style="background-image: url(/home/img/side-bar_more.png);"></div><div class="text flex-box">了解更多</div></div></div><div id="side-bar_more" class="deactivated"><div class="links flex-box"><a class="wrapper" href="/javaWeb.htm">Java学科</a><a class="wrapper" href="/pythonWeb.htm">Python+<br />人工智能</a><a class="wrapper" href="/hWeb.htm">H5前端学科</a><a class="wrapper" href="/uiWeb.htm">UI设计学科</a><a class="wrapper" href="/qaWeb.htm">软件测试学科</a><a class="wrapper" href="/fsWeb.htm">全栈学科</a><a class="wrapper" href="/phpWeb.htm">PHP学科</a><a class="wrapper" href="/mediaWeb.htm">新媒体+<br>短视频运营</a></div></div></div></div>
	</body>
	<foot>
		<script src="/home/js/swiper.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/home/js/tabsKeel-0.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="/home/js/jquery.countdown.min.js" type="text/javascript" charset="utf-8"></script>
	</foot>
</html>
