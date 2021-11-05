<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
    <head>
	    <meta charset="UTF-8" />
		<title>로그인 - IKEA</title>
	    <link rel="shortcut icon" href="img/favicon.png"/>
	    <link rel="stylesheet" href="junsic/css/login.css"/>
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"/>
	    <script src="js/jquery-3.6.0.min.js"></script>
	    
		<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	    
    </head>
	<body>
        <div id="wrap">
            <div class="left">
                <header>
                    <a href="/welsh"><i class="fas fa-arrow-left"></i></a>
                    <h1 class="logo">
                    <a href="#" onClick="history.back();"><img src="images/loginLogo.png" alt="" /></a>
                    </h1>
                </header> <!-- header 끝 -->
                
                <div id="content">
                    <h1 class="login-title">로그인</h1>
                    <p class="login-txt1">
                    외워야 할 비밀번호가 많아 불편하셨죠?<br />
                    이제 일회용 코드를 이용하여 간편하게 로그인하세요.
                    </p>
                    <p class="login-txt2">
                    * 이메일 또는 휴대폰 번호 최초 인증 후 사용 가능
                    </p>
                </div> <!-- content 끝 -->
            
                <footer>
                    <span>IKEA.kr - </span><a href="#">개인정보처리방침</a>
                    <p>© Inter IKEA Systems B.V. 1999-2021</p>
                </footer> <!-- footer 끝 -->
            
            </div> <!-- left 끝 -->


				<form action="MemberLogin.do" method="POST" id="join" class="right" name="signUp" >
			    
				    <label class="login-id">
				        <input type="text" name="userId" id="email" placeholder="이메일주소" />
				        <p>다른 로그인 옵션 : <a href="#">일회용 코드로 로그인</a></p>
				    </label> <!-- login-id 끝 -->
			    
				    <label class="login-pw">
				   		<input type="password" name="userPwd" id="password" placeholder="비밀번호" />
				    	<p class="pw-search"><a href="#">비밀번호 찾기</a></p>
					</label> <!-- login-pw 끝 -->
				
					<div class="login-btn">
						<input type="submit" value="로그인" onClick="return signCheck();">
					</div>
					<a href="javascript:kakaoLogin();" style="margin-top:50px;"><img src="images/kakao_login_large_wide.png" style="width:45% ;"></a>
			    
				    <h4>IKEA 계정이 없으신가요? 지금 바로 만들어보세요</h4>
				    <a href="RegisterForm.do" class="join-btn">가입하기</a>
					</form> <!-- right 끝 -->
					

				

	


		</div> <!-- wrap 끝 -->
	<!-- contents end -->
		


	<script>
	
		window.Kakao.init("e1f887451c3a3203431526f7c48ff765");
		
		function kakaoLogin(){
			window.Kakao.Auth.login({
				scope:'profile_nickname,account_email',
				success: function(authObj){
					console.log(authObj);
					window.Kakao.API.request({
						
						url:'/v2/user/me',
						success:res =>{
							const kakao_account =res.kakao_account;
							console.log(kakao_account);
							$.ajax({
								url:"kakaoLogin.do",
								data:{userId:kakao_account.email,
									 userName:kakao_account.profile.nickname },
								success:function(resultData){
									console.log("resultData=",resultData.countResult);
									if(resultData.countResult===1){
										location.href="/welsh"
									}
								}
							})
						}
					});
						
					
					
				}
			});
		}
		
	
	</script>
	
		
	</body>
	
	
