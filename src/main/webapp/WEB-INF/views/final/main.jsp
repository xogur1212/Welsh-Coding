<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/hdft/favicon.png">
    <link rel="stylesheet" href="css/hdFtReset.css">
    <script src="js/hdft.js" defer></script>
      <script src="js/front/main.js" defer></script>
    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.8.0/gsap.min.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/mainSearch.js"></script>
    <script defer src="js/showRecommendProduct.js"></script>
  
    
    
    
    <title>IKEA KOREA | 이케아 코리아 - IKEA</title>
    <link rel="stylesheet" href="css/main.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
    />
    <link
      rel="stylesheet"
      href="https://unpkg.com/swiper@7/swiper-bundle.min.css"
    />
  </head>
  <body>
    <div id="wrap">
   	  <!--  HEADER 시작 -->
      <%@ include file="include/header.jsp"%>
	  <!--  HEADER 끝 -->
      <div id="content">
        <div id="visual">
          <div class="visual-img">
            <img src="images/main/first-2.png" alt="" />
          </div>
          <div class="visual-txt">
            <h2>PLAY HOME</h2>
            <p>
              게이밍 전문 브랜드 ROG (Republic of Gamers)와의 컬래버레이션을
              통해 인체공학적으로 제작된 IKEA 홈 게이밍 가구를 지금 확인해
              보세요!
            </p>
            <a href="NewProductEvent.do">지금 보러가기</a>
          </div>
        </div>
        <!-- visual 끝 -->

        <div class="swiper mySwiper">
          <h2>진행중인 이벤트 및 프로모션</h2>
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <div class="event">
                <a href="NewProductEvent.do">
                  <div class="event-img">
                    <img src="images/main/slide-1.png" alt="이벤트1" />
                  </div>
                  <div class="event-txt">
                    <h2>가을 신제품을 만나보세요</h2>
                    <p>
                      선선한 날씨에 어울리는 이번 시즌 신제품을 만나보세요. 가을을
                      닮은 색감과 포근한 소재의 제품으로 집안 곳곳 새로운 분위기를
                      더해보세요.
                    </p>
                    <a href="NewProductEvent.do"><i class="fas fa-arrow-right"></i></a>
                  </div>
                </a>
              </div>
            </div>
            <div class="swiper-slide">
              <div class="event">
                <a href="LivingProductEvent.do">
                  <div class="event-img">
                    <img src="images/main/slide-2.png" alt="이벤트2" />
                  </div>
                  <div
                    class="event-txt"
                    style="background-color: #657b5d; color: #fff"
         			>
                    <h2>함께해서 더 따뜻한 거실</h2>
                    <p>
                      다가온 계절을 맞이해 새삶스럽게 거실을 꾸며보는 건 어떠세요?
                      각자의 취향을 공유하고, 계절의 변화에 맞춰 변신할 수 있는
                      공간이 생긴다면 분명 함께해서 더 따뜻한 우리집이 될 거예요!
                    </p>
                    <a href="LivingProductEvent.do"><i class="fas fa-arrow-right"></i></a>
                  </div>
                </a>
              </div>
            </div>
            <div class="swiper-slide">
              <div class="event">
                <a href="NewProductEvent.do">
                  <div class="event-img">
                    <img src="images/main/slide-3.png" alt="이벤트3" />
                  </div>
                  <div class="event-txt" style="background-color: #f5f5f5">
                    <h2>더 가까워진 새로운 픽업 서비스</h2>
                    <p>
                      기존 배송비보다 낮은 가격으로 집 근처까지 배송 받을 수
                      있다면? 온라인에서 구매한 가구 제품을 거주 지역에 위치한
                      주유소에서 픽업해보세요.
                    </p>
                    <a href="NewProductEvent.do"><i class="fas fa-arrow-right"></i></a>
                  </div>
                </a>
              </div>
            </div>
            <div class="swiper-slide">
              <div class="event">
                <a href="LivingProductEvent.do">
                  <div class="event-img">
                    <img src="images/main/slide-4.png" alt="이벤트4" />
                  </div>
                  <div class="event-txt" style="background-color: #b2b8aa">
                    <h2>더 낮고 다양해진 택배 배송비</h2>
                    <p>
                      유리닦이부터 폼 매트리스까지, 택배로 주문할 수 있는 제품의
                      범위가 넓어졌어요. 부피와 무게에 따라 다르게 적용되는 새로운
                      택배 배송비를 확인해보세요.
                    </p>
                    <a href="LivingProductEvent.do"><i class="fas fa-arrow-right"></i></a>
                  </div>
                </a>
              </div>
            </div>
            <div class="swiper-slide">
              <div class="event">
                <a href="NewProductEvent.do">
                  <div class="event-img">
                    <img src="images/main/slide-5.png" alt="이벤트5" />
                  </div>
                  <div class="event-txt" style="background-color: #ebe1c6">
                    <h2>10월 21일 IKEA Live!</h2>
                    <p>
                      소소한 홈파티에 감성 더하기 - 손님이 적어도 괜찮아요. 소소한
                      홈파티를 위한 반짝이는 팁을 알려드려요!
                    </p>
                    <a href="NewProductEvent.do"><i class="fas fa-arrow-right"></i></a>
                  </div>
                </a>
              </div>
            </div>
          </div>
          <div class="swiper-button-next"></div>
          <div class="swiper-button-prev"></div>
          <div class="swiper-scrollbar"></div>
        </div>
        <!-- event-swiper 끝 -->

        <div class="delivery-notice">
          <h2>배송 지연 안내</h2>
          <p>
            현재 <span>CJ대한통운 택배 노조 파업</span>으로
            <span>전라북도 익산 일부 지역</span>에 택배 발송이 제한되고
            있습니다. <br />
            지역의 주문건은 정상화될 때까지 출고가 지연되어 배송 불가한 점 양해
            부탁드립니다.
          </p>
          <a href="Customer.do">자세한 지역 보러가기</a>
        </div>
        <!-- delivery-notice 끝 -->
        
        <div class="recommend swiper mySwiper2">
          <h2>추천 제품</h2>
          <ul class="recommend-product swiper-wrapper" id="ultest">
           
          </ul>
          <div class="swiper-button-next product-btn"></div>
          <div class="swiper-button-prev product-btn"></div>
        </div>
        <!-- recommend 끝 -->

        <div class="new">
          <div class="new-txt">
            <h2>신제품을 만나보세요</h2>
            <a href="#">신제품 보러가기</a>
          </div>
          <ul class="new-product">
            <li>
              <img src="images/main/new1.png" alt="" />
            </li>
            <div class="hover-img" id="hover-img1">
              <div class="hover-box" id="hover-box1">
                <span class="hover-new">NEW</span>
                <h4>APPLARYD<br>에플라뤼드</h4>
                <p>2인용소파</p>
                <h4>￦ 999,000</h4>
              </div>
              <div class="dot" id="dot1">
                <span id="image-dot1"></span>
              </div>
            </div>
            <li>
              <img src="images/main/new2.png" alt="" />
            </li>
            <div class="hover-img" id="hover-img2">
              <div class="hover-box" id="hover-box2">
                <span class="hover-new">NEW</span>
                <h4>VALLENTUNA<br>발렌투나</h4>
                <p>등받이쿠션</p>
                <h4>￦ 35,000</h4>
              </div>
              <div class="dot" id="dot2">
                <span id="image-dot2"></span>
              </div>
            </div>
          </ul>
        </div>
        <!-- new 끝 -->

        <ul class="service">
          <li class="service-1">
            <i class="fas fa-truck"></i>
            <h5>배송 서비스</h5>
            <p>편리한 배송 옵션을 살펴보세요</p>
            <a href="Customer.do">더보기</a>
          </li>
          <li class="service-2">
            <i class="far fa-edit"></i>
            <h5>주방 서비스</h5>
            <p>전문가와 함께 꿈의 주방을 현실로 만들어보세요</p>
            <a href="Customer.do">더보기</a>
          </li>
          <li class="service-3">
            <i class="fas fa-wrench"></i>
            <h5>설치 서비스</h5>
            <p>전문가의 주방 및 욕실 설치 서비스를 받을 수 있어요</p>
            <a href="Customer.do">더보기</a>
          </li>
          <li class="service-4">
            <i class="fas fa-hammer"></i>
            <h5>조립 서비스</h5>
            <p>IKEA에게 조립을 맡기고 소중한 시간을 아끼세요</p>
            <a href="Customer.do">더보기</a>
          </li>
        </ul>
        <!-- service 끝 -->

        <ul class="notice">
          <li class="corona">
            <img src="images/main/notice.png" alt="" />
            <div class="notice-txt">
              <a href="Customer.do" class="notice-title">코로나 19 대응 공지</a>
              <a href="Customer.do"><i class="fas fa-arrow-right"></i></a>
            </div>
          </li>
          <li class="recall">
            <img src="images/main/recall.png" alt="" />
            <div class="notice-txt">
              <a href="Customer.do" class="notice-title">제품리콜</a>
              <a href="Customer.do"><i class="fas fa-arrow-right"></i></a>
            </div>
          </li>
          <li class="protect">
            <img src="images/main/protect.png" alt="" />
            <div class="notice-txt">
              <a href="Customer.do" class="notice-title">안전사고 예방 방법</a>
              <a href="Customer.do"><i class="fas fa-arrow-right"></i></a>
            </div>
          </li>
        </ul>
        <!-- notice -->
      </div>
      <!-- content 끝 -->

      <!-- footer 시작 -->
		<%@ include file="include/footer.jsp"%>
      <!-- footer  끝-->
    </div>
    <!-- wrap -->
    

  </body>
</html>
