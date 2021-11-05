function productAjax(categoryCode){
    $.ajax({
        url:"ShowProduct.do",
        data:{categoryCode:categoryCode},
        success:function(resultData){
            console.log(resultData.productList);
            $(".main-content-img-container").html("");
    
            $.each(resultData.productList,function(i,item){
                
                $(".main-content-img-container").append(`
               
                <div class="main-content-img">
                <a href="ProductInfo.do?productNumber=${item.productNumber}">
                    <img src='${item.productImageList[0].productImg}' alt="">
                    <p>${item.productName}</p>
                    <p>${item.productInfo}</p>
                    <p>${item.productPrice}</p>
                    <p>★★★★★</p>
                    <p> <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="20" height="20" viewBox="0 0 24 24" style=" fill:#00a808;"> <path d="M 12 2 A 10 10 0 0 0 2 12 A 10 10 0 0 0 12 22 A 10 10 0 0 0 22 12 A 10 10 0 0 0 12 2 z"></path></svg>
                        </svg>
                        배송 가능
                    </p>
                </a>
            </div>
            
            `);
    
    
            })
    
    
            
    
        
        }
    
    
    })
}


// <a href="ProductInfo.do?productNumber=${item.productNumber}"></a>