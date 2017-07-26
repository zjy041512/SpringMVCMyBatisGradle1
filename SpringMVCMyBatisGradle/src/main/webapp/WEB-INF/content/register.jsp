<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/css.css" rel="stylesheet">
</head>
<body>
	<%@include file="navbar.jsp" %>
<!-- ===================== -->
<div class="container">
<div class="col-xs-6 col-md-4"></div>
<div class="col-xs-6 col-md-4 topcss">
<form class="form-signin" action="goRegister" method="post">
        <h2 class="form-signin-heading">请注册</h2>
        <label for="inputUser" class="sr-only">用户名</label>
        <input type="text" name="name" id="inputUser" class="form-control" placeholder="User name" required autofocus>
        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" name="pass" id="inputPassword" class="form-control" placeholder="Password" required>
        <label for="inputE-mall" class="sr-only">email</label>
        <input type="text" name="email" id="inputemail" class="form-control" placeholder="email" required>
        <label for="inputphone" class="sr-only">phone</label>
        <input type="text" name="phone" id="inputphone" class="form-control" placeholder="phone" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">注册</button>
      </form>
</div>
<div class="col-xs-6 col-md-4"></div>
</div>
<!-- ================== -->
<script src="bootstrap/js/jquery-3.2.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>