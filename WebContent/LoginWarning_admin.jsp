<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户不存在提示</title>
</head>
<script type="text/javascript">
	function warning() {
		alert("用户不存在！");
	}
</script>
<body onload="warning()">
<% response.setHeader("refresh","1;URL=Admin_Login.html");%>
</body>
</html>