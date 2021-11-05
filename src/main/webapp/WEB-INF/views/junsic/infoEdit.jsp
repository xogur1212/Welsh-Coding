<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>사용자 계정 - IKEA</title>
    <link rel="shortcut icon" href="junsic/images/favicon.png" />
    <link rel="stylesheet" href="junsic/css/infoEdit.css" />
       <script src="junsic/js/registerMain.js" defer></script>
    <script
      src="https://code.jquery.com/jquery-2.2.0.min.js"
      type="text/javascript"
    ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.8.0/gsap.min.js"></script>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    
  </head>
  <body>
    <div id="wrap">
      <div class="inner">
        <div id="content">
          <div class="edit-txt">
            <h1>계정 관리</h1>
          </div>
          <form method="POST" action="MemberModify.do" name="signUp">
            <label class="name">
              <h3>개인 정보</h3>
              <p>이름</p>
              <input type="text" name="userName" value="${accountMember.userName }" readonly />
            </label>

            <label class="birth">
              <p>생년월일</p>
              <input type="Date" name="birthDay" value="${accountMember.birthDay }" readonly />
            </label>
            <label class="phone">
              <p>휴대폰</p>
              <input type="text" name="userPhone" value="${accountMember.userPhone }" />
            </label>

            <label class="address-container">
						<h3>주소</h3> 
						<input type="button" value="우편번호 찾기" class="search-btn" /> 
						<label class="address"> 
							<input type="text" name="userAddress01"  id="address" placeholder="도로명주소" /> 
							<input type="text" name="userAddress02" id="address2" placeholder="상세주소" /> 
							<input type="number" name="userZipcode" id="postcode" placeholder="우편번호" readonly />
						</label>
					</label> 


            <label class="password-container">
              <h3>비밀번호</h3>
              <label class="password">
                <input type="text" placeholder="현재 비밀번호" name="currentPwd"   /> 
				<input type="password" name="userPwd" class="input input4" value=""  placeholder="새 비밀번호" id="userPw" /> 
				<input type="password" class="input input5" placeholder="새 비밀번호 확인"  id="userPw02" />
              </label>
            </label>
			<input type="hidden" name="userId" value="${param.userId }">
            <div class="btn">
              <button class="cancel-btn" onClick="location.href='MyAccount.do'">취소</button>

              <button type="submit" id="submit-btn" class="save-btn" onClick="return signCheck();">저장</button>
            </div>

          </form>
        </div>
      </div>
    </div>
  </body>
</html>
