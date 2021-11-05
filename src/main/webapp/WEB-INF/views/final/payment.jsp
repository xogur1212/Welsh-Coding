<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>결제 | IKEA</title>
    <link rel="stylesheet" href="css/payment.css" />
    <script defer src="js/payMent.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/mainSearch.js"></script>
      <link rel="stylesheet" href="css/hdFtReset.css">
    <script src="js/front/hdft.js" defer></script>
  
   
  </head>
  <body>
    <div id="wrap">
        <jsp:include page="/WEB-INF/views/final/include/header.jsp"/>
      <!-- header 끝 -->
      <div id="content">
        <div class="payment-left">
          <div class="delivery">
            <div class="number">
              <p>1</p>
            </div>
            <div class="delivery-txt">
              <h2>배송방법</h2>
              <div class="delivery-info">
                <h4>일반배송</h4>
                <p>가구배송: 4-10일</p>
                <div class="delivery-option">
                  <h4>비대면 배송</h4>
                  <form action="">
                    <label for="">
                      <input type="checkbox" class="check-box" />
                      <p>물품을 현관 앞에 놔두기</p>
                    </label>
                  </form>
                </div>
              </div>
              <form action="" class="delivery-form">
                <h2>배송정보</h2>
                <label for="" class="name">
                  <p>이름</p>
                  <input type="text" class="name-value" value="홍길동" />
                </label>
                <label for="" class="email">
                  <p>이메일</p>
                  <input type="text" class="email-value" value="gildong@naver.com" />
                </label>
                <label for="" class="phone">
                  <p>
                    전화번호 (국가번호 없이 전화번호 11자리만 입력해주세요. 예:
                    01012341234)
                  </p>
                  <input type="text" class="phone-value" value="+821012345678" />
                </label>
                <label for="" class="address">
                  <p>주소 (한국어 주소만 가능/ Please write in Korean only)</p>
                  <input type="text" class="address-value" value="서울 영등포구 선유로 130" />
                </label>
                <label for="" class="address-detail">
                  <p>상세주소</p>
                  <input type="text" value="상세주소" />
                </label>
                <label for="" class="address-number">
                  <p>우편번호</p>
                  <input type="number" class="address-number-value" />
                </label>
                <label for="" class="credit-card">
                  <p>IKEA Family 카드 번호 추가하기</p>
                  <input type="text" value="1234567890" />
                </label>
                <label for="" class="agree">
                  <input type="checkbox" class="check-box" />
                  <p>
                    계속을 클릭하면 IKEA의 <span>개인정보처리방침</span>에
                    동의하는 것으로 간주됩니다. 만 19세 미만의 미성년자는 보호자
                    또는 법정대리인이 동의하지 아니하는 한, 미성년자 본인 또는
                    보호자 및 법정대리인이 그 계약을 취소할 수 있습니다.
                  </p>
                </label>
                <button class="next">계속</button>
              </form>
            </div>
          </div>
          <div class="pay">
            <div class="number"><p>2</p></div>
            <div class="payment">
              <h2>결제</h2>
              <div class="total">
                <div class="total-txt">
                  <h3>주문 총계</h3>
                  <p>부가세 포함</p>
                </div>
                <div class="total-price">
                  <h3>￦ 537,000</h3>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="payment-right">
          <div class="order-info">
            <h4>주문 정보</h4>
            <a href="#">수정</a>
          </div>
          <div class="imgbox">
            <img src="../images/product/product-1.png" alt="" />
            <img src="../images/product/product-1.png" alt="" />
            <img src="../images/product/product-1.png" alt="" />
          </div>

          <h4 class="order-list">주문 내역</h4>
          <div class="order-list-container">
            <div class="order-list1">
              <p>주문 금액 (배송비 제외)</p>
              <p>전체 서비스 비용</p>
              <p>주문 금액 (부가세 제외)</p>
              <p>부가세 (10%)</p>
            </div>
            <div class="order-list2">
              <p>￦ 478,000</p>
              <p>￦ 59,000</p>
              <p>￦ 430,200</p>
              <p>￦ 43,020</p>
            </div>
          </div>
          <div class="order-price">
            <h4>총 주문금액</h4>
            <h3>￦ 537,000</h3>
          </div>
          <form action="">
            <label for="">
              <input type="checkbox" class="check-box" />
              <p>이용 약관을 읽고 이해했습니다.</p>
            </label>
          </form>
          <button class="order-btn">결제하기</button>
        </div>
      </div>
      <!-- content 끝 -->
       <jsp:include page="/WEB-INF/views/final/include/footer.jsp"/>
    </div>
    <!-- wrap 끝 -->
  </body>
</html>
