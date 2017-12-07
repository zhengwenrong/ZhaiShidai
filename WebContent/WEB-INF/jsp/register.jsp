<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript">
	/**************  Ajax  start  *****************/
	var xmlHttp;
	var account = false;
	var password = false;
	function createXMLHttp() {
		if (window.XMLHttpRequest) {
			xmlHttp = new XMLHttpRequest();
		} else {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	function checkUserid(userid) {
		if (null == userid || "" == userid) {
			document.getElementById("account_msg").innerHTML = "";
			return;
		}
		createXMLHttp();

		if (!confirmSubmit(userid)) {
			//输入字数有误
			document.getElementById("account_msg").innerHTML = "账号的长度必须在5,15之间";
			return;
		}

		xmlHttp.open("POST", "user/check?account=" + userid);
		xmlHttp.onreadystatechange = checkUseridCallback;
		xmlHttp.send(null);
		document.getElementById("account_msg").innerHTML = "正在验证...";
	}
	function checkUseridCallback() {
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {

				var text = xmlHttp.responseText;
				if (text == "true") { // 用户id已经存在了
					document.getElementById("account_msg").innerHTML = "帐号重复，无法使用！";
					account = false;
				} else {
					document.getElementById("account_msg").innerHTML = "此帐号可以注册！";
					account = true;
				}
			}
		}
	}

	function checkForm() {

		alert("checkForm");
		if (aaccount && password) {

			alert("true");
			return true;
		} else {

			alert("false");
			return false;
		}

	}
	/**************  Ajax  end  *****************/

	/***********  账号的输入限制  start ***************/
	function confirmSubmit(userid) {
		var _reg = /^\S{5,15}$/;

		var _check = true;
		if (!(_reg.test(userid))) {
			_check = false;
		}
		return _check;

	}

	/***********  账号和密码的输入限制  end***************/

	/****************  校验密码强度  start  ******************************/
	function AuthPasswd(string) {

		if (null == string || "" == string) {
			document.getElementById("password_msg").innerHTML = "";
			var r = document.getElementById("clearfix_ruo");
			var z = document.getElementById("clearfix_zhong");
			var q = document.getElementById("clearfix_qiang");
			r.style.backgroundColor = "#EEEEEE";
			z.style.backgroundColor = "#EEEEEE";
			q.style.backgroundColor = "#EEEEEE";
			return;
		}

		if (!confirmSubmit(string)) {
			//输入字数有误
			document.getElementById("password_msg").innerHTML = "密码的长度必须在5,15之间";
			return;
		}

		if (string.length >= 5) {

			document.getElementById("password_msg").innerHTML = "密码可以使用!";

			if (/[a-zA-Z]+/.test(string) && /[0-9]+/.test(string)
					&& /\W+\D+/.test(string)) {
				noticeAssign(1);
			} else if (/[a-zA-Z]+/.test(string) || /[0-9]+/.test(string)
					|| /\W+\D+/.test(string)) {
				if (/[a-zA-Z]+/.test(string) && /[0-9]+/.test(string)) {
					noticeAssign(-1);
				} else if (/\[a-zA-Z]+/.test(string) && /\W+\D+/.test(string)) {
					noticeAssign(-1);
				} else if (/[0-9]+/.test(string) && /\W+\D+/.test(string)) {
					noticeAssign(-1);
				} else {
					noticeAssign(0);
				}
			}
		} else {
			noticeAssign(null);
		}
	}

	function noticeAssign(num) {

		var r = document.getElementById("clearfix_ruo");
		var z = document.getElementById("clearfix_zhong");
		var q = document.getElementById("clearfix_qiang");
		if (num == 1) {

			r.style.backgroundColor = "green";
			z.style.backgroundColor = "green";
			q.style.backgroundColor = "green";

		} else if (num == -1) {
			r.style.backgroundColor = "yellow";
			z.style.backgroundColor = "yellow";
			q.style.backgroundColor = "#EEEEEE";
		} else if (num == 0) {
			r.style.backgroundColor = "red";
			z.style.backgroundColor = "#EEEEEE";
			q.style.backgroundColor = "#EEEEEE";
		}
	}

	function ConfirmPasswd(string) {

		var r = document.getElementById("pw1").value;
		if (r.length == string.length) {

			if (r == string) {
				document.getElementById("password_msg2").innerHTML = "";
				password = true;

			} else {
				password = false;
				document.getElementById("password_msg2").innerHTML = "密码不一致!";

			}

		}

	}
	/****************  校验密码强度  end  ******************************/
</script>
</head>
<body>
	<div class="registered-head-1"style="background:#000;">
		<div class="registered-head clearfix"  >
			<a href="#" class="fl"><img src="images/bg.jpg" ></a> <span>已有账号？<a
				href="user_login.jsp"><img src="images/denglud.jpg"></a></span>
		</div>
	</div>
	<form id="form" onsubmit="return checkForm()" name="register_form"
		action="${pageContext.servletContext.contextPath}/user/register.action"
		method="post">
		<div class="registered-head-2">
			<p>
				新帐号<input name="account" type="text" maxlength="15"
					onkeyup="checkUserid(this.value)" />&nbsp<font id="account_msg"></font>
			</p>


			<p class="registered-value-3">
				创建密码<input id="pw1" name="password1" type="password" maxlength="15"  onkeyup="AuthPasswd(this.value)">&nbsp<font
					id="password_msg"></font>
			</p>
			<ul class="clearfix">
				<li id="clearfix_ruo">弱</li>
				<li id="clearfix_zhong" class="registered-li-1">中</li>
				<li id="clearfix_qiang">强</li>
			</ul>
			<p class="registered-value-3">
				创建密码<input name="password2" id="pw2" onkeyup="ConfirmPasswd(this.value)"
					type="password" maxlength="15">&nbsp<font
					id="password_msg2"></font>
			</p>
			<p>
				<a onclick="document.getElementById('form').submit();"> <img
					src="${pageContext.request.contextPath }/img/register_logo.jpg" border="0" align="absmiddle">
				</a>
			</p>
			<p class="registered-value-4">
			
			</p>
		</div>
	</form> 
	<p class="registered-foot" style="padding-top:300px;" >  <center>©2017 宅食代 zhaishidai.com 京ICP证070791号
		京公网安备11010502025545号 电子公告服务规则 </center> </p>
		
</body>
</html>