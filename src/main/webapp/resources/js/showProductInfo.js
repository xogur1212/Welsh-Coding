$.ajax({
    
    url: "ProductJsonOne.do",
    data:getUrlParams(),
    
    success: function (resultData) {
        console.log("getUrlParams",getUrlParams());
        console.log(resultData);
        const productDto=resultData.productDto;
        $(".product-name").html(productDto.productName);
        $(".sale-price span").html(productDto.productPrice);
        $(".mention").html(productDto.productInfo);
        $(".product-mention").html(productDto.productDesc);
        $(".img-container").append(`<div class='product-img'></div>`);
        $(".img-box").html("");
        $.each(productDto.productImageList,function(i,item){
            console.log("img-link",item.productImg);
            $(".img-box").append(`<li class="li-${i}"><img src="${item.productImg}"></li>`)
            $(`.li-${i}`).append(`<div class="btn-box image-list-image${i} data-fileNumber=${item.fileNumber} data-productNumber=${productDto.productNumber}"> </div>`)
            $(`.image-list-image${i}`).append(`<a class="product-btn-edit" href="ProductImageUpdateForm.do?productNumber=${productDto.productNumber}&fileNumber=${item.fileNumber}">수정</a>`)
            $(`.image-list-image${i}`).append(`<a class="product-btn-del" href="ProductImageDelete.do?productNumber=${productDto.productNumber}&fileNumber=${item.fileNumber}">삭제</a>`)
        });

         
        
        $(".last-box").append(`<a href="ProductImageInsertForm.do?productNumber=${productDto.productNumber}" class="purchase-btn">이미지 추가 </a>`);
        $(".last-box").append(`<a href="ProductImageInsertForm.do?productNumber=${productDto.productNumber}" class="purchase-btn">수정하기 </a>`);
    }


});

function getUrlParams() {
	var params = {};
	window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(str, key, value) { params[key] = value; });
	return params;
};