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
<body align="right-side"
      style="font-family:;width:100%;height:800px;background-color: #99ffff">

<div style="padding:10px;border-radius:20px;
	border:1px solid #000000;
	background-color:#66ccff;
	border-radius: 8px;

		">
    <div align="left"></div>
    <p>现在您所登录的管理员身份为：${loginUser.uname}</p>

    <h1 align="center">显示所有用户信息</h1>
    <form action="${pageContext.request.contextPath}/resume/findByName" method="post">
    <div align="right">
        <input type="text" style="width:300px;" name="name" placeholder="在此处进行基于用户姓名的全局模糊查询">
        <input type="submit" value="点击查询" style="border-radius:20px">
    </div>
    </form>
</div>

<div style="float:right;width:80%;
	height:600px;border:1px solid #000000;
	text-align:center;
	margin-top:20px;
	margin-light:10px;
	margin-left:0px;
	border-radius:20px;">
    <div style="width:5%;height:5%; ">
        <input type="submit" value="删除选中的所有信息" style="border-radius:20px" onclick="del()" id="deleteAll">
    </div>
    <div style="width:20%;float:left;">身份证号后8位</div>
    <div style="width:19%;float:left;">姓名</div>
    <div style="width:19%;float:left;">学校</div>
    <div style="width:19%;float:left;">专业</div>
    <p>________________________________________________________________________________________________________________________________________________________________</p>
    <c:forEach items="${requestScope.resumes}" var="resumes"><br>

    <form action="${pageContext.request.contextPath}/resume/delete" method="post">
        <div style="width:20%;float:left;">
            <input type="checkbox" value="${resume.id}" name="box">
            <input type="submit"  value="删除" style="border-radius:20px">
            <input type="text" name="id" value="${resumes.id}" style="display: none">
            ${resumes.id}
        </div>
    </form>
        <div style="width:19%; float:left;">  ${resumes.name}
        </div>
        <div style="width:19%; float:left;">  ${resumes.school}
        </div>
        <div style="width:19%; float:left;">  ${resumes.major}</div>

    <form action="${pageContext.request.contextPath}/resume/findById" method="post">
        <div style="width:19%; float:left;">
            <input type="submit" value="查看简历详情" style="border-radius:20px">
            <input type="test" name="id" value="${resumes.id}" style="display: none">
        </div>
    </form>
        <form action="${pageContext.request.contextPath}/resume/findByIdUpdate" method="post">
            <div style="width:4%; float:left;">
                <input type="submit" value="修改" style="border-radius:20px">
                <input type="text" name="id" value="${resume.id}" style="display: none">
            </div>
        </form>

        <p>________________________________________________________________________________________________________________________________________________________________</p>
    </c:forEach>
    <div style="margin-top: 10px;">
        <input type="submit" value="上一页">
        <input type="submit" value="下一页">
    </div>
</div>

<div style="float:left;
margin-right:10px;
margin-top:20px;
width:18%;border:1px solid;
height:600px;
border-radius:20px;">


    <div style="
			width:80%;
            height:50px;
			line-height:50px;
			color: #444444;
            text-align:center;
			margin-top:10px;
			margin-left:20px;
			border:1px solid;
			border-radius:8px;
			background-color:#CCCCCC;
			"
         align="middle">
        <a href="${pageContext.request.contextPath}/add.jsp"
           style="text-decoration:none;">增加用户简历信息
        </a>
    </div><br>

    <div style="
			width:80%;
            height:50px;
			line-height:50px;
			color: #444444;
            text-align:center;
			margin-top:10px;
			margin-left:20px;
			border:1px solid;
			border-radius:8px;
			background-color:#CCCCCC;
			"
         align="middle">
        <a href="${pageContext.request.contextPath}/findByIdQuery.jsp"
           style="text-decoration:none;">身份证号寻找用户信息
        </a>
    </div><br>

    <div style="
			width:80%;
            height:50px;
			line-height:50px;
			color: #444444;
            text-align:center;
			margin-top:10px;
			margin-left:20px;
			border:1px solid;
			border-radius:8px;
			background-color:#CCCCCC;
			"
         align="middle">
        <a href="${pageContext.request.contextPath}/delete.jsp"
           style="text-decoration:none;">身份证号删除用户信息
        </a>
    </div><br>

    <div style="
			width:80%;
            height:50px;
			line-height:50px;
			color: #444444;
            text-align:center;
			margin-top:10px;
			margin-left:20px;
			border:1px solid;
			border-radius:8px;
			background-color:#CCCCCC;
			"
         align="middle">
        <a href="${pageContext.request.contextPath}/update1.jsp"
           style="text-decoration:none;">身份证号修改用户信息
        </a>
    </div><br>

    <div style="
			width:80%;
            height:50px;
			line-height:50px;
			color: #444444;
            text-align:center;
			margin-top:10px;
			margin-left:20px;
			border:1px solid;
			border-radius:8px;
			background-color:#CCCCCC;
			"
         align="middle">
        <a href="${pageContext.request.contextPath}/upload.jsp"
           style="text-decoration:none;">文件的上传与下载
        </a>
    </div>
</div>

<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.js"></script>
<script type="text/javascript">
    //全选
    var oid=document.getElementsByName("box");
    /*封面图-批量删除*/
    function del(){
        var r=confirm("是否确认删除？");
        var id;
        if (r == true) {
            alert("删除成功！");
            //确认删除
            var n = 0;
            var ids = "";
            for (var i = 0; i < oid.length; i++) {
                if (oid[i].checked == true) {   //选中为true
                    id = oid[i].value;
                    if (n == 0) {
                        ids += "id=" + id;
                    } else {
                        ids += "&id=" + id;
                    }
                    n++;
                }
            }
            //上面会拼接出一个名为ids的数组ids=1&ids=2&ids=3&ids=4……
            $.get("deleteByIds", ids, function (data) {
                if (data == "ok") {
                    alert("删除成功!");
                    //删除成功后，调用action方法刷新页面信息
                    location.reload();
                    $("input[name=id]").removeAttr("checked");
                } else {
                    alert("请刷新页面！");
                }
            });
            return true;
        } else {
            //不删除
            alert("请选中行！");
            return false;
        }
    }
</script>

</body>
</html>