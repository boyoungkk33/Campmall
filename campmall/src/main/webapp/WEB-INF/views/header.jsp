<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet"  href="http://localhost:9000/campmall/resources/css/header.css">
<script src="http://localhost:9000/campmall/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/campmall/resources/js/campmall.js"></script>
</head>
<body>
<!---------------------------------------------->
<!--------------- header ----------------------->
<!---------------------------------------------->
	<header>
		<div class="top_menu">
			<div class="top_menu_inner clearfix">
				<ul>
					<c:choose>	
						<c:when test="${sessionScope.svo == null}">	
							<li><a href="http://localhost:9000/campmall/notice/qna.do">고객센터</a></li>
							<li><a href="http://localhost:9000/campmall/baskert.do">장바구니</a></li>
							<li><a href="http://localhost:9000/campmall/login.do">로그인</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="http://localhost:9000/campmall/notice/qna.do">고객센터</a></li>
							<li><a href="http://localhost:9000/campmall/baskert.do">장바구니</a></li>
							<li><a href="#">마이페이지</a></li>
							<c:if test="${sessionScope.svo.email == 'admin@naver.com'}">
								<a href="http://localhost:9000/campmall/admin.do"><span>관리자페이지</span></a>
							</c:if> 
						    <li><a href="http://localhost:9000/campmall/logout.do" >로그아웃</li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
		<div class="middle_menu">
			<div class="middle_menu_inner">
				<h1>
					<a href="http://localhost:9000/campmall/index.do">CAMPMALL</a>
				</h1>
				<ul>
					<li><a href="#"><strong>NOTICE</strong></a></li>
					<li><a href="#">EVENT</a></li>
					<li><a href="#">REVIEW</a></li>
					<li><a href="#">SEARCH</a></li>
				</ul>
			</div>
		</div>
		<div class="bottom_menu">
			<div class="bottom_menu_inner">
				<ul class="clearfix">
					<li><a href="/campmall/product/best.do?event=best"> <strong>베스트</strong></a></li>
					<li><a href="/campmall/product/new.do?event=newProduct">신상품</a></li>
					<li><a href="/campmall/product/special.do?event=special">특가상품</a></li>
					<li><a href="/campmall/product/pick.do?event=pick">추천상품</a></li>
				</ul>
			</div>
		</div>
		<div class="notice">
			<div class="notice_inner">
			</div>
		</div>
	</header>
</body>
</html>