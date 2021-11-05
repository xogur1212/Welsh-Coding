<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>주문조회 - IKEA</title>
    <link rel="shortcut icon" href="images/favicon.png" />
    <script src="js/mainSearch.js"></script>
    <link rel="stylesheet" href="css/orderSearch.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
    />
     <link rel="stylesheet" href="css/hdFtReset.css">
    <script src="js/hdft.js" defer></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/customerOrderSearch.js"></script>
  </head>
  <body>
    <div id="wrap">
     <jsp:include page="/WEB-INF/views/final/include/header.jsp"/>
      <div id="content">
        <div class="state">
          <div class="waiting">
            <h3>입금대기</h3>
            <h4>0</h4>
          </div>
          <i class="fas fa-chevron-right"></i>
          <div class="waiting done-payment">
            <h3>결제완료</h3>
            <h4>0</h4>
          </div>
          <i class="fas fa-chevron-right"></i>
          <div class="waiting">
            <h3>배송준비</h3>
            <h4>0</h4>
          </div>
          <i class="fas fa-chevron-right"></i>
          <div class="waiting">
            <h3>배송중</h3>
            <h4>0</h4>
          </div>
          <i class="fas fa-chevron-right"></i>
          <div class="waiting">
            <h3>배송완료</h3>
            <h4>0</h4>
          </div>
          <i class="fas fa-chevron-right"></i>
          <div class="waiting">
            <h3>구매확정</h3>
            <h4>0</h4>
          </div>
        </div>
        <!-- state 끝 -->
     
        <!-- product-wrap 끝 -->
        <div class="product-wrap">
          <div class="order-number">
            <p>
              주문번호 : 000000000 <br />
              주문날짜 : 2021. 10. 26
            </p>
          </div>
          <!-- product-number 끝 -->
          <div class="product-container">
            <div class="product-left">
              <div class="product-img">
                <img src="images/product/product-2.png" alt="상품이미지1" />
              </div>
              <div class="product-txt">
                <h5 class="product-name">SLATTUM 슬라툼</h5>
                <p class="mention">쿠션형 침대프레임, 150x200 cm</p>
              </div>
            </div>
            <div class="product-center">
              <div class="product-option">
                <h4>￦ 179,000</h4>
                <p>1개</p>
                <h5>배송중</h5>
              </div>
            </div>
            <div class="product-right">
              <button class="trace-btn">배송추적</button>
              <button class="confirm-btn">구매확정</button>
            </div>
          </div>
          <!-- product-container 끝 -->
          <div class="product-container">
            <div class="product-left">
              <div class="product-img">
                <img src="images/product/product-2.png" alt="상품이미지1" />
              </div>
              <div class="product-txt">
                <h5 class="product-name">SLATTUM 슬라툼</h5>
                <p class="mention">쿠션형 침대프레임, 150x200 cm</p>
              </div>
            </div>
            <div class="product-center">
              <div class="product-option">
                <h4>￦ 179,000</h4>
                <p>1개</p>
                <h5>배송중</h5>
              </div>
            </div>
            <div class="product-right">
              <button class="trace-btn">배송추적</button>
              <button class="confirm-btn">구매확정</button>
            </div>
          </div>
          <!-- product-container 끝 -->
        </div>
        <!-- product-wrap 끝 -->
      </div>
      <!-- content 끝 -->
       <jsp:include page="/WEB-INF/views/final/include/footer.jsp"/>
    </div>
    <!-- wrap 끝 -->
  </body>
</html>
