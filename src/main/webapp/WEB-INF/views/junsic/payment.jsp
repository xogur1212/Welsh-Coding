<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>결제 | IKEA</title>
    <link rel="stylesheet" href="junsic/css/payment.css" />
  </head>
  <body>
    <div id="wrap">
      <header>
        <a href="#"
          ><h1><img src="../images/main/logo.png" alt="상단로고" /></h1
        ></a>
      </header>
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
                  <input type="text" value="홍길동" />
                </label>
                <label for="" class="email">
                  <p>이메일</p>
                  <input type="text" value="gildong@naver.com" />
                </label>
                <label for="" class="phone">
                  <p>
                    전화번호 (국가번호 없이 전화번호 11자리만 입력해주세요. 예:
                    01012341234)
                  </p>
                  <input type="text" value="+821012345678" />
                </label>
                <label for="" class="address">
                  <p>주소 (한국어 주소만 가능/ Please write in Korean only)</p>
                  <input type="text" value="서울 영등포구 선유로 130" />
                </label>
                <label for="" class="address-detail">
                  <p>상세주소</p>
                  <input type="text" value="상세주소" />
                </label>
                <label for="" class="address-number">
                  <p>우편번호</p>
                  <input type="text" value="12345" />
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
          <a href="#" class="order-btn">결제하기</a>
        </div>
      </div>
      <!-- content 끝 -->
      <footer>
        <div class="inner">
          <div class="footer-top">
            <div class="footer-txt">
              <h3>IKEA Family</h3>
              <p>
                지금 IKEA Family에 무료로 가입하고<br />다양한 멤버 전용 혜택을
                누리세요. <a href="#">자세히 보기</a>
              </p>
              <button>IKEA Family 가입하기</button>
            </div>
            <!-- footer txt -->
            <div class="footer-list">
              <ul class="footer-lister">
                <li>고객문의</li>
                <li><a href="#">고객지원</a></li>
                <li><a href="#">자주 묻는 질문</a></li>
                <li><a href="#">문의하기</a></li>
                <li><a href="#">배송조회</a></li>
                <li><a href="#">교환환불</a></li>
                <li><a href="#">품질보증</a></li>
                <li><a href="#">제품리콜</a></li>
                <li><a href="#">제품 구매 가이드</a></li>
                <li><a href="#">브로슈어</a></li>
                <li><a href="#">피드백</a></li>
                <li><a href="#">부품신청</a></li>
              </ul>
            </div>
            <!-- footer list -->
            <div class="footer-list">
              <ul class="footer-lister">
                <li>쇼핑하기</li>
                <li><a href="#">쇼핑하기</a></li>
                <li><a href="#">전화 주문</a></li>
                <li><a href="#">IKEA for Business</a></li>
                <li><a href="#">셀프 플래닝</a></li>
                <li><a href="#">IKEA 모바일 앱</a></li>
                <li><a href="#">제품 사용 팁/가이드</a></li>
                <li><a href="#">결제 옵션</a></li>
                <li><a href="#">기프트 카드</a></li>
              </ul>
            </div>
            <!-- footer list -->
            <div class="footer-list">
              <ul class="footer-lister">
                <li>서비스</li>
                <li><a href="#">IKEA 서비스</a></li>
                <li><a href="#">배송 서비스</a></li>
                <li><a href="#">조립 서비스</a></li>
                <li><a href="#">설치 서비스</a></li>
                <li><a href="#">주방 서비스</a></li>
                <li><a href="#">홈퍼니싱 플래닝 서비스</a></li>
                <li><a href="#">인테리어 디자인 서비스</a></li>
                <li><a href="#">바이백 서비스</a></li>
              </ul>
            </div>
            <!-- footer list -->
            <div class="footer-list">
              <ul class="footer-lister">
                <li>IKEA 이야기</li>
                <li><a href="#">브랜드 소개</a></li>
                <li><a href="#">집에서의 삶</a></li>
                <li><a href="#">지속가능한 생활</a></li>
                <li><a href="#">내가 아끼는 집,나를아끼는 집</a></li>
                <li><a href="#">뉴스롬</a></li>
                <li><a href="#">채용정보</a></li>
              </ul>
            </div>
            <!-- footer list -->
          </div>
          <!-- footer top -->

          <div class="footer-middle">
            <div class="main-sns-warp">
              <a href="https://www.facebook.com/IKEA.kr/" target="_blank">
                <img
                  src="https://img.icons8.com/ios-glyphs/24/000000/facebook-new.png"
                />
              </a>
              <a href="https://www.instagram.com/ikeakr/" target="_blank">
                <img
                  src="https://img.icons8.com/material-outlined/24/000000/instagram-new.png"
                />
              </a>
              <a
                href="https://www.youtube.com/channel/UCvt32qJUh606U-W_hr-EF7A"
                target="_blank"
              >
                <img
                  src="https://img.icons8.com/material-rounded/24/000000/youtube-play.png"
                />
              </a>
              <a href="https://pf.kakao.com/_jhmfxd" target="_blank">
                <img
                  src="https://img.icons8.com/ios-glyphs/30/000000/chat.png"
                />
              </a>
            </div>
            <!-- footer middle sns wrap -->
          </div>
          <!-- footer middle -->

          <div class="footer-bottom">
            <div class="footer-btm">
              <p>© Inter IKEA Systems B.V 1999-2021</p>
              <ul class="footer-contents">
                <li><a href="#">개인정보처리방침</a></li>
                <li><a href="#">쿠키 정책</a></li>
                <li><a href="#">쿠키 설정</a></li>
                <li><a href="#">웹사이트 이용약관</a></li>
                <li><a href="#">Responsible disclosure</a></li>
              </ul>
            </div>
            <!-- footer bottom btm -->

            <div>
              <ul class="footer-indent">
                <li>IKEA 코리아</li>
                <li>주소 : (우) 14352 경기도 광명시 일직로 17 IKEA광명점</li>
                <li>
                  사업자 등록번호 : 106-86-82871<a href="#">사업자정보확인</a>
                </li>
                <li>대표자 : 프레드릭 요한손</li>
                <li>통신판매업 신고 : 2018-경기광명-0209</li>
                <li>TEL : 1670-4532</li>
              </ul>
            </div>
          </div>
          <!-- footer bottom -->
        </div>
        <!-- inner -->
      </footer>
      <!-- footer 끝 -->
    </div>
    <!-- wrap 끝 -->
  </body>
</html>
