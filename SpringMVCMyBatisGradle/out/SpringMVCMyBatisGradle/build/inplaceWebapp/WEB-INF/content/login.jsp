<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    登录代码
    <div class="container">
    <div class="col-xs-6 col-md-8">
    	<img id="imglogin" src="images/13.jpg" width="1110px" height="800px" />
    </div>
    <div class="col-xs-6 col-md-4 logincss">
      <form class="form-signin" action="goMain" method="post">
        <h2 class="form-signin-heading">你好！请登录</h2>
          <c:if test="${not empty success}">
              ${success}
          </c:if>
        <label for="inputUser" class="sr-only">用户名</label>
        <input type="text" name="username"  id="inputUser" class="form-control" placeholder="User name" required autofocus>
        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" name="pass" id="inputPassword" class="form-control" placeholder="Password" required>
          <c:if test="${not empty message}">
              ${message}
          </c:if>
          <div class="checkbox">
              <label>
                <input type="checkbox" value="remember-me"> 记住密码
                <a href="register" class="registercss">注册</a>
              </label>
          </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
      </form>
	</div>
   </div> <!--  /container -->
<!--     ---------------------------------------------- -->
<!-- -------------------------------------- -->
<script src="<c:url value="/bootstrap/js/jquery-3.2.1.min.js"/>"></script>
<script src="<c:url value="/bootstrap/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/js/script.js"/>"></script>
</body>
</html>