<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>사용자 계정 | IKEA</title>
    <link rel="shortcut icon" href="junsic/images/favicon.png" />
    <link rel="stylesheet" href="junsic/css/myAccount.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
    />
  </head>
  <body>
    <div id="wrap">
      <div class="inner">
        <div id="content">
          <div class="edit-txt">
            <h1>계정 관리</h1>
            <p>로그아웃을 하고 싶으신가요? <a href="MemberLogout.do">로그아웃</a></p>
          </div>
          <form>
            <label class="email">
              <h3>개인 정보</h3>
              <p>이메일(아이디)</p>
              <input type="text" value="${accountMember.userId }" placeholder="" readonly />
            </label>
            <label class="name">
              <p>이름</p>
              <input type="text"  value="${accountMember.userName }" placeholder="" readonly />
            </label>
            <label class="nick-name">
              <p>별명</p>
              <input type="text"  value="${accountMember.userNickname }" placeholder="" readonly />
            </label>
            <label class="phone">
              <p>휴대폰</p>
              <input type="text"  value="${accountMember.userPhone }" placeholder="" readonly />
            </label>
            <label class="birth">
              <p>생년월일</p>
              <input type="text"  value="${accountMember.birthDay }" placeholder="" readonly />
            </label>

            <label class="address-container">
              <h3>주소</h3>
              <label class="address">
                <input
                  type="text"
                  
                  value="${accountMember.userZipcode }"
                  placeholder=""
                  readonly
                />
                <input type="text" value="${accountMember.userAddress }" placeholder="" readonly />
              </label>
            </label>
            
            <div class="btn">
            <button class="cancel-btn" onClick="location.href='MemberModifyForm.do?userId=${accountMember.userId}'; return false;">수정</button>
            </div>
            
            <div class="delete">
              <h1>회원탈퇴</h1>
              <p>
                IKEA를 더 이상 이용하지 않는다면 언제든 탈퇴할 수 있습니다.
                <br />단, 회원 정보 및 구매 내역이 함께 삭제된다는 점을
                참고해주세요.
              </p>
              <a href="MemberDeleteForm.do?userId=${loggedMember.userId }">계정을 삭제하시겠어요?</a>
            </div>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
