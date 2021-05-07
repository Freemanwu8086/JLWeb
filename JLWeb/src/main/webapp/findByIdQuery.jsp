<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Test Add User</title>
</head>
<body>
    <h1>搜索一个用户的信息</h1>
    <form action="${pageContext.request.contextPath}/resume/findById" method="post">
        请输入您要查询信息所对应的身份证号：<input type="text" name="id"> <br>

        <input type="submit" value="让我们查询！">
    </form>


</body>
</html>