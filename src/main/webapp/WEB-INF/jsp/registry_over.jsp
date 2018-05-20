<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册完成</title>
</head>
<body>
<c:if test="${new_id != null}">
    恭喜您注册成功，您的账号是<h1>${new_id}</h1><br/>
    点击<a href="/">返回主页</a> <br/>
    点击<a href="/login/ui">登录</a>
</c:if>
<c:if test="${new_id == null}">
    注册失败，<a href="/login/registry_ui">点击返回注册页面</a>
</c:if>
</body>
</html>
