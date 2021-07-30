<%--
    Created by IntelliJ IDEA
    User: JudgeF
    Date: 2021-06-22
    Time: 上午 10:12
    To change this template use File | Settings | Live Templates
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>前台首页</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="/css/Login.css">
    <link rel="stylesheet" href="/css/Home.css">
    <link rel="icon" href="/images/User.ico" sizes="32x32"/>
    <script type="text/javascript" src="/js/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="/lib/layui/layui.js"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
    <script type="text/javascript" src="/js/login.js"></script>
</head>

<body>
<%--顶部--%>
<div class="header">
    <span>宿舍管理系统</span>
</div>

<%--中部--%>
<div class="body">
    <div class="panel">
        <div class="top">
            <p>账户登陆</p>
        </div>

        <div class="middle">
            <form action="/login" method="post" onsubmit="return check()">
                <span class="s1"></span>
                <span class="s2"></span>
                <input type="text" class="username" name="a_username" id="a_username" value="" class="iputs"/>
                <input type="password" class="password" name="a_password" id="a_password" value="" class="iputs"/>
                <input type="submit" class="submit" value="登陆"/>
                <input type="button" class="register" id="addUserBtn" value="注册"/>
            </form>
            <span class="erro" id="message">${msg}</span>
        </div>
    </div>

    <%--添加模态框--%>
    <div class="layui-row" id="test" style="display: none;">
        <div class="layui-col-md10">
            <form class="layui-form" id="addEmployeeForm">
                <div class="layui-form-item">
                    <label class="layui-form-label">用户名：</label>
                    <div class="layui-input-block">
                        <input type="text" name="a_username" class="layui-input" placeholder="请输入用户名">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">密码：</label>
                    <div class="layui-input-block">
                        <input type="password" lay-verify="required" name="a_password" class="layui-input" placeholder="请输入密码">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">姓名：</label>
                    <div class="layui-input-block">
                        <input type="text" name="a_name" class="layui-input" placeholder="请输入姓名">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">电话：</label>
                    <div class="layui-input-block">
                        <input type="text" name="a_phone" class="layui-input" placeholder="请输入电话">
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button type="button" class="layui-btn layui-btn-normal" lay-submit lay-filter="formDemo">提交
                        </button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<%--尾部--%>
<div class="footer">
    <span>@Copyright © 2020-2021 版权所有</span>
</div>

<script>
    // 判断是登录账号和密码是否为空
    function check(){
        let a_username = $("#a_username").val();
        let a_password = $("#a_password").val();
        if(a_username == "" || a_password == ""){
            $("#message").text("用户名或密码不能为空！");
            return false;
        }
        return true;
    }

    layui.use(['jquery', 'form', 'layer', 'laydate'], function () {
        var form = layui.form,
            $ = layui.jquery,
            laydate = layui.laydate;
        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });
        /*添加弹出框*/
        $("#addUserBtn").click(function () {
            layer.open({
                type: 1,
                title: "用户注册",
                skin: "myclass",
                area: ["50%"],
                anim: 2,
                content: $("#test").html()
            });
            $("#addEmployeeForm")[0].reset();
            form.on('submit(formDemo)', function (data) {
                //layer.msg('aaa',{icon:1,time:3000});
                var param = data.field;
                //console.log(JSON.stringify(param));
                $.ajax({
                    url: '/addAdmin',
                    type: "post",
                    data: JSON.stringify(param),
                    contentType: "application/json; charset=utf-8",
                    success: function () {
                        layer.msg('添加成功', {icon: 1, time: 2000});
                        setTimeout(function () {
                            window.location.href = '/';
                        }, 2000);
                    },
                    error: function () {
                        layer.msg('添加失败', {icon: 0, time: 2000});
                        setTimeout(function () {
                            window.location.href = '/';
                        }, 2000);
                    }
                });
                // return false;
            });
        });
    });
</script>
</body>
</html>
