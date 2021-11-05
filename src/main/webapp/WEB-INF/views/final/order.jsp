<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <link rel="shortcut icon" href="images/favicon.png" />
    <title>주문 조회 및 관리 | 구매 내역</title>
    <link rel="stylesheet" href="css/order.css" />
    <script src="js/mainSearch.js"></script>
    <link rel="stylesheet" href="css/hdFtReset.css">
    <script src="js/front/hdft.js" defer></script>
    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
  </head>
  <body>
    <div id="wrap">
      
        <jsp:include page="/WEB-INF/views/final/include/header.jsp"/>
      <div id="content">
        <div class="left">
          <h1>주문 조회 및 관리</h1>
          <p>
            주문번호는 결제 후 발송되는 주문 확인(Order confirmation) 메일에서
            확인하거나 메일 하단의 주문내역 보기 버튼을 클릭하면 간단히 구매
            내역을 확인할 수 있습니다.
          </p>
        </div>
        <!-- left 끝 -->
        <div class="right">
          <form action="order-form">
            <label class="order-number">
              <input type="text" name="order-num" value="주문 번호" />
              <p class="order-txt">9-10 자리 숫자, 공백 없이</p>
            </label>
            <label class="order-id">
              <input
                type="text"
                name="order-email"
                value="이메일 또는 전화 번호"
              />
              <p class="order-txt">주문시 사용한 이메일 또는 전화 번호</p>
            </label>
            <a href="#" class="order-chk">주문 조회</a>
          </form>
          <!-- form 끝 -->
        </div>
        <!-- right 끝 -->
      </div>
      <!-- content 끝 -->
      
        <jsp:include page="/WEB-INF/views/final/include/footer.jsp"/>
    </div>
    <!-- wrap 끝 -->
  </body>
</html>
