<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="./css1.css">
    <title>Test FindById</title>
</head>
<body>
    <h1>测试 通过身份证号查询并修改</h1>
<%--    ${resume.toString()}<br>--%>
    <style>
        body {
            background-color: white;
        }
    </style>
    <h1  width="200" style="text-align: center;
background-color:rgba(255, 99, 71, 0.4);
border: 10px solid #ccc; border-radius: 16px;">
        个人简历
    </h1>
    <body>
    <form action="${pageContext.request.contextPath}/resume/update" method="post">
        <table border="2"
               cellspacing="1px"
               style="margin:auto;"
               width="950px">
            <tr height="50"  style="text-align: center;">
                <td rowspan="2"
                    class="style1">姓名(*)</td>
                <td rowspan="2" width="150"> <input type="text" name="name" value="${resume.name}"></td>
                <td width="130"
                    class="style1">性别(*)</td>
                <td width="330">
                    <input type="text" name="sex" value="${resume.sex}">
                </td>
                <td class="style1">文化程度(*)</td>
                <td width="150">
                    <input type="text" name="eduLevel" value="${resume.eduLevel}">
                </td>
            </tr>
            <tr height="50" style="text-align: center;">
                <td class="style1">身高</td>
                <td><input type="text" name="height" value="${resume.height}">CM</td>

                <td class="style1">政治面貌</td>
                <td>
                    <input type="text" name="zzmm" value="${resume.zzmm}">
                </td>
            </tr>
            <tr height="50" style="text-align: center;">
                <td width="100"
                    class="style1">籍贯(*)</td>
                <td colspan="2"><input type="text" name="familyAddress" value="${resume.familyAddress}"></td>
                <td class="style1">出生年月(*)</td>
                <td colspan="2"><input type="date" name="birthday" value="${resume.birthday}"></td>
            </tr>
            <tr height="50" style="text-align: center;">
                <td class="style1">户口所在地(*)</td>
                <td colspan="2"><input type="text" name="address" value="${resume.address}"></td>
                <td class="style1">婚否(*)</td>
                <td width="100">
                    <input type="text" name="marriage" value="${resume.marriage}">
                </td>
                <td class="style1">民族(*)</td>
                <td><input type="text" name="nationality" value="${resume.nationality}"></td>
            </tr>
            <tr height="50" style="text-align: center;">
                <td class="style1">身份证号码(*)</td>
                <td colspan="2"><input type="text" name="id" value="${resume.id}"></td>
                <td class="style1">个人邮箱(*)</td>
                <td colspan="3"><input type="text" name="email" value="${resume.email}"></td>
            </tr>
            <tr height="50" style="text-align: center;">
                <td class="style1">毕业院校(*)</td>
                <td colspan="3" ><input type="text" name="school" value="${resume.school}"></td>
                <td class="style1">毕业时间(*)</td>
                <td colspan="2"><input type="date" name="graduTime" value="${resume.graduTime}"></td>
            </tr>
            <tr height="50" style="text-align: center;">
                <td class="style1">学习专业(*)</td>
                <td colspan="3"><input type="text" name="major" value="${resume.major}"></td>
                <td class="style1">爱好特长</td>
                <td colspan="2"><input type="text" name="hobby" value="${resume.hobby}"></td>
            </tr>
            <tr height="50" style="text-align: center;">
                <td rowspan="2"
                    class="style1">个人简介(*)</td>
                <td colspan="6" rowspan="2"><input type="text" name="introduction" value="${resume.introduction}"></td>
            </tr>
            <tr height="50" style="text-align: center;"></tr>
            <tr height="50" style="text-align: center;">
                <td><input type="text" value="just for test here, do not change it!"></td>
            </tr>

        </table>
        <input style="align-content: center" type="submit" value="重构您的信息">
        </form>
</body>
</html>