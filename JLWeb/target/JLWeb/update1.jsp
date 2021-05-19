<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>测试用户信息更新</title>
</head>
<body background="aaa.jpg">
    <h1 align="center">更新用户信息</h1>
    <form action="${pageContext.request.contextPath}/resume/findByIdUpdate" method="post">
        <div align="center"
             style="border:1px solid #000;background-color:#99ffff;
		height:200px;width:300px;
		margin:auto;position:absolute;top:20;bottom:120;left:0;right:0;
		-webkit-border-radius: 8px;
		-moz-border-radius: 8px;
		border-radius: 8px;
		-webkit-box-shadow: #ccc 0px 0px 10px;
 		-moz-box-shadow: #ccc 0px 0px 10px;
 		box-shadow: #bbb 10px 10px 30px;"><br>
        请输入您想修改信息对应的身份证号：<br><br><input type="text" name="id"/> <br><br>

        <input type="submit" value="重构用户信息">
        </div>
    </form>


</body>
</html>