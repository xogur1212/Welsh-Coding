    $.ajax({

        url: "OrderDetailJsonList.do",
        data:getUrlParams(),
        success: function (resultData) {
    
            console.log(resultData.orderDetailList);
    
    
            $.each(resultData.orderDetailList, function (i, item) {
            
                $(".products-list").append(`<li class="products-list-contents"> </li>`);
                $(".products-list-contents").eq(i).append(`
                                                        <span class="products-list-contents-item" >${i+1}</span>
                                                        <span class="products-list-contents-item">${item.orderNumber}</span>
                                                        <span class="products-list-contents-item">${item.productNumber}</span>
                                                        <span class="products-list-contents-item">${item.productPrice}</span>
                                                        <span class="products-list-contents-item">${item.productCount}</span>
                                                    `)
              
            });
        
        }
    
    });

    function getUrlParams() {
        var params = {};
        window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(str, key, value) { params[key] = value; });
        return params;
    };