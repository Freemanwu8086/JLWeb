<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <meta charset = "UTF-8">
    <link rel="stylesheet" href="./css1.css">
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
<body>
<h6> This is just a Model.</h6>
<table border="2"
       cellspacing="1px"
       style="margin:auto;"
       width="950px">
    <tr height="50"  style="text-align: center;">
        <td rowspan="2"
            class="style1">姓名(*)</td>
        <td rowspan="2" width="150"> <input id = "xm" value = "吴思卿"></td>
        <td width="130"
            class="style1">性别(*)</td>
        <td width="330">
            <select id="xb">
                <option value = "男">男</option>
                <option value = "女">女</option>
            </select>
        </td>
        <td class="style1">文化程度(*)</td>
        <td width="150">
            <select id ="whcd">
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
        <td><input id="sg" value="176">CM</td>
        <td class="style1">政治面貌</td>
        <td>
            <select id="zzmm" type = "sname">
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
        <td colspan="2"><input id="jg" value="陕西省汉中市汉台区"></td>
        <td class="style1">出生年月(*)</td>
        <td colspan="2"><input id="csny" value="1999.08"></td>
    </tr>
    <tr height="50" style="text-align: center;">
        <td class="style1">户口所在地(*)</td>
        <td colspan="2"><input id="hkszd" value="陕西省汉中市汉台区"></td>
        <td class="style1">婚否(*)</td>
        <td width="100">
            <select id="hf">
                <option value ="未婚">未婚</option>
                <option value ="已婚">已婚</option>
            </select>
        </td>
        <td class="style1">民族(*)</td>
        <td><input id="mz" value="汉族"></td>
    </tr>
    <tr height="50" style="text-align: center;">
        <td class="style1">身份证号码(*)</td>
        <td colspan="2"><input id="sfzhm" value="6123011999xxxx2731"></td>
        <td class="style1">个人邮箱(*)</td>
        <td colspan="3"><input id="yx" value="1183446250@qq.com"></td>
    </tr>
    <tr height="50" style="text-align: center;">
        <td class="style1">毕业院校(*)</td>
        <td colspan="3" ><input id="byyx" value="西安石油大学"></td>
        <td class="style1">毕业时间(*)</td>
        <td colspan="2"><input id="bysj" value="2022.06"></td>
    </tr>
    <tr height="50" style="text-align: center;">
        <td class="style1">学习专业(*)</td>
        <td colspan="3"><input id="xxzy" value="计算机科学与技术"></td>
        <td class="style1">爱好特长</td>
        <td colspan="2"><input id="ahtc" value="篮球，足球，音乐，写代码！"></td>
    </tr>
    <tr height="50" style="text-align: center;">
        <td rowspan="2"
            class="style1">个人简介(*)</td>
        <td colspan="6" rowspan="2"><textarea id="grjj" cols="145" rows="3"></textarea></td>
    </tr>
    <tr height="50" style="text-align: center;"></tr>
    <tr height="50" style="text-align: center;">
        <td><input type="text" value="just for test here, do not change it!"></td>

</table>


</body>
</html>
