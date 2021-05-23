<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>测试用户登录和注册</title>
</head>
<body background="aaa.jpg" style="background-color: #99ffff">
    <h1 align="center">登录你的用户账户！</h1>
    <form action="${pageContext.request.contextPath}/user/userLogin" method="post">
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
            请输入您的用户名： <input type="text" name="uname"> <br><br>
            请输入您的密码： <br><input type="password" name="password"><br><br>
            <input type="submit" value="登录">
        </div>
        <div style="border:1px  #000;
		height:140px;width:200px;
		margin:auto;position:absolute;top:60px;bottom:0;left:0;right:0;">
            <h1>还没有账户？</h1>

            点击这里创建一个账户！
            <br>
            <a href="${pageContext.request.contextPath}/UserAdd.jsp">创建一个账户！</a><br>
        </div>
    </form>


</body>
</html>