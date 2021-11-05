$.ajax({

    url:"GetCustomerOrderSearch.do",
    success:function(resultData){
        let count=0;
        console.log(resultData);

            $(".product-wrap").remove();
        $.each(resultData.orderList,function(i,item){
            count++;
            const orderDate= new Date(item.orderDate);


            $("#content").append(`
            <div class="product-wrap product-wrap-${i}">
            <div class="order-number">
                <p>
                    주문번호 : ${item.orderNumber} <br />
                    주문날짜 : ${orderDate.getFullYear()}. ${orderDate.getMonth()+1}. ${orderDate.getDate()}
                </p>
            </div>
            <!-- product-number 끝 -->
            `)
            $.each(item.productOrderDetailList,function(i2,orderDetailList){

                $(`.product-wrap-${i}`).append(`
                <div class="product-container">
                    <div class="product-left">
                        <div class="product-img">
                            <img src=${orderDetailList.productList[0].productImageList[0].productImg} alt="상품이미지${i}" />
                        </div>
                        <div class="product-txt">
                            <h5 class="product-name">${orderDetailList.productList[0].productName}</h5>
                            <p class="mention">${orderDetailList.productList[0].productInfo}</p>
                        </div>
                    </div>
                    <div class="product-center">
                        <div class="product-option">
                            <h4>￦ ${orderDetailList.productList[0].productPrice}</h4>
                            <p>1개</p>
                            <h5>배송완료</h5>
                        </div>
                    </div>
                    <div class="product-right">
                        <button class="trace-btn">배송추적</button>
                        <button class="confirm-btn">구매확정</button>
                    </div>
                </div>
    
                `)
            })
           
            
         
    
        })
        $(".done-payment h4").html(count);  
        
    }
})



