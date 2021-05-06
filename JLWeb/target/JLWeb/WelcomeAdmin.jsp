<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Test Admin login and reg into User</title>
</head>
<body>
    <h1>Sign in your Admin Account!</h1>
    <form action="${pageContext.request.contextPath}/user/login" method="post">
        Please input your UserName: <input type="text" name="name"> <br>
        Please input your Password: <input type="password" name="password"><br>

        <input type="submit" value="Login">

        <h1>Don't Have Account?</h1>
        <br>
        Click Here to Create An Account!
        <br>
        <a href="${pageContext.request.contextPath}/AdminAdd.jsp">create an account</a>

    </form>


</body>
</html>