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
<script src="bootstrap/js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/jquery.cookie.js" type="text/javascript"></script>
<script type="text/javascript">

</script>
</head>
<body>
	<%@include file="navbar.jsp" %>
    <!--登录代码-->
    <div class="container">
    <div class="col-xs-12 col-md-8">
    </div>
    <div class="col-xs-6 col-md-4 logincss">
      <form class="form-signin" action="login" method="post">
        <h2 class="form-signin-heading">管理员请登录！</h2>
          <c:if test="${not empty success}">
              ${success}
          </c:if>
        <label for="inputUser" class="sr-only">用户名</label>
        <input type="text" name="adminname"  id="inputAdmin" class="form-control" placeholder="用户名" required autofocus>
        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" name="pass" id="inputPassword" class="form-control" placeholder="密码" required>
          <c:if test="${not empty message}">
              ${message}
          </c:if>
          
        <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="saveUserInfo()">登录</button>
      </form>
	</div>
    </div> <!-- /container -->

  

</body>
</html>