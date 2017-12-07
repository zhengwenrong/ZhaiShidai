<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
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

    <style>
        body {
            background-color: #fff;
        }
    </style>
    
    <script type="text/javascript">
  	//定义了城市的二维数组，里面的顺序跟省份的顺序是相同的。通过selectedIndex获得省份的下标值来得到相应的城市数组    
	var category = [ [ "包点", "米粉、米线", "粥", "饮品" ], [ "主食", "老火靓汤", "米粉、米线", "饮品" ],
			[ "烧烤", "糖水", "包点", "糕点" ], [ "生鱼片", "寿司", "三文鱼" ],["茶","汤","其他"],["甜点","披萨","蛋糕","饼干"]];
	function getCategory() {
		//获得省份下拉框的对象    
		var sltC1 = document.form.categort_1;
		//获得城市下拉框的对象    
		var sltC2 = document.form.categort_2;
		//得到对应省份的城市数组    
		var selectCategory = category[sltC1.selectedIndex - 1];
		//清空城市下拉框，仅留提示选项    
		sltC2.length = 1;
		//将城市数组中的值填充到城市下拉框中    
		for (var i = 0; i < selectCategory.length; i++) {
			sltC2[i + 1] = new Option(selectCategory[i], selectCategory[i]);
		}
		
	}
    
    </script>
    
</head>
<body>
    <div class="row clearfix" style="margin-top: 20px">
        <div class="col-md-12 column">																					
            <form name="form" class="form-horizontal" role="form" action="${pageContext.request.contextPath }/admin/saveMemu.action" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-1 control-label">菜单名称</label>
                    <div class="col-sm-4">
                        <input type="text" name="name" class="form-control" id="inputEmail3" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-1 control-label">菜单价格</label>
                    <div class="col-sm-4">
                        <input type="number" name="price" class="form-control" id="inputPassword3" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="category" class="col-sm-1 control-label">所属类别</label>
                    <div class="col-sm-4">
                        <div class="row">
                            <div class="col-sm-6 control-label">
                                <select class="form-control" name="categort_1" id="category" onchange="getCategory()">
                                    <option VALUE="0">请选择</option>
									<option VALUE="精美早餐">精美早餐</option>
									<option VALUE="丰富主食">丰富主食</option>
									<option VALUE="小吃夜宵">小吃夜宵</option>
									<option VALUE="日韩料理">日韩料理</option>
									<option VALUE="健康食疗">健康食疗</option>
									<option VALUE="西方饮食">西方饮食</option>

                                </select>
                            </div>
                            <div class="col-sm-6 control-label">
                                <select name="categort_2" class="form-control">

                                    <option>请选择</option>

                                </select>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="desc" class="col-sm-1 control-label">菜单图片</label>
                    <div class="col-sm-4">
                        <input name="uploadimage" type="file" height="40px" id="upload"  class="form-control">
                    </div>
                </div>

                <div class="form-group">
                    <label for="desc" class="col-sm-1 control-label">菜单描述</label>
                    <div class="col-sm-4">
                        <textarea name="description" id="desc" class="form-control"></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-10">
                        <button type="submit" class="btn btn-default">添加</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

</body>
</html>