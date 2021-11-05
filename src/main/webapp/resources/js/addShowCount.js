$.ajax({
    
    url: "ProductIncreaseShowCount.do",
    data:getUrlParams(),
    
    success: function (resultData) {
        console.log("조회수 증가성공");
        
        
    }


});