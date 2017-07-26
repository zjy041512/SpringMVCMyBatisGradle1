<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
        <h2 class="form-signin-heading">Please register</h2>
        <label for="inputUser" class="sr-only">User name</label>
        <input type="text" name="name" id="inputUser" class="form-control" placeholder="User name" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="pass" id="inputPassword" class="form-control" placeholder="Password" required>
        <label for="inputPassword1" class="sr-only">confirm</label>
        <input type="password" name="confirm" id="inputPassword1" class="form-control" placeholder="confirm">
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>
</div>
<div class="col-xs-6 col-md-4"></div>
</div>
<!-- ================== -->
<script src="bootstrap/js/jquery-3.2.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>