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
	$(document).ready(function() {
    if ($.cookie("rmbUser")=="true") {
        $("#rmbUser").attr("checked", true);
        $("#inputUser").val($.cookie("userName"));
        $("#inputPassword").val($.cookie("passWord"));
    }
});
//保存用户信息
function saveUserInfo() {
    if ($("#rmbUser:checked").length==1) {
        var userName = $("#inputUser").val();
        var passWord = $("#inputPassword").val();
        $.cookie("rmbUser", "true", { expires: 7 }); // 存储一个带7天期限的 cookie
        $.cookie("userName", userName, { expires: 7 }); // 存储一个带7天期限的 cookie
        $.cookie("passWord", passWord, { expires: 7 }); // 存储一个带7天期限的 cookie
    }
    else {
        $.cookie("rmbUser", "false", { expires: -1 });
        $.cookie("userName", '', { expires: -1 });
        $.cookie("passWord", '', { expires: -1 });
    }
}
</script>
</head>
<body>
	<%@include file="navbar.jsp" %>
    <!--登录代码-->
    <div class="container">
    <div class="col-xs-12 col-md-8">
    </div>
    <div class="col-xs-6 col-md-4 logincss">
      <form class="form-signin" action="goMain" method="post">
        <h2 class="form-signin-heading">请登录！</h2>
          <c:if test="${not empty success}">
              ${success}
          </c:if>
        <label for="inputUser" class="sr-only">用户名</label>
        <input type="text" name="username"  id="inputUser" class="form-control" placeholder="用户名" required autofocus>
        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" name="pass" id="inputPassword" class="form-control" placeholder="密码" required>
          <c:if test="${not empty message}">
              ${message}
          </c:if>
          <div class="checkbox">
              <label>
                <input type="checkbox" value="remember-me" id="rmbUser"> 记住密码
                <a href="reset"   class="registercss">修改密码</a>
                 <a href="register" class="registercss">注册</a>
              </label>
          </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="saveUserInfo()">登录</button>
      </form>
	</div>
    </div> <!-- /container -->

  

</body>
</html>