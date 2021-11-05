function loginWithKakao() {

	
	Kakao.Auth.authorize(
		{ redirectUri: 'http://localhost:8081/welsh/kakao_login' });


}

function getKakaoLoginInfo() {

	console.log("tokken",Kakao.Auth.getAccessToken());
	Kakao.Auth.setAccessToken(Kakao.Auth.getAccessToken());

	Kakao.API.request({
		url: '/v2/user/me',
		success: function(response) {
			console.log(response);
		},
		fail: function(error) {
			console.log(error);
		}
	});



}

