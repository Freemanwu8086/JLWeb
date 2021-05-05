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
    <h1>show all users list</h1>
    <c:forEach items="${requestScope.resumes}" var="resume">
        ${resume.toString()} <br>
    </c:forEach>

<a href="${pageContext.request.contextPath}/add.jsp">Add user information</a> <br>

    <a href="${pageContext.request.contextPath}/delete.jsp">Delete user information</a> <br>

    <a href="${pageContext.request.contextPath}/findByIdQuery.jsp">Find user information By Id</a> <br>

    <a href="${pageContext.request.contextPath}/update.jsp">Update user information By Id</a> <br>

    <a href="${pageContext.request.contextPath}/upload.jsp">Upload and Down</a>



</body>
</html>