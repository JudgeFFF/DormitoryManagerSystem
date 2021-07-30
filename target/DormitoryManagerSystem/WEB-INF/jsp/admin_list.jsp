<%--
    Created by IntelliJ IDEA
    User: JudgeF
    Date: 2021-06-22
    Time: 下午 01:21
    To change this template use File | Settings | Live Templates
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.itheima.po.Admin" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>后台登录</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="/css/Home.css">
    <link rel="stylesheet" href="/css/Font.css">
    <link rel="icon" href="/images/User.ico" sizes="32x32"/>
    <script type="text/javascript" src="/js/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="/lib/layui/layui.js"></script>
    <script type="text/javascript" src="/layui_exts/excel.js"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
    <style type="text/css">
        .layui-table {
            text-align: center;
        }
        .layui-table th {
            text-align: center;
        }
    </style>
</head>

<body>
<%-- 顶部 --%>
<div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="/findAdmin">管理员信息</a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="/findAdmin"
       title="刷新">
        <i class="layui-icon" style="line-height:35px">↻</i></a>
</div>

<%-- 中部 --%>
<div class="x-body">
    <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so" action="/findAdmin">
            <input type="hidden" class="layui-input" placeholder="请输入用户名" name="a_id" id="a_id">
            <input class="layui-input" placeholder="请输入用户名" name="a_username" id="a_username">
            <input class="layui-input" placeholder="请输入级别描述" name="a_describe" id="a_describe">
            <input class="layui-input" type="hidden" name="pageIndex" value="1">
            <input class="layui-input" type="hidden" name="pageSize" value="3">
            <button class="layui-btn" lay-submit="" lay-filter="search"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>

    <%--表格数据--%>
    <table class="layui-table">
        <thead>
        <tr>
            <th>ID</th>
            <th>用户名</th>
            <th>姓名</th>
            <th>电话</th>
            <th>级别描述</th>
            <th>操作</th>
        </thead>
        <tbody>
        <c:forEach items="${ai.list}" var="ai">
            <tr>
                    <%--<td>--%>
                    <%--<div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>--%>
                    <%--</td>--%>
                    <%--<td>${class.c_id}</td>--%>
                <td class="myid">${ai.a_id}</td>
                <td>${ai.a_username}</td>
                    <%--<td>${ai.a_password}</td>--%>
                <td>${ai.a_name}</td>
                <td>${ai.a_phone}</td>
                    <%--<td>${ai.a_power}</td>--%>
                <td>${ai.a_describe}</td>
                <td class="td-manage">
                        <%--href="/findAdminById?a_id=${ai.a_id}"--%>
                    <a title="编辑" class="updateEdit" href="#">
                        <i class="layui-icon">&#xe642;</i>
                    </a>
                    <a title="删除" onclick="member_del(this,'${ai.a_id}','${ai.a_power}')" href="javascript:;">
                        <i class="layui-icon">&#xe640;</i>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <div class="">
        <input type="hidden" id="totalPageCount" value="${ai.pageTotalCount}"/>
        <c:import url="pageBtn.jsp">
            <c:param name="totalCount" value="${ai.totalCount}"/>
            <c:param name="currentPageNo" value="${ai.pageIndex}"/>
            <c:param name="totalPageCount" value="${ai.pageTotalCount}"/>
        </c:import>
    </div>
</div>

<script>
    /*编辑*/
    $(".updateEdit").click(function () {
        var myid = $(this).parent("td").parent("tr").children(".myid").html();
        //判断
        var admin_id = ${sessionScope.ad.a_id};
        if (admin_id != myid) {
            layer.alert("对不起，您没有权限:(");
        } else {
            <%--window.location.href = "/findAdminById?a_id=${ai.a_id}";--%>
            window.location.href = "/findAdminById?a_id=" + myid;
        }
    });
    /*删除*/
    function member_del(obj, a_id, a_power) {
        var power = ${sessionScope.ad.a_power};
        var id = ${sessionScope.ad.a_id};
        if (power != 1 && id != a_id) {
            layer.alert("对不起，您没有权限:(");
        }
            // else if(power == 1 && id == a_id){
            //     layer.alert("对不起，您没有权限:(");
        // }
        else {
            layer.confirm('确认要删除吗？', function (index) {
                //发异步删除数据
                $.get("/deleteAdmin", {"a_id": a_id}, function (data) {
                    if (data = true) {
                        layer.msg('删除成功!', {icon: 1, time: 2000});
                        setTimeout(function () {
                            window.location.href = '/findAdmin';
                        }, 2000);
                    } else {
                        layer.msg('删除失败!', {icon: 1, time: 2000});
                        setTimeout(function () {
                            window.location.href = '/findAdmin';
                        }, 2000);
                    }
                });
            });
        }
    }
</script>
</body>
</html>
