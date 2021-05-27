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
    <title>Test Add User</title>
</head>
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
<body style="text-align: center">
<form action="${pageContext.request.contextPath}/resume/userSave" method="post">
<table border="2"
       cellspacing="1px"
       style="margin:auto;"
       width="950px">
    <tr height="50"  style="text-align: center;">
        <td rowspan="2"
            class="style1">姓名(*)</td>
        <td rowspan="2" width="150"> <input type="text" name="name"></td>
        <td width="130"
            class="style1">性别(*)</td>
        <td width="330">
            <select name="sex">
                <option value = "男">男</option>
                <option value = "女">女</option>
            </select>
        </td>
        <td class="style1">文化程度(*)</td>
        <td width="150">
            <select name="eduLevel">
                <option value ="高中">高中</option>
                <option value ="大专">大专</option>
                <option value ="本科">本科</option>
                <option value ="硕士">硕士</option>
                <option value ="博士">博士</option>
            </select>
        </td>
    </tr>
    <tr height="50" style="text-align: center;">
        <td class="style1">身高</td>
        <td><input type="text" name="height">CM</td>

        <td class="style1">政治面貌</td>
        <td>
            <select name="zzmm">
                <option value ="群众">群众</option>
                <option value ="共青团员">共青团员</option>
                <option value ="民主党派">民主党派</option>
                <option value ="共产党员">共产党员</option>
            </select>
        </td>
    </tr>
    <tr height="50" style="text-align: center;">
        <td width="100"
            class="style1">籍贯(*)</td>
        <td colspan="2"><input type="text" name="familyAddress"></td>
        <td class="style1">出生年月(*)</td>
        <td colspan="2"><input type="date" name="birthday"></td>
    </tr>
    <tr height="50" style="text-align: center;">
        <td class="style1">户口所在地(*)</td>
        <td colspan="2"><input type="text" name="address"></td>
        <td class="style1">婚否(*)</td>
        <td width="100">
            <select name="marriage">
                <option value ="未婚">未婚</option>
                <option value ="已婚">已婚</option>
            </select>
        </td>
        <td class="style1">民族(*)</td>
        <td><input type="text" name="nationality"></td>
    </tr>
    <tr height="50" style="text-align: center;">
        <td class="style1">身份证号码(请输入身份证号后8位！*)</td>
        <td colspan="2"><input type="text" name="id" maxlength="8"></td>
        <td class="style1">个人邮箱(*)</td>
        <td colspan="3"><input type="text" name="email"></td>
    </tr>
    <tr height="50" style="text-align: center;">
        <td class="style1">毕业院校(*)</td>
        <td colspan="3" ><input type="text" name="school"></td>
        <td class="style1">毕业时间(*)</td>
        <td colspan="2"><input type="date" name="graduTime"></td>
    </tr>
    <tr height="50" style="text-align: center;">
        <td class="style1">学习专业(*)</td>
        <td colspan="3"><input type="text" name="major"></td>
        <td class="style1">爱好特长</td>
        <td colspan="2"><input type="text" name="hobby"></td>
    </tr>
    <tr height="50" style="text-align: center;">
        <td rowspan="2"
            class="style1">个人简介(*)</td>
        <td colspan="6" rowspan="2"><input type="text" name="introduction"></td>
    </tr>
    <tr height="50" style="text-align: center;"></tr>
    <tr height="50" style="text-align: center;">
        <td><input type="text" value="just for test here, do not chang it!"></td>
    </tr>

</table>


        <input style="margin-top: 10px;" type="submit" value="保存您的信息">

</form>
</body>
</html>