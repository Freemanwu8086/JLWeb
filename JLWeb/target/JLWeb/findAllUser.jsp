<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Test FindAll</title>
</head>
<body>
    <h1>显示所有用户信息</h1>
    <c:forEach items="${requestScope.resumes}" var="resume">
        ${resume.toString()} <br>
    </c:forEach>

<a href="${pageContext.request.contextPath}/add.jsp">增加用户简历信息</a> <br>

    <a href="${pageContext.request.contextPath}/findByIdQuery.jsp">通过身份证号寻找用户信息</a> <br>

    <a href="${pageContext.request.contextPath}/update1.jsp">用过身份证号修改用户信息</a> <br>

    <a href="${pageContext.request.contextPath}/upload.jsp">文件的上传与下载</a>



</body>
</html>