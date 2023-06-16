<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
<link rel="stylesheet" href="http://localhost:9000/campmall/resources/css/admin.css">
<link rel="stylesheet"  href="http://localhost:9000/campmall/resources/css/am-pagination.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<script src="http://localhost:9000/campmall/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/campmall/resources/js/am-pagination.js"></script>
<script>
$(document).ready(function(){
	
	//페이징 리스트 출력
	var pager = jQuery('#ampaginationsm').pagination({
	
	    maxSize: 7,	    		// max page size
	    totals: '10',	// total rows	
	    page: '1',		// initial page		
	    pageSize: '3',	// max number items per page
	
	    // custom labels		
	    lastText: '&raquo;&raquo;', 		
	    firstText: '&laquo;&laquo;',		
	    prevText: '&laquo;',		
	    nextText: '&raquo;',
			     
	    btnSize:'sm'	// 'sm'  or 'lg'		
	});
	
	//페이징 번호 클릭 시 이벤트 처리
	jQuery('#ampaginationsm').on('am.pagination.change',function(e){		
		   jQuery('.showlabelsm').text('The selected page no: '+e.page);
           $(location).attr('href', "http://localhost:9000/model2_cgv/board_list.do?rpage="+e.page);         
    });
	
});
</script>
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
	<h1>상품목록</h1>
	<div>
		<a href="/campmall/admin_product_write.do">
			<button type="button" class="btn_style" style="margin:0 30px 30px 0; float:right;">상품등록</button>
		</a>
	</div>
	<table class="table table-hover table-bordered table-striped text-center">
		<tr>
			<th>번호</th>
			<th>카테고리</th>
			<th>분류</th>
			<th>상품명</th>
			<th>브랜드명</th>
			<th>정상가(원)</th>
			<th>할인률(%)</th>
			<th>행사가(원)</th>
			<th>재고</th>
			<th>등록날짜</th>
		</tr>
		<%-- <c:forEach var="vo"  items="${list}">
		<tr>
			<td>${vo.rno }</td>
			<td><a href="/campmall/admin_product_content.do?nid=${vo.nid }">${vo.ntitle }</a></td>
			<td>${vo.ndate }</td>
			<td>${vo.nhits }</td>
			<td>${vo.nhits }</td>
			<td>${vo.nhits }</td>
			<td>${vo.nhits }</td>
			<td>${vo.nhits }</td>
		</tr>
		</c:forEach> --%>
		<c:forEach var="vo"  items="${list}">
		<tr>
			<td>${vo.rno }</td>
			<td>${vo.category }</td>
			<td>${vo.event }</td>
			<td><a href="/campmall/admin_product_update.do?pid=${vo.pid}">${vo.prdNm}</a></td>
			<td>${vo.brdNm }</td>
			<td>${vo.price }</td>
			<td>${vo.dc }</td>
			<td>${vo.sale }</td>
			<td>${vo.stock }</td>
			<td>${vo.pdate }</td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="10"><div id="ampaginationsm"></div></td>
		</tr>
	</table>
	<div id="ampaginationsm"></div>
</div>
<!-------------------->
<!-- footer Include -->
<!-------------------->
<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>