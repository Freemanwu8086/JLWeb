<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>测试用户功能</title>
</head>
<body align="center">
    <h1>用户功能界面</h1>
    <p>现在您所登录的用户身份为：${loginUser.name}</p>

<a style="
			width:80%;
            height:50px;
			line-height:50px;
			color: #444444;
            text-align:center;
			margin-top:10px;
			margin-left:20px;
			border:1px solid;
			border-radius:8px;
			background-color:#CCCCCC;
			text-decoration:none
			"
   align="middle" href="${pageContext.request.contextPath}/add.jsp">增加用户简历信息</a> <br>

    <a style="
			width:80%;
            height:50px;
			line-height:50px;
			color: #444444;
            text-align:center;
			margin-top:10px;
			margin-left:20px;
			border:1px solid;
			border-radius:8px;
			background-color:#CCCCCC;
			text-decoration:none
			"
       align="middle" href="${pageContext.request.contextPath}/findByIdQuery.jsp">通过身份证号寻找用户信息</a> <br>

    <a style="
			width:80%;
            height:50px;
			line-height:50px;
			color: #444444;
            text-align:center;
			margin-top:10px;
			margin-left:20px;
			border:1px solid;
			border-radius:8px;
			background-color:#CCCCCC;
			text-decoration:none
			"
       align="middle"  href="${pageContext.request.contextPath}/update1.jsp">用过身份证号修改用户信息</a> <br>

    <a style="
			width:80%;
            height:50px;
			line-height:50px;
			color: #444444;
            text-align:center;
			margin-top:10px;
			margin-left:20px;
			border:1px solid;
			border-radius:8px;
			background-color:#CCCCCC;
			text-decoration:none
			"
       align="middle"  href="${pageContext.request.contextPath}/upload.jsp">文件的上传与下载</a>



</body>
</html>