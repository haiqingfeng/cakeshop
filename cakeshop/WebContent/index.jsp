<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
</head>
<body>
	
<%-- <form action="${pageContext.request.contextPath}/cake/type">
	<input type="text" name="typeName" />
	<input type="submit" value="提交" />
</form> --%>

<a href="${pageContext.request.contextPath}/cake/type?typeName=海绵蛋糕">type</a>

</body>
</html>