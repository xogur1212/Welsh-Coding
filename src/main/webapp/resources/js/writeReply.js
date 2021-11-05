


$.ajax({
    url: "ReplyRead.do",
    data: getUrlParams(),
    type: "POST",

    success: function (resultData) {
        console.log("resultData",resultData); //result: replyList:[{}]
        const list = $(".comment-box");
        const replyList = resultData.replyList;
        
        $(".input-box .input1").val("");
        list.html("");
        $.each(replyList, function (i, item) {
            list.append(`
            <li data-reply-number=${item.replyNumber}>
                <p class="comment-txt">${item.contents}</p>
                <p class="comment-name">${item.userNickname}</p>
                <p class="comment-date">2021-10-18</p>
                <button class="comment-change">수정</button>
                <button class="comment-cancel">삭제</button>
            </li>	
            `)

        })


    },
    error: function (errorMsg) {
        console.log(errorMsg);
    }
});



$(".input-box .input2").on("click", function (e) {
    const _parent = $(this).parent();
    const sendData = getUrlParams();
    sendData.contents=$(".input1").val();
   
    console.log("sendData",sendData);

    $.ajax({
        url: "ReplyWrite.do",
        data: sendData,
        type: "POST",

        success: function (resultData) {
            console.log("resultData",resultData); //result: replyList:[{}]
            const list = $(".comment-box");
            const replyList = resultData.replyList;
            
            $(".input-box .input1").val("");
            list.html("");
            $.each(replyList, function (i, item) {
                list.append(`
                <li data-reply-number=${item.replyNumber}>
                    <p class="comment-txt">${item.contents}</p>
                    <p class="comment-name">${item.userNickname}</p>
                    <p class="comment-date">2021-10-18</p>
                    <button class="comment-change">수정</button>
                    <button class="comment-cancel">삭제</button>
                </li>	
                `)

            })


        },
        error: function (errorMsg) {
            console.log(errorMsg);
        }
    });
    return false;
});

$("body").on("click", ".comment-cancel",function () {
    const _parent = $(this).parent();
    const sendData = getUrlParams();
    sendData.replyNumber=_parent.data("reply-number");
    console.log("data",_parent.data("reply-number"));
    $.ajax({
        url: "ReplyDelete.do",
        data: sendData,
        type: "POST",

        success: function (resultData) {
            console.log("resultData",resultData); //result: replyList:[{}]
            const list = $(".comment-box");
            const replyList = resultData.replyList;
            
            $(".input-box .input1").val("");
            list.html("");
            $.each(replyList, function (i, item) {
                list.append(`
                <li data-reply-number=${item.replyNumber}>
                <p class="comment-txt">${item.contents}</p>
                <p class="comment-name">${item.userNickname}</p>
                <p class="comment-date">2021-10-18</p>
                <button class="comment-change">수정</button>
                <button class="comment-cancel">삭제</button>
                </li>	
                `)

            })


        },
        error: function (errorMsg) {
            console.log(errorMsg);
        }
    });
    

});


function getUrlParams() {
	var params = {};
	window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(str, key, value) { params[key] = value; });
	return params;
};