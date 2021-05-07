<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>测试删除用户</title>
</head>
<body>
    <h1>删除用户简历信息</h1>
    <form action="${pageContext.request.contextPath}/resume/delete" method="post">
       请输入您想删除的用户的身份证号以删除用户信息：<input type="text" name="id"/> <br>

        <input type="submit" value="delete this user's information">
    </form>


</body>
</html>