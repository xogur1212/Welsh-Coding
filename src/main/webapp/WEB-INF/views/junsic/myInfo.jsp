<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>나의 IKEA Family</title>
       <link rel="shortcut icon" href="images/favicon.png" />
    <link rel="stylesheet" href="css/myInfo.css" />
     <link rel="stylesheet" href="css/hdFtReset.css">
    <script src="js/hdft.js" defer></script>
    <script src="js/mainSearch.js"></script>
      <script src="js/jquery-3.6.0.min.js"></script>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
    />
  </head>
  <body>
    <div id="wrap">
    <jsp:include page="/WEB-INF/views/final/include/header.jsp"/>
      <div id="content">
        <div class="adjust_txt">
          <h1>만나서 반가워요</h1>
          <h1>나의 <span>IKEA Family</span></h1>
          <p>
            IKEA Family 허브를 방문해 주셔서 감사합니다. <br />이 곳에서 IKEA
            Family 멤버십의 장점을 모두 확인해보세요.
          </p>
        </div>
        <div class="my-info">
          <h2>시작하기</h2>
          <ul class="info-menu">
            <li>
              <i class="fas fa-list-ul"></i>
              <h4><a href="CustomerOrderSearch.do">주문 조회 및 관리</a></h4>
              <p>
                주문 진행중이거나 과거 주문했더 제품의 주문 조회 및 추적을 할 수
                있어요.
              </p>
              <a href="CustomerOrderSearch.do"><i class="fas fa-arrow-right"></i></a>
            </li>
            <li>
              <i class="far fa-heart"></i>
              <h4><a href="CartPage.do">장바구니</a></h4>
              <p>구매 예정인 제품들을 확인해보세요.</p>
              <a href="CartPage.do"><i class="fas fa-arrow-right"></i></a>
            </li>
            <li>
              <i class="far fa-edit"></i>
              <h4><a href="MyAccount.do?userId=${loggedMember.userId }">계정관리</a></h4>
              <p>이름, 주소 또는 설정을 수정하고 싶으세요?</p>
              <a href="MyAccount.do?userId=${loggedMember.userId }"><i class="fas fa-arrow-right"></i></a>
            </li> 
          </ul>
        </div>
        <div class="logout">
          <p>다른 계정으로 로그인 하시겠어요?</p>
          <a href="MemberLogout.do">로그아웃</a>
        </div>
      </div>
<jsp:include page="/WEB-INF/views/final/include/footer.jsp"/>
      
    </div>
  </body>
</html>
