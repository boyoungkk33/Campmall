<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록</title>
<link rel="stylesheet" href="http://localhost:9000/campmall/resources/css/admin.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<style>
	/* 섹션 크기 */
	.bg-light{
		height: 1300px;
		padding-top: 55px;
		padding-bottom: 75px;
	}
	.flex-fill.mx-xl-5.mb-2{
		margin: 0 auto;
		width : 700px;
		padding-right: 7rem;
		padding-left: 7rem;
	}
	/* 입력창 */
	.container.py-4{
		margin:0 auto;
		width: 503px;
	}
	/* 가입하기 */
	.d-grid.gap-2{
		padding-top: 30px;
		justify-content: center;
	}
</style>
<script src="http://localhost:9000/campmall/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/campmall/resources/js/campmall.js"></script>
</head>
<body>
<!-------------------->
<!-- header Include -->
<!-------------------->
<jsp:include page="../../header.jsp"></jsp:include>

<!-------------------->
<!----- content ------>
<!-------------------->

<!-- 
<div id="contents" class="contents">
	<form id="#" method="post" action="#" enctype="multipart/form-data">
		<p>대표이미지</p>
		<div id="prdThumbBox">
			<div>
				<input id="prdAddFile" type="file" accept="image/*" name="file">
				<div id="fileNm">
					<c:if test="${not empty prgrView.fileOrgNm}">${prgrView.fileOrgNm}</c:if>
					<c:if test="${empty prgrView.fileNm}">대표이미지 등록해주세요</c:if>
				</div>
				<button type="button" id="btnDelThumb" style="display: none;">삭제</button>
			</div>
			<label for="prdAddFile">첨부</label>
		</div>
		
		<p>카테고리</p>
		<select id="category" >
			<option value="default">선택</option>
			<option value="vr">듀랑고VR</option>
			<option value="tent">텐트-타프</option>
			<option value="bed">침낭-매트</option>
			<option value="furniture">퍼니처</option>
			<option value="rt">라이팅</option>
			<option value="bbq">화로-BBQ</option>
			<option value="kitchen">키친</option>
			<option value="season">계절용품</option>
			<option value="storage">스토리지</option>
			<option value="rv">RV용품</option>
			<option value="acc">악세서리</option>
			<option value="mt">밀리터리</option>
		</select>
		
		<p>상품명</p>
		<input type="text" id="prdNm" name="prdNm" placeholder="상품명을 입력해주세요">
		
		<p>브랜드명</p>
		<input type="text" id="brdNm" name="brdNm" placeholder="브랜드명을 입력해주세요">
		
		<p>정상가</p>
		<input type="text" id="price" name="price" placeholder="정상가를 입력해주세요">
		<span>원</span>
		
		<p>할인률</p>
		<input type="text" id="dc" name="dc" placeholder="할인률을 입력해주세요">
		<span>%</span>
		
		<p>판매가</p>
		<input type="text" id="sale" name="sale" value="" readonly>
		<span>원</span>
		
		<p>재고</p>
		<input type="text" id="stock" name="stock" placeholder="재고를 입력해주세요">
		
		<p>분류</p>
		<div>
			<input type="radio" name="event" id="best" value="best"><label for="best">베스트</label>
			<input type="radio" name="event" id="new" value="new"><label for="new">신상품</label>
			<input type="radio" name="event" id="special" value="special"><label for="special">특가상품</label>
			<input type="radio" name="event" id="pick" value="pick"><label for="pick">추천상품</label>
		</div>
	</form>
	
	<button type="button" id="prdSave" class="btn_bottom">등록하기</button>
	<button type="reset" class="btn_member">다시입력</button>
	
</div>

-->
<section class="bg-light">
	<div id="contents" class="container py-4">
		<form id="prdWriteForm" method="post" action="prdWrite.do">
			<div class="form-group">
				<span class="text-dark h4">상품등록</span>
			</div>
			
			<div class="form-group">
				<p>대표이미지</p>
				<div id="prdThumbBox">
					<div>
						<input id="prdAddFile" type="file" accept="image/*" name="file">
						<div id="fileNm">
							<c:if test="${not empty prgrView.fileOrgNm}">${prgrView.fileOrgNm}</c:if>
							<c:if test="${empty prgrView.fileNm}">대표이미지 등록해주세요</c:if>
						</div>
						<button type="button" id="btnDelThumb" style="display: none;">삭제</button>
					</div>
					<label for="prdAddFile">첨부</label>
				</div>
			</div>
			
			<div class="form-group">
				<label calss="form-label mt-4">카테고리</label>
				<select id="category" name="category" class="form-control">
					<option value="default">선택</option>
					<option value="vr">듀랑고VR</option>
					<option value="tent">텐트-타프</option>
					<option value="bed">침낭-매트</option>
					<option value="furniture">퍼니처</option>
					<option value="rt">라이팅</option>
					<option value="bbq">화로-BBQ</option>
					<option value="kitchen">키친</option>
					<option value="season">계절용품</option>
					<option value="storage">스토리지</option>
					<option value="rv">RV용품</option>
					<option value="acc">악세서리</option>
					<option value="mt">밀리터리</option>
				</select>
			</div>
			
			<div class="form-group">
				<label for="prdNm" class="form-label mt-4">상품명</label>
				<input type="text" id="prdNm" name="prdNm" class="form-control" placeholder="상품명을 입력해주세요">
			</div>
			<div class="form-group">
				<label for="brdNm" class="form-label mt-4">브랜드명</label>
				<input type="text" id="brdNm" name="brdNm" class="form-control" placeholder="브랜드명을 입력해주세요">
			</div>
			<div class="form-group">
				<label for="price" class="form-label mt-4">정상가(원)</label>
				<input type="number" id="price" step="500" name="price" class="form-control" placeholder="정상가를 입력해주세요">
			</div>
			<div class="form-group">
				<label for="dc" class="form-label mt-4">할인률(%)</label>
				<input type="number" id="dc" name="dc" class="form-control" placeholder="할인률을 입력해주세요">
			</div>
			<div class="form-group">
				<label for="sale" class="form-label mt-4">판매가(원)</label>
				<input type="number" id="sale" name="sale" class="form-control" value="" readonly>
			</div>
			<div class="form-group">
				<label for="stock" class="form-label mt-4">재고</label>
				<input type="number" id="stock" name="stock" class="form-control" placeholder="재고를 입력해주세요">
			</div>
			<div class="form-group">
				<label class="form-label mt-4">분류</label>
				<div class="form-check">
					<input type="radio" name="event" id="best" value="best" class="form-check-input"><label for="best" class="form-check-label" style="margin-right:25px;">베스트</label>
					<input type="radio" name="event" id="new" value="newProduct" class="form-check-input" checked><label for="new" class="form-check-label" style="margin-right:25px;">신상품</label>
					<input type="radio" name="event" id="special" value="special" class="form-check-input"><label for="special" class="form-check-label" style="margin-right:25px;">특가상품</label>
					<input type="radio" name="event" id="pick" value="pick" class="form-check-input"><label for="pick" class="form-check-label" style="margin-right:25px;">추천상품</label>
				</div>
			</div>
		</form>
		<div class="d-grid gap-2">
			<button type="button" id="prdSave" class="btn btn-primary btn-lg">등록하기</button>
			<button type="reset" class="btn btn-primary btn-lg">다시입력</button>
		</div>
		
	</div>
</section>
<!-------------------->
<!-- footer Include -->
<!-------------------->
<jsp:include page="../../footer.jsp"></jsp:include>
</body>
<!-- <script>
	var test = "";
	var test2 = "";
	var test3 = "";
	console.log("test값: " + test);
	
	$("#price").keyup(function(e){
		test = $("#price").val();
		test = Number(test);
		test3 = (test * test2)/100;
		$("#sale").val(test3);
		console.log("test값: " + test);
	});
	
	$("#dc").keyup(function(e){
		test2 = $("#dc").val();
		test2 = Number(test2);
		test3 = (test * test2)/100;
		$("#sale").val(test3);
		console.log("test2값: " + test2);
	});
	
	
</script> -->
</html>