<%--
  Created by IntelliJ IDEA.
  User: I am master
  Date: 2017/8/2
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="title"> 用户登录 </div>
<div class="loginbox">

    <form id="loginForm" action="/checkVerificationCode" method="post">
        <div style="height:40px;">
            <label class="tip">登&nbsp;录&nbsp;名:&nbsp;&nbsp; </label>
            <input name="name" type="text" id="name" class="user-text" value="" />
        </div>
        <div style="height:40px;">
            <label class="tip">密 &nbsp;&nbsp;码：&nbsp;&nbsp;</label>
            <input type="password" id="password" name="password" class="user-text" value="" />
        </div>
        <div style="height:60px;">
            <label class="tip">验&nbsp;证&nbsp;码:&nbsp;&nbsp; </label>
            <input type="text" name="verifyCode" id="verifyCode" class="usertext" value="" />
            onchange="changeVerifyCode();"/>
            <img src="captcha-image.jpg" width="110" height="30" id="kaptchaImage"
                 style="margin-bottom: -13px"/>
        </div>
        <div style="margin-left:15px">
            <input type="submit" class="login-btn" value="登录" />
            <input type="reset"  class="login-btn" style="margin-left:10px;"  value="重置" />
        </div>
    </form>

</div>
<!--以下是js文件-->

<%--<script type="text/javascript" src="static/js/jquery-1.9.1.js"></script>--%>
<%--<script type="text/javascript">--%>
    <%--$(function(){--%>
        <%--$('#kaptchaImage').click(function () {--%>
            <%--$(this).attr('src', 'captcha-image.jpg?' + Math.floor(Math.random()*100) );--%>
        <%--})--%>
    <%--});--%>
    <%--//修改验证码触发的函数--%>

    <%--function  changeVerifyCode(){--%>
        <%--var verifyCodeValue = $("#verifyCode").val();--%>
        <%--if(verifyCodeValue.replace(/\s/g,"") == "") {--%>
            <%--alert("请输入验证码");--%>
        <%--}else {--%>
            <%--//异步检查验证码是否输入正确--%>

            <%--var verifyUrl = "${pageContext.request.contextPath}/checkVerificationCode";--%>
            <%--$.ajax({--%>
                <%--type:"POST",--%>
                <%--url:verifyUrl,--%>
                <%--data:{"verifyCode":verifyCodeValue},--%>
                <%--success:function(data){--%>
                    <%--if(data==true) {--%>
                        <%--//验证码正确，进行提交操作--%>

                        <%--//alert("输入正确 ！");--%>
                    <%--}else {--%>
                        <%--alert("请输入正确的验证码！");--%>
                    <%--}--%>
                <%--},--%>
                <%--error:function(e){--%>
                    <%--alert(e);--%>
                <%--}--%>
            <%--});--%>
        <%--}--%>
    <%--}--%>
<%--</script>--%>
</body>
</html>
