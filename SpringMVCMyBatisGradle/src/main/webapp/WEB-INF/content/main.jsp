<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
<!-- ================================================= -->
<div class="container">
    <div id="carousel-example-generic" class="carousel slide carouselcss" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="images/1.jpg" alt="..." height="400px"/>
                <div class="carousel-caption">
                </div>
            </div>
            <div class="item">
                <img src="images/2.jpg" alt="..." height="400px"/>
                <div class="carousel-caption">
                </div>
            </div>
            <div class="item">
                <img src="images/1.jpg" alt="..." height="400px"/>
                <div class="carousel-caption">
                </div>
            </div>
        </div>


        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
<!-- ============================================================== -->
<div class="container marketing">
    <!-- Three columns of text below the carousel -->
    <div class="row">
        <c:forEach var="good" items="${goodList}">
            <div class="col-lg-3">
                <img class="img-circle"
                     src="images/${good.goodPicture}"
                     alt="Generic placeholder image" width="120" height="120">
                <h4>${good.goodName}</h4>
                <p>价格：${good.goodPrice}元</p>
                <p>星级评价：${good.goodRating}星</p>
                <p><a class="btn btn-default" href="detatil/${good.id}" role="button">商品详情 &raquo;</a></p>
            </div><!-- /.col-lg-4 -->
        </c:forEach>
    </div><!-- /.row -->
    <!-- =================================== -->
    <script src="bootstrap/js/jquery-3.2.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    
</body>
</html>