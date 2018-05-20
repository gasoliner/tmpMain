<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Cache-Control" content="no-cache"> 
<meta http-equiv="Expires" content="0"> 
<title>用户登录</title>
<link href="/ui/mymodel/login.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="login_box">
      <div class="login_l_img"><img src="/ui/mymodel/images/login-img.png" /></div>
      <div class="login">
          <div class="login_logo"><a href="#"><img src="/ui/mymodel/images/login_logo.png" /></a></div>
          <div class="login_name">
               <p>用户登录</p>
          </div>
          <form method="post" action="/login/login" >
              <input name="name" type="text"  value="账号" onfocus="this.value=''" onblur="if(this.value==''){this.value='账号'}">
              <span id="password_text" onclick="this.style.display='none';document.getElementById('password').style.display='block';document.getElementById('password').focus().select();" >密码</span>
<input name="password" type="password" id="password" style="display:none;" onblur="if(this.value==''){document.getElementById('password_text').style.display='block';this.style.display='none'};"/>
              <input value="登录" style="width:100%;" type="submit">
          </form>
      </div>
      <div class="copyright">TMP旅游指南 版权所有©2018 技术支持电话：+86-123123123</div>
</div>
</body>
</html>
