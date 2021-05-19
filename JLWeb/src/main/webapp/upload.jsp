<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>测试上传与下载</title>
</head>
<body background="aaa.jpg">
    <h1>文件上传</h1>
    <form action="${pageContext.request.contextPath}/file/upload" method="post" enctype="multipart/form-data">
        <input type="file" name="img"/> <br>
        <br>
        <br>
        <input type="submit" value="上传文件">
    </form>

    <h1>文件下载</h1>
    <ul>
        <li>
            aa.txt:<a href="${pageContext.request.contextPath}/file/download?fileName=aa.txt">在线打开</a> <a href="${pageContext.request.contextPath}/file/download?fileName=aa.txt&openStyle=attch">附件下载</a> <br>
            Resume Model:<a href="${pageContext.request.contextPath}/file/download?fileName=index.jsp">在线打开</a> <a href="${pageContext.request.contextPath}/file/download?fileName=index.jsp&openStyle=attch">附件下载</a>
        </li>
    </ul>
</body>
</html>