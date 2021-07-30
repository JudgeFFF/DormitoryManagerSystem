<%--
    Created by IntelliJ IDEA
    User: JudgeF
    Date: 2021-06-22
    Time: 下午 05:12
    To change this template use File | Settings | Live Templates
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>修改信息-学生</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="/css/Home.css">
    <link rel="stylesheet" href="/css/Font.css">
    <link rel="stylesheet" href="/css/pg_btn.css">
    <link rel="icon" href="/images/User.ico" sizes="32x32"/>
    <script type="text/javascript" src="/js/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="/lib/layui/layui.js"></script>
    <script type="text/javascript" src="/xadmin.js"></script>
</head>

<body>
<%--中部--%>
<div class="x-body">
    <form class="layui-form" action="/updateStudent" method="post" id="f_auto" accept-charset="UTF-8">
        <input type="hidden" value="${sessionScope.s.s_id}" name="s_id" id="s_id"/>

        <div class="layui-form-item">
            <label for="s_studentid" class="layui-form-label">
                <span class="f_sp">学号</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="s_studentid" name="s_studentid"
                       autocomplete="off" value="${sessionScope.s.s_studentid}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="s_name" class="layui-form-label">
                <span class="f_sp">姓名</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="s_name" name="s_name"
                       autocomplete="off" value="${sessionScope.s.s_name}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="s_sex" class="layui-form-label">
                <span class="f_sp">性别</span>
            </label>
            <div class="layui-input-inline" id="s_sex">
                <input type="radio" name="s_sex" id="s_male" value="男" title="男" checked="">
                <input type="radio" name="s_sex" id="s_female" value="女" title="女">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="s_age" class="layui-form-label">
                <span class="f_sp">年龄</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="s_age" name="s_age"
                       autocomplete="off" value="${sessionScope.s.s_age}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="s_phone" class="layui-form-label">
                <span class="f_sp">电话</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="s_phone" name="s_phone"
                       autocomplete="off" value="${sessionScope.s.s_phone}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="s_classid" class="layui-form-label">
                <span class="">*</span>班级编号
            </label>
            <div class="layui-input-inline">
                <input type="text" id="s_classid" name="s_classid"
                       autocomplete="off" value="${sessionScope.s.s_classid}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="s_classid" class="layui-form-label">
                <span class="">*</span>班级名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="s_classname" name="s_classname"
                       autocomplete="off" value="${sessionScope.s.s_classname}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="s_dormitoryid" class="layui-form-label">
                <span class="">*</span>寝室编号
            </label>
            <div class="layui-input-inline">
                <input type="text" id="s_dormitoryid" name="s_dormitoryid"
                       autocomplete="off" value="${sessionScope.s.s_dormitoryid}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item" id="btn_xg">
            <button class="layui-btn" id="btn_on" lay-filter="updateForm" lay-submit="">
                修改
            </button>
        </div>
    </form>
</div>
</body>
</html>
