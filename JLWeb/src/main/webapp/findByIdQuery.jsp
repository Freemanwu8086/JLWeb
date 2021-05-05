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
    <h1>Query One User information</h1>
    <form action="${pageContext.request.contextPath}/resume/findById" method="post">
        Please input id which you want to query:<input type="text" name="id"> <br>

        <input type="submit" value="Let's Query!">
    </form>


</body>
</html>