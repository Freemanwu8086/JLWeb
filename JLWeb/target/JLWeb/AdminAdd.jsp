<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>测试管理员注册</title>
</head>
<body>
    <h1>创建您的账户！</h1>
    <form action="${pageContext.request.contextPath}/user/save" method="post">
        请输入您的用户名：<input type="text" name="name"> <br>
        请输入您的密码：<input type="password" name="password"><br>

        <input type="submit" value="注册">
    </form>


</body>
</html>