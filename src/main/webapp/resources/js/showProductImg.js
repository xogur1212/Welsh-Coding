$.ajax({
    
    url: "ProductJsonOne.do",
    data:getUrlParams(),
    
    success: function (resultData) {
        console.log("getUrlParams",getUrlParams());
        console.log(resultData);
        const productDto=resultData.productDto;

        console.log(`${productDto.productName}`);
        $(".product-name").html(productDto.productName);
        $(".sale-price span").html(productDto.productPrice);
        $(".mention").html(productDto.productInfo);
        $(".product-mention").html(productDto.productDesc);

        //img
        const imgbox=$(".img-box");
        imgbox.html("");
        $.each(productDto.productImageList,function(i,item){
            imgbox.append(` <li>
            <img src="${item.productImg}" alt="상품이미지${i}" />
          </li>`)
        });
        
    }


});


function getUrlParams() {
	var params = {};
	window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(str, key, value) { params[key] = value; });
	return params;
};