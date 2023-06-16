<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 삭제하기</title>
<link rel="stylesheet" href="http://localhost:9000/campmall/resources/css/admin.css">
<style>

	form[name='prdDeleteForm'] {
 		/* border:1px solid red; */
 		width:70%; margin:0 auto; 	
 		font-size:13px;	
 	}
 	
 	form[name='prdDeleteForm'] ul {
 		border:1px solid #e5e5e5; 
 		list-style-type:none;
 		margin:0; padding:20px;
 	}
 	
 	form[name='prdDeleteForm'] ul li { 
 		clear:left;
 		padding:5px 0px; 
 	}
 	
 	form[name='prdDeleteForm'] li:last-child {
 		text-align:center;
 		padding-top:20px;
 	}
 	
 	form[name='prdDeleteForm'] li:first-child { 	
 		text-align:center;
 	}
 	
 	form[name='prdDeleteForm'] li:first-child img{
 		width:50%;
 	}
 	
 	form[name='prdDeleteForm'] li:nth-child(2) div {
 		text-align:center;
 		font-size:20px; 
 		font-family:'���ʷչ���';
 		font-weight:bold;
 		padding:10px 0;
 	}
</style>
</head>
<body>
<!-------------------->
<!-- header Include -->
<!-------------------->
<jsp:include page="../../header.jsp"></jsp:include>

<!-------------------->
<!----- content ------>
<!-------------------->
<div class="content">
	<form name="prdDeleteForm" action="prdDelete.do" method="post">
		<input type="hidden" name="pid" value="${pid}">
		<ul>
			<li>
				<img src="http://localhost:9000/campmall/resources/images/delete.jpg"> <!-- 휴지통 이미지 -->					
			</li>				
			<li>
				<div>정말로 삭제하시겠습니까?</div>
			</li>
			<li>
				<button type="submit" class="btn_style">삭제완료</button>					
				<a href="/campmall/admin_product_update.do?pid=${pid}"><button type="button" class="btn_style">이전페이지</button></a>
				<a href="/campmall/admin_product_list.do"><button type="button" class="btn_style">목록보기</button></a>
			</li>
		</ul>
	</form>
</div>
<!-------------------->
<!-- footer Include -->
<!-------------------->
<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>