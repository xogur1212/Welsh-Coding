<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>회원탈퇴 - IKEA</title>
    <link rel="shortcut icon" href="junsic/images/favicon.png" />
    <link rel="stylesheet" href="junsic/css/withdrawal.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
    />
  </head>
  <body>
    <div id="wrap">
      <div id="content">
        <h1>정말로 탈퇴하시겠습니까?</h1>
        <p class="cancel-txt">
          계정을 없애고 싶으신 경우 계정 삭제를 처리해드릴게요.
        </p>
        <p class="cancel-txt">
          계정을 없애시면 IKEA Family 멤버십 혜택을 더 이상 누리실 수 없습니다.
          <br />계정의 모든 개인정보 및 위시리스트가 모두 삭제됩니다.
        </p>
        <p class="cancel-txt">언제든지 다시 가입하실 수 있어요!</p>
        <h4 class="qna">질문이 있으세요?</h4>
        <a href="#">문의하기</a>	<!-- 문의하기 누르면 customer 페이지로 보내기. -->
        
        <h4 class="password">비밀번호</h4>
        <p class="pw-txt">계정을 삭제하시려면 비밀번호를 입력해주세요.</p>
        <form method="POST" action="MemberDelete.do" >
          <label for="">
            <p class="click">비밀번호</p>
          	<input type="password" placeholder="패스워드를 입력하시오." name="userPwd">
            <button class="cancel-btn">계정 삭제</button>
			<input type="hidden" name="userId" value="${param.userId }" >
			
          </label>
        </form>
      </div>
    </div>
  </body>
</html>
    