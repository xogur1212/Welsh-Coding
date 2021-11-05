<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>IKEA 고객지원센터 - IKEA</title>
    <link rel="shortcut icon" href="images/favicon.png" />
    <link rel="stylesheet" href="css/customer.css" />
    <link rel="stylesheet" href="css/hdFtReset.css">
    <script src="js/front/hdft.js" defer></script>
    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="js/mainSearch.js"></script>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
    />
  </head>
  <body>
    <div id="wrap">
      	
       <!-- header -->
       <%@ include file="include/header.jsp" %>
       <!-- header end -->
      
      <div id="content">
        <section id="customer">
          <h1>IKEA 고객지원센터</h1>
          <h4>
            코로나 19로 인해 사회적 거리두기 수준이 4단계로 격상됨에 따라
            고객센터 운영시간이 단축됩니다.<br />
            시행기간: 정부 시행 지침 기간과 동일<br />
            운영시간: (월요일 - 일요일) 10:00 - 21:00
          </h4>
          <p>
            궁금한 점이 있으세요?<br />
            전화, 채팅, 이메일 등 다양한 방법으로 IKEA에 대한 궁금한 점을
            문의해주세요.<br />
            IKEA 배송, 택배 서비스를 이용하셨다면 배송 조회도 가능합니다.
          </p>
          <ul>
            <li><a href="#delivery-search">배송 조회</a></li>
            <li><a href="#chat-qna">채팅 문의</a></li>
            <li><a href="#email-qna">이메일 문의</a></li>
            <li><a href="#call-qna">전화 문의</a></li>
          </ul>
        </section>
        <section id="delivery-search">
          <h2>배송 조회</h2>
          <div class="delivery-container">
            <h3>구매 내역 확인 기능 일시중지</h3>
            <p>현재 구매 내역 확인하기 기능을 일시적으로 사용할 수 없습니다.</p>

            <p>
              주문 번호를 알고 계시다면, 주문과 배송 상태를 확인하고 관리하는
              것이 가능합니다. <br />
              아래 “주문 조회 및 관리하기” 버튼을 눌러 주문을 확인해주세요.
            </p>
            <p>
              * 매장에서 구매한 주문서는 온라인에서 주문 취소가 불가능합니다.
            </p>
            <a href="order.html">주문 조회 및 관리하기</a>
          </div>
        </section>
        <section id="chat-qna">
          <h2>채팅 문의</h2>
          <h4>채팅 집중 운영 시간: 13:00 - 17:00</h4>
          <p>
            정부 권장에 따라 상담사들의 코로나 백신 접종이 이뤄지고 있으며 이로
            인해 채팅 상담할 수 있는 인원에 일시적인 제한이 있습니다.<br />
            챗봇 상담은 24시간 가능하나, 상담원 연결을 통한 실시간 상담은 집중
            운영 시간에만 가능합니다.<br />
            서비스 정상화를 위해 최선을 다하고 있습니다. 너그러운 양해
            부탁드립니다.
          </p>
          <a href="#">채팅 바로가기</a>
        </section>
        <section id="email-qna">
          <h2>이메일 문의</h2>
          <p>
            이메일 문의는 ‘마케팅 및 프레스 제안’ 및 ‘IKEA for Business’ 관련
            문의 접수만 가능합니다.<br />‘IKEA for Business’ 문의 시, 사업자
            등록증을 첨부해 주시면 보다 빠른 상담이 가능합니다.
          </p>
          <p>
            아래 이메일 문의 양식에 해당되지 않는 문의는 채팅 서비스를 이용
            부탁드립니다.<br />
            메일 내용에 욕설이나 비속어가 포함되어 있으면 IKEA로 전달되지
            않습니다.
          </p>
          <form action="">
            <label for="" class="name">
              <i class="far fa-user"></i>
              <input type="text" placeholder="이름" />
            </label>
            <label for="" class="phone">
              <i class="fas fa-phone"></i>
              <input type="text" placeholder="휴대폰전화번호" />
            </label>
            <label for="" class="email">
              <i class="far fa-envelope"></i>
              <input type="text" placeholder="이메일" />
            </label>
            <label for="" class="subject">
              <i class="far fa-sticky-note"></i>
              <input type="text" placeholder="주제" />
            </label>
            <label for="" class="file">
              <i class="fas fa-paperclip"></i>
              <input type="text" placeholder="5MB 이하 첨부 가능" />
              <button>+</button>
            </label>
            <label for="" class="write">
              <i class="far fa-edit"></i>
              <textarea
                name=""
                id=""
                cols="40"
                rows="10"
                placeholder="문의 내용을 입력해주세요."
              ></textarea>
            </label>
            <label for="" class="submit">
              <div class="submit-agree">
                <input type="checkbox" class="chk" />
                <p>
                  IKEA Korea <a href="#">개인정보 수집/이용</a>에 관한 동의를<br />
                  확인하였습니다.
                </p>
              </div>
              <input
                type="submit"
                value="이메일 문의 보내기"
                class="submit-btn"
            /></label>
          </form>
        </section>
        <section id="call-qna">
          <h2>전화 문의</h2>
          <h4>고객지원센터: 1670-4532</h4>
          <p>
            빠른 해결책을 원하는 경우에는 <a href="#">자주 묻는 질문</a>을
            확인하세요.
          </p>
          <p>
            자주 묻는 질문에 원하는 내용이 없는 경우에는 성함, 연락처,
            구매정보(영수증/주문번호)를 준비하시어<br />
            전화 문의 또는 채팅 문의를 이용해 주세요.
          </p>
        </section>
      </div>
      
      <%@ include file="include/footer.jsp" %>
      <!-- footer 끝 -->
    </div>
  </body>
</html>
