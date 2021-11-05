
$(".purchase-btn").on("click", function (e) {
    const _parent = $(this).parent();
    const sendData = getUrlParams();
    sendData.count = 1;


    console.log("sendData", sendData);

    $.ajax({
        url: "AddCookie.do",
        data: sendData,
        type: "POST",

        success: function (resultData) {
            console.log("resultData", resultData); //result: replyList:[{}]
            if (resultData.returnPage === "Cart") {
                location.href = "CartPage.do";
            } else {
                if (window.confirm('로그인 후 이용해 주세요')) {
                    location.href = "LoginForm.do";
                }


            }




        },
        error: function (errorMsg) {
            console.log(errorMsg);
        }
    });
    return false;
});