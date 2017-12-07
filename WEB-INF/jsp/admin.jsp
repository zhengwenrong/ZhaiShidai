<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>		<!-- Bootstrap Core CSS -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath }/css/base.css" rel="stylesheet">

		<!-- MetisMenu CSS -->
		<link href="${pageContext.request.contextPath }/css/metisMenu.min.css" rel="stylesheet">

		<!-- DataTables CSS -->
		<link href="${pageContext.request.contextPath }/css/dataTables.bootstrap.css" rel="stylesheet">

		<!-- Custom CSS -->
		<link href="${pageContext.request.contextPath }/css/sb-admin-2.css" rel="stylesheet">

		<!-- Custom Fonts -->
		<link href="${pageContext.request.contextPath }/css/font-awesome.min.css" rel="stylesheet"
			  type="text/css">
		<link href="${pageContext.request.contextPath }/css/boot-crm.css" rel="stylesheet"
			  type="text/css">

		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/admin.css">
		<!-- jQuery -->
		<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>

		<!-- Metis Menu Plugin JavaScript -->
		<script src="${pageContext.request.contextPath }/js/metisMenu.min.js"></script>

		<!-- DataTables JavaScript -->
		<script src="${pageContext.request.contextPath }/js/jquery.dataTables.min.js"></script>
		<script src="${pageContext.request.contextPath }/js/dataTables.bootstrap.min.js"></script>
		<!-- Custom Theme JavaScript -->
		<script src="${pageContext.request.contextPath }/js/sb-admin-2.js"></script>

		<script type="text/javascript">
		var isShowingShopTab = true;

		function  showShopTab(selecteTabId,url) {

		    isShowingShopTab = true;
		    var tab1Title = document.getElementById("tab1-title");
		    var tab2Title = document.getElementById("tab2-title");
		    var selectTag1 = document.getElementById("select-tab1");
		    var selectTag2 = document.getElementById("select-tab2");
		    var content_page = document.getElementById("content-page");
		    var shopMemu1 = document.getElementById("shopMemu1");
		    var shopMemu2 = document.getElementById("shopMemu2");

		    tab1Title.innerText = "菜单管理";
		    tab2Title.innerText = "添加菜单";
		    selectTag1.className = selecteTabId == tab1Title.id ? "active":"" ;
		    selectTag2.className = selecteTabId == tab2Title.id ? "active":"" ;

		    shopMemu1.style.background = selecteTabId == tab1Title.id ? "#EEEEEE":"white";
		    shopMemu2.style.background = selecteTabId == tab2Title.id ? "#EEEEEE":"white";
		    content_page.src = url;

		}

		function showOrderTab(selecteTabId,url){

		    isShowingShopTab = false;

		    var tab1Title = document.getElementById("tab1-title");
		    var tab2Title = document.getElementById("tab2-title");
		    var selectTag1 = document.getElementById("select-tab1");
		    var selectTag2 = document.getElementById("select-tab2");
		    var orderMemu1 = document.getElementById("orderMemu1");
		    var orderMemu2 = document.getElementById("orderMemu2");
		    selectTag1.className = selecteTabId == tab1Title.id ? "active":"" ;
		    selectTag2.className = selecteTabId == tab2Title.id ? "active":"" ;
		    orderMemu1.style.background = selecteTabId == tab1Title.id ? "#EEEEEE":"white";
		    orderMemu2.style.background = selecteTabId == tab2Title.id ? "#EEEEEE":"white";

		    tab1Title.innerText = "已付款";
		    tab2Title.innerText = "未付款";
		    var content_page = document.getElementById("content-page");
		    content_page.src = url;
		}

		function selectedTab1(){
		    var content_page = document.getElementById("content-page");
		    var shopMemu1 = document.getElementById("shopMemu1");
		    var shopMemu2 = document.getElementById("shopMemu2");
		    var orderMemu1 = document.getElementById("orderMemu1");
		    var orderMemu2 = document.getElementById("orderMemu2");
		    if(isShowingShopTab){

		        shopMemu1.style.background = "#EEEEEE";
		        shopMemu2.style.background = "white";
		        content_page.src = "${pageContext.request.contextPath }/admin/toListMemuPage.action";
				
		    }else {
		        orderMemu1.style.background = "#EEEEEE";
		        orderMemu2.style.background = "white";
		        content_page.src = "list_pay.html";
		    }

		}

		function selectedTab2(){
		    var shopMemu2 = document.getElementById("shopMemu2");
		    var shopMemu1 = document.getElementById("shopMemu1");
		    var content_page = document.getElementById("content-page");
		    var orderMemu1 = document.getElementById("orderMemu1");
		    var orderMemu2 = document.getElementById("orderMemu2");
		    if(isShowingShopTab){


		        content_page.src = "${pageContext.request.contextPath }/admin/toUploadMemuPage.action";
		        shopMemu2.style.background = "#EEEEEE";
		        shopMemu1.style.background = "white";

		    }else {
		        content_page.src = "list_uppay.html";
		        orderMemu1.style.background = "white";
		        orderMemu2.style.background = "#EEEEEE";
		    }

		}
		
		</script>

	</head>
	<body>

		<div class="nav-top">

			<!-- Navigation -->
			<nav class="navbar navbar-default navbar-static-top" role="navigation"
				 style="margin-bottom: 0">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="admin.html" style="padding-left: 30px;">宅时代外卖后台管理</a>
				</div>
				<!-- /.navbar-header -->

				<div class="navbar-header fr">
					<a class="nav-justified" style="line-height: 50px;"> 超级管理员</a>
					<a class="nav-justified" style="line-height: 50px;"> admin</a>
					<a class="nav-justified" style="line-height: 50px;">注销</a>
				</div>

			</nav>
		</div>

		<div class="main-content">

			<div class="row">

				<!-- 左侧菜单 -->
				<div class="col-lg-2 col-md-2 left-slide">

					<!-- 搜索 -->
					<li class="sidebar-search" style="list-style: none;margin-left: 20px;margin-top: 20px;margin-bottom: 20px;">
						<div class="input-group custom-search-form">
							<input type="text" class="form-control" placeholder="查询内容...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">
									<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
								</button>
							</span>
						</div> <!-- /input-group -->
					</li>

					<div class="row" style="margin-left: 2px; margin-right: -13px;text-decoration: none;text-align: center;">
						<div class="panel-group" id="panel-543535">
							<div class="panel panel-default" style="overflow: hidden">
								<div class="panel-heading">
									<a class="panel-title collapsed" style="text-decoration: none" data-toggle="collapse" data-parent="#panel-543535" onclick="showShopTab('tab1-title','shop_list.html')" href="#panel-element-559948"><i class="fa fa-edit fa-fw"></i>&nbsp;商品管理</a>
								</div>
								<div id="panel-element-559948" class="panel-collapse collapse">
									<div class="row">
											<ul class="left-menu-list">
												<li>
													<a id="shopMemu1" href="javaScript:void(0);" onclick="showShopTab('tab1-title','${pageContext.request.contextPath }/admin/toListMemuPage.action')">菜单管理</a>
												</li>
												<li><a id="shopMemu2" href="javaScript:void(0);" onclick="showShopTab('tab2-title','${pageContext.request.contextPath }/admin/toUploadMemuPage.action')">添加菜单</a></li>
											</ul>
										</div>

								</div>
							</div>
							<div class="panel panel-default" style="overflow: hidden">
								<div class="panel-heading">
									<a class="panel-title collapsed" data-toggle="collapse" style="text-decoration: none" onclick="showOrderTab('tab1-title','list_pay.html')" data-parent="#panel-543535" href="#panel-element-827956"><i class="fa fa-dashboard fa-fw"></i>&nbsp;订单管理</a>
								</div>
								<div id="panel-element-827956" class="panel-collapse collapse">
									<div  class="row">
										<ul class="left-menu-list">
											<li><a id="orderMemu1" href="javaScript:void(0);" onclick="showOrderTab('tab1-title','list_pay.html')">已付款</a></li>
											<li><a id="orderMemu2" href="javaScript:void(0);" onclick="showOrderTab('tab2-title','list_uppay.html')">未付款</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 右侧内容 -->
				<div class="col-lg-10 col-md-10 right-content">

					<div class="row">
							<div class="tabbable" id="tabs-50667">
								<ul class="nav nav-tabs">
									<li id="select-tab1" class="active">
										<a id="tab1-title" onclick="selectedTab1()" data-toggle="tab">菜单管理</a>
									</li>
									<li id="select-tab2">
										<a id="tab2-title" onclick="selectedTab2()" data-toggle="tab">添加菜单</a>
									</li>
								</ul>
								 <!--<div class="tab-content">
									<div class="tab-pane">

										<Iframe src="shop_list.html" id="content-page" width="100%" height="100%" scrolling="no" frameborder="0"></iframe>

									</div>
									<!--<div class="tab-pane" id="panel-125285">

										<img src="img/img2.jpg" alt="">

									</div>
								</div>-->
							</div>
					</div>

					<div style="height: 90%;" class="row">

						<Iframe src="${pageContext.request.contextPath }/admin/toListMemuPage.action" id="content-page" width="100%" height="120%" scrolling="no" frameborder="0"></iframe>

					</div>


				</div>
			</div>

		</div>

		<div class="row">
			<div class="layout-footer" style="text-align: center">@2017 www.zhaishidai.com</div>

		</div>

	</body>

</html>
