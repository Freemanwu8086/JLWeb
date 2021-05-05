<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Test Upload And Download</title>
</head>
<body>
    <h1>File Upload</h1>
    <form action="${pageContext.request.contextPath}/file/upload" method="post" enctype="multipart/form-data">
        <input type="file" name="img"/> <br>
        <br>
        <br>
        <input type="submit" value="Upload File">
    </form>

    <h1>File Down</h1>
    <ul>
        <li>
            aa.txt:<a href="${pageContext.request.contextPath}/file/download?fileName=aa.txt">Open Online</a> <a href="${pageContext.request.contextPath}/file/download?fileName=aa.txt&openStyle=attch">Attachment Down</a> <br>
            Resume Model:<a href="${pageContext.request.contextPath}/file/download?fileName=index.jsp">Open Online</a> <a href="${pageContext.request.contextPath}/file/download?fileName=index.jsp&openStyle=attch">Attachment Down</a>
        </li>
    </ul>


</body>
</html>