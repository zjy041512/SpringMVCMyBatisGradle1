<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
    <link href="<c:url value="/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/css/css.css"/>" rel="stylesheet">
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container">
    <%--===============================================================================--%>
    <div class="row buycarcss">
        <c:forEach var="userGood" items="${userGoodList}">
            <div class="well well-lg">
                <div>${userGood.id}</div>
                <div>${userGood.goodName}</div>
                <div>${userGood.colorName}</div>
                <div>${userGood.buyCount}</div>
                <div>${userGood.traffic}</div>
            </div>
        </c:forEach>
    </div>
    <%--============================================================================--%>
</div>
<script src="<c:url value="/bootstrap/js/jquery-3.2.1.min.js"/>"></script>
<script src="<c:url value="/bootstrap/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/js/script.js"/>"></script>
</body>
</html>
