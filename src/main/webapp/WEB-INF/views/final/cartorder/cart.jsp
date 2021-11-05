<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>장바구니 | IKEA</title>
    <link rel="stylesheet" href="css/cart.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
    />
    
    <link rel="stylesheet" href="css/hdFtReset.css">
    <link rel="shortcut icon" href="images/favicon.png" />
    
    <script src="js/front/hdft.js" defer></script>
    <script defer src="js/readCart.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/mainSearch.js"></script>
  </head>
  <body>
  
  
    <div id="wrap">
    
    	 <%@ include file="../include/header.jsp" %>
      <div id="content">
        <div class="cart-left">
          <h1>장바구니</h1>
          <ul>
            <li> 장바구니가 비어 있습니다.</li>
          </ul>
        </div>
        <div class="cart-right">
          <div class="cart-mention">
            <h5>주문내역</h5>
            <p>
              이 금액에는 배송비가 포함되어 있지 않으며, 배송지에 따라 구매가
              불가할 수 있습니다.
            </p>
          </div>
          <div class="total">
            <h5>총 주문금액</h5>
            <h4>￦ 0</h4>
          </div>
          <a href="PayMentPage.do" class="order-btn"
            >결제하기<span><i class="fas fa-arrow-right"></i></span
          ></a>
        </div>
      </div>
       <%@ include file="../include/footer.jsp" %>
    </div>
  </body>
</html>
