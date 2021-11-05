<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>사용자 계정 - IKEA</title>
    <link rel="shortcut icon" href="junsic/images/favicon.png" />
    <link rel="stylesheet" href="junsic/css/register.css" />
    <script src="junsic/js/registerMain.js" defer></script>
    <script
      src="https://code.jquery.com/jquery-2.2.0.min.js"
      type="text/javascript"
    ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.8.0/gsap.min.js"></script>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
  </head>

 <body>
    <div id="content">
      <div class="left">
        <div class="left-txt">
          <h1><span>IKEA Family </span>회원 가입</h1>
          <p>이미 가입하셨나요? <a href="LoginForm.do">로그인 하기</a></p>
        </div>

        <div class="img-container">
          <img src="junsic/images/join/join-1.png" alt="" />
          <img src="junsic/images/join/join-2.png" alt="" />
          <img src="junsic/images/join/join-3.png" alt="" />
          <img src="junsic/images/join/join-4.png" alt="" />
          <img src="junsic/images/join/join-5.png" alt="" />
          <img src="junsic/images/join/join-6.png" alt="" />
          <img src="junsic/images/join/join-7.png" alt="" />
          <img src="junsic/images/join/join-8.png" alt="" />
        </div>
        <!-- content 끝 -->
      </div>
      <!-- left 끝 -->

		<div class="right">
			<form action="MemberJoin.do">
				<h4>IKEA Family에 가입하시겠어요?</h4>

		          <label class="check-box">
		            <input type="radio" value="" id="option" />
		            예, IKEA Family의 다양한 혜택 및 할인을 즐기고 싶습니다!
		            <a href="#">IKEA Family 혜택</a> <br />
		          </label>
		          <!-- check-box-->

				<label class="info">

					<p class="click">이메일</p> 
					<input type="text" class="input input1"
					name="userId" /> 
					<span class="hide">이메일 필드는 필수 필드입니다.</span>

					<p class="click">이름</p> 
					<input type="text" class="input input2"
					name="userName" /> 
					<span class="hide">이름 필드는 필수 필드입니다.</span>
					
					<p class="click">별명</p>		
					<input type="text" class="input input3" name="userNickname" /> 
					<span class="hide">별명 필드는 필수 필드입니다.</span> 

					<p class="click">비밀번호</p> 
					<input type="password" class="input input4" value=""  name="userPwd" id="userPw" />
					<span class="hide">비밀번호 필드는 필수 필드입니다.</span>

					<p class="click">비밀번호 확인</p> 
					<input type="password"
					class="input input5" id="userPw02" /> 
					<span class="hide txtPass red">비밀번호 확인 필드는 필수 필드입니다.</span>

					<p class="click">휴대폰</p>
					<p>KR (+82)</p> <input type="text" id="phone-txt" name="userPhone"
					class="input input6" placeholder="010-1234-5678"/> <span class="hide">휴대폰 필드는 필수
						필드입니다.</span>

					<p class="click">생년월일</p> <input type="date" name="birthDay"
					class="input input7"> <span class="hide">생년월일 필드는 필수
						필드입니다.</span>

				</label>

				<!-- info -->

				<input type="button" value="우편번호 찾기" class="search-btn"> 
				<label
					class="address"> <input type="text" placeholder="도로명주소"
					id="address" class="input input7" name="userAddress01" readonly>
					
					<input type="text" placeholder="상세주소" id="address2"
					class="input input8" name="userAddress02"> 
					
					<span
					class="hide">상세주소 필드는 필수 필드입니다.</span> <input type="number"
					placeholder="우편번호" id="postcode" class="input input9"
					name="userZipcode" value="우편번호" readonly>
				</label>
				<!-- adress -->

				<label class="agree">
		            <input type="checkbox" id="checkbox" name="emailCheck" value="agree"  /> 
		            IKEA의 홈퍼니싱 아이디어와
		            신상품 소식, 그리고 할인 혜택 정보를 받고 싶어요!<br />

					<input type="checkbox" id="checkbox" name="PICheck1" value="agree">
					<a
					href="https://www.ikea.com/kr/ko/customer-service/terms-conditions/"
					target="_black"> (필수) 약관을 모두 읽고 <span>동의</span>합니다.
				</a> <br> <input type="checkbox" id="checkbox" name="PICheck2"
					value="agree"> <a
					href="https://www.ikea.com/kr/ko/customer-service/privacy-policy/-pub20a57ecd"
					target="_black"> (필수) 개인정보 수집 · 이용에 <span>동의</span>합니다.
				</a> <br> <input type="checkbox" id="checkbox" name="PICheck3"	
					value="agree"> <a
					href="https://www.ikea.com/kr/ko/customer-service/privacy-policy/-pubadc349ed"
					target="_black"> (필수) 개인정보 처리 위탁에 <span>동의</span>합니다.
				</a> <br> <input type="checkbox" id="checkbox" name="PICheck4"
					value="agree"> <a
					href="https://www.ikea.com/kr/ko/customer-service/privacy-policy/-pub1c988c9a"
					target="_black"> (필수) 개인정보 국외이전에 <span>동의</span>합니다.
				</a> <br>
				</label>
				<!-- agree -->


				<input type="submit" value="입력 정보 제출하기" id="submit-btn"
					onClick="return signCheck();">
			</form>
		</div>
		<!-- right -->
	</div>
	<!-- content -->

	<footer>
		<div class="inner">
			<div class="footer-top">
				<div class="footer-txt">
					<h3>IKEA Family</h3>
					<p>
						지금 IKEA Family에 무료로 가입하고<br>다양한 멤버 전용 혜택을 누리세요. <a href="#">자세히
							보기</a>
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
					<a href="https://www.facebook.com/IKEA.kr/" target="_blank"> <img
						src="https://img.icons8.com/ios-glyphs/24/000000/facebook-new.png" />
					</a> <a href="https://www.instagram.com/ikeakr/" target="_blank"> <img
						src="https://img.icons8.com/material-outlined/24/000000/instagram-new.png" />
					</a> <a href="https://www.youtube.com/channel/UCvt32qJUh606U-W_hr-EF7A"
						target="_blank"> <img
						src="https://img.icons8.com/material-rounded/24/000000/youtube-play.png" />
					</a> <a href="https://pf.kakao.com/_jhmfxd" target="_blank"> <img
						src="https://img.icons8.com/ios-glyphs/30/000000/chat.png" />
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
						<li>사업자 등록번호 : 106-86-82871<a href="#">사업자정보확인</a></li>
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
	<!-- footer -->
</body>
</html>
