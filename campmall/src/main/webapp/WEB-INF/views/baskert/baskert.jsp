
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>캠프몰</title>

  <!-- css -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
  <link rel="stylesheet" href="http://localhost:9000/campmall/resources/css/admin.css">
  <link rel="stylesheet" href="http://localhost:9000/campmall/resources/css/header.css">
  <link rel="stylesheet" href="http://localhost:9000/campmall/resources/css/footer.css">
  <link rel="stylesheet" href="http://localhost:9000/campmall/resources/css/basket.css">

  <!-- js -->
  <script src="http://localhost:9000/campmall/resources/js/jquery-3.6.4.min.js"></script>
  <script src="http://localhost:9000/campmall/resources/js/header.js"></script>
  <script src="http://localhost:9000/campmall/resources/js/animation.js"></script>
</head>

<body>
<!-------------------->
<!-- header Include -->
<!-------------------->
<jsp:include page="../header.jsp"></jsp:include>

<!-------------------->
<!----- content ------>
<!-------------------->
  <div class="arrow">
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-up-fill arrow-up" viewBox="0 0 16 16">
      <path d="m7.247 4.86-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z"/>
    </svg>
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill arrow-down" viewBox="0 0 16 16">
      <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
    </svg>
  </div>

  <div class="container">
    <section class="basket">
      <div class="basket_inner">
        <h2>BASKET</h2>

        <table>
          <caption>장바구니 목록</caption>
          <colgroup>
            <col width="70">
            <col width="50">
            <col width="auto">
            <col width="140">
            <col width="55">
          </colgroup>

          <thead>
            <tr>
              <th scope="col">번호</th>
              <th scope="col">사진</th>
              <th scope="col">상품명</th>
              <th scope="col">금액</th>
              <th scope="col">취소</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1</td>
              <td class="td_img">
                <img src="http://localhost:9000/campmall/resources/images/0240070027527.jpg" alt="#">
              </td>
              <td class="left">
                <a href="#">[브랜드명] 상품명</a>
              </td>
              <td><strong>100,000원</strong></td>
              <td>
                <a href="#" class="btn_cancel">삭제</a>
              </td>
            </tr>
          </tbody>
          <tfoot>
            <tr>
              <td colspan="5">
                <strong>총 결제 금액: <span class="price">100,000원</span></strong>
              </td>
            </tr>
          </tfoot>
        </table>
        
        <div class="btn_area">
          <a href="#" class="btn_basic">주문하기</a>
          <a href="#" class="btn_basic">뒤로가기</a>
        </div>
      </div>
    </section>
  </div>

 
<!-------------------->
<!-- footer Include -->
<!-------------------->
<jsp:include page="../footer.jsp"></jsp:include>

</body>

</html>