<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Title</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/base.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="${pageContext.request.contextPath }/css/metisMenu.min.css"
	rel="stylesheet">

<!-- DataTables CSS -->
<link
	href="${pageContext.request.contextPath }/css/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="${pageContext.request.contextPath }/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="${pageContext.request.contextPath }/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/css/boot-crm.css"
	rel="stylesheet" type="text/css">
<!-- jQuery -->
<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="${pageContext.request.contextPath }/js/metisMenu.min.js"></script>

<!-- DataTables JavaScript -->
<script
	src="${pageContext.request.contextPath }/js/jquery.dataTables.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="${pageContext.request.contextPath }/js/sb-admin-2.js"></script>

<style>
body {
	background-color: white;
	overflow: scroll;
}

.products td {
	vertical-align: middle !important;
	text-align: center;
}

scrollbar {
	visibility: collapse !important;
}
</style>

<script type="text/javascript">
	  	
			//定义了城市的二维数组，里面的顺序跟省份的顺序是相同的。通过selectedIndex获得省份的下标值来得到相应的城市数组    
			var category = [ [ "包点", "米粉、米线", "粥", "饮品" ], [ "主食", "老火靓汤", "米粉、米线", "饮品" ],
					[ "烧烤", "糖水", "包点", "糕点" ], [ "生鱼片", "寿司", "三文鱼" ],["茶","汤","其他"],["甜点","披萨","蛋糕","饼干"]];
			function getCategory() {
				//获得省份下拉框的对象    
				var sltC1 = document.form.category1;
	
				//获得城市下拉框的对象    
				var sltC2 = document.form.category2;
				//得到对应省份的城市数组    
				var selectCategory = category[sltC1.selectedIndex - 1];
				
				//清空城市下拉框，仅留提示选项    
				sltC2.length = 1;
				//将城市数组中的值填充到城市下拉框中    
				for (var i = 0; i < selectCategory.length; i++) {
					sltC2[i + 1] = new Option(selectCategory[i], selectCategory[i]);
				}
				
			}
			
			function changeCurrentPage(currentIndex){
				
				var form = document.getElementById("form");
				var currentPage = document.getElementById("currentPage");
				
				currentPage.value=currentIndex;
				alert(currentIndex);
				
				form.submit();
				
			}
		
    
    </script>

</head>
<body>

	<div class="row"
		style="margin-left: 15px; margin-right: 5px; margin-top: 10px;">
		<div class="panel panel-default">
			<div class="panel-body">
				<form id="form" name="form" class="form-inline"
					action="${pageContext.request.contextPath}/admin/toListMemuPage.action"
					method="post">
					<input type="hidden" id="currentPage" name="currentIndex" value="${query.currentIndex }">
					<div class="form-group">
						<label for="customerName">菜单名称</label> <input type="text"
							class="form-control" value="${query.menuName}" name="menuName">
					</div>
					<div class="form-group">
						<label for="customerFrom">菜单分类</label> <select name="category1"
							onchange="getCategory()" class="form-control" id="customerFrom">
							
							<c:if test="${query.category1 ==null  }">
								<option VALUE="" selected="selected">--请选择--</option>
							</c:if>
							<c:if test="${query.category1!=null }">
							
								<option VALUE="">--请选择--</option>
							</c:if>
							
							<c:if test="${query.category1 eq '精美早餐'  }">
								<option VALUE="精美早餐" selected>精美早餐</option>									
							</c:if>
							<c:if test="${query.category1 ne '精美早餐'  }">
								<option VALUE="精美早餐">精美早餐</option>									
							</c:if>
							
							<c:if test="${query.category1 eq '丰富主食'  }">
								<option VALUE="丰富主食" selected>丰富主食</option>									
							</c:if>
							<c:if test="${query.category1 ne '丰富主食'  }">
								<option VALUE="丰富主食">丰富主食</option>								
							</c:if>
							
							<c:if test="${query.category1 eq '小吃夜宵'  }">
								<option VALUE="小吃夜宵" selected>小吃夜宵</option>									
							</c:if>
							<c:if test="${query.category1 ne '小吃夜宵'  }">
								<option VALUE="小吃夜宵">小吃夜宵</option>									
							</c:if>
								
							<c:if test="${query.category1 eq '日韩料理'  }">
							<option VALUE="日韩料理" selected>日韩料理</option>
							</c:if>
							<c:if test="${query.category1 ne '日韩料理'  }">
							<option VALUE="日韩料理">日韩料理</option>
							</c:if>	
							
							<c:if test="${query.category1 eq '健康食疗'  }">
							<option VALUE="健康食疗" selected>健康食疗</option>
							</c:if>
							<c:if test="${query.category1 ne '健康食疗'  }">
							<option VALUE="健康食疗">健康食疗</option>
							</c:if>	
							
							<c:if test="${query.category1 eq '西方饮食'  }">
							<option VALUE="西方饮食" selected>西方饮食</option>
							</c:if>
							<c:if test="${query.category1 ne '西方饮食'  }">
							<option VALUE="西方饮食">西方饮食</option>
							</c:if>	
								

						</select> <select name="category2" class="form-control" id="custIndustry"
							name="custIndustry">
							
								<option value="">--请选择--</option>
						
						</select>
					</div>
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>

	</div>

	<div class="row" style="margin-left: 15px; margin-right: 5px;">
		<div class="panel panel-default">
			<div class="panel-heading">菜单列表</div>
			<!-- /.panel-heading -->
			<table class="table table-bordered table-striped table-hover">
				<thead>
					<tr>
						<th>所属分类</th>
						<th>名称</th>
						<th>价格</th>
						<th>描述</th>
						<th>图片</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${page.pageData}" var="memu">

						<tr class="products">
							<td><span>${memu.category}</span></td>
							<td><span>${memu.name}</span></td>
							<td><span>${memu.price}</span></td>
							<td><span>${memu.description}</span></td>
							<td><img
								src="${pageContext.request.contextPath }${memu.imageurl}"
								width="100" height="100" alt=""></td>
							<td><span><a href="#" class="btn btn-primary btn-xs"
									data-toggle="modal" data-target="#customerEditDialog"
									onclick="editCustomer(${row.cust_id})">修改</a> <a href="#"
									class="btn btn-danger btn-xs"
									onclick="deleteCustomer(${row.cust_id})">删除</a> </span></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="col-md-12 text-center">
				
				<ul class="pagination">
					<li><a href="#">Prev</a></li>
					<c:forEach begin="${page.currentPage }"  end="${page.totalPage }" varStatus="i">
						<li><a href="javaScript:void(0);" onclick="changeCurrentPage(${i.index})" class="active">${i.index }</a></li>
					
					</c:forEach>
					<li><a href="#">Next</a></li>
				</ul>
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	</div>

</body>
</html>