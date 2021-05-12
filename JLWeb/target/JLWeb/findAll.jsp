<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>测试 查询所有</title>
</head>
<body>
    <h1>显示所有用户列表</h1>
    <c:forEach items="${requestScope.resumes}" var="resume">
        <input type="checkbox"> ${resume.name}| ${resume.school} <input type="submit" value="显示详情"> <br>
    </c:forEach>

<a href="${pageContext.request.contextPath}/add.jsp">增加用户简历信息</a> <br>

    <a href="${pageContext.request.contextPath}/delete.jsp">删除用户简历信息</a> <br>

    <a href="${pageContext.request.contextPath}/findByIdQuery.jsp">通过用户身份证号查找用户信息</a> <br>

    <a href="${pageContext.request.contextPath}/update1.jsp">通过用户身份证号修改用户信息</a> <br>

    <a href="${pageContext.request.contextPath}/upload.jsp">文件的上传与下载</a>



</body>
</html>