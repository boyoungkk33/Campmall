<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet"  href="http://localhost:9000/campmall/resources/css/admin.css">
<link rel="stylesheet"  href="http://localhost:9000/campmall/resources/css/index.css">
 <!-- jQuery Modal -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
</head>
<body>
<!-------------------->
<!-- header Include -->
<!-------------------->
<jsp:include page="../header.jsp"></jsp:include>

<!-------------------->
<!----- content ------>
<!-------------------->
<div class="admin-container">
	<div class="userbox">
		<a href="#">
			<img src="http://localhost:9000/campmall/resources/images/admin-user.png" alt="회원 관리">
		</a>
		<h3>회원 관리</h3>
	</div>
	<div class="noticebox">
		<a href="#">
			<img src="http://localhost:9000/campmall/resources/images/admin-notice.png" alt="게시판 관리">
		</a>
		<h3>게시판 관리</h3>
	</div>
	<div class="productbox">
		<a href="/campmall/admin_product_list.do">
			<img src="http://localhost:9000/campmall/resources/images/admin-product.png" alt="상품 관리">
		</a>
		<h3>상품 관리</h3>
	</div>
</div>
<!-------------------->
<!-- footer Include -->
<!-------------------->
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>