$.ajax({
    
    url: "RecommendJsonList.do",
    success: function (resultData) {

        console.log(resultData.productList);
        const productList = resultData.productList;
       

        $.each(productList, function (i, item) {
            //var categories = item.category.replace(/,/gi, ' ');
            console.log("item",item);

            
            $(".recommend-product").append(`
                                    
                    <li class="product-${i+1} swiper-slide">
                        <a href="ProductInfo.do?productNumber=${item.productNumber}">
                            <i class="far fa-heart"></i>
                            <div class="img-box">
                                <img src="${item.productImageList[0].productImg}" alt="추천제품${i+1}">
                            </div>
                            <h6 class="event-price">NEW</h6>
                            <h5 class="product-name">${item.productName}</h5>
                            <p class="mention">${item.productInfo}</p>
                            <h6 class="price">￦ 199,000</h6>
                            <h4 class="sale-price"><span>￦ </span>${item.productPrice}</h4>
                            <p class="star">★★★★★</p>
                            <i class="fas fa-cart-plus"></i>
                        </a>  
                    </li>`)


                


        
        });

            // 추천제품 몇개 이상일 때 슬라이드
                    var ulLength = document.getElementById("ultest");
                    var liLength = ulLength.childElementCount;
                    console.log("liLength",liLength);
                    // if(liLength < 5) {
                    //     $(".recommend").removeClass("swiper mySwiper");
                    //     $(".product-btn").removeClass("swiper-button-next swiper-button-prev");
                    // }

                    
                    var swiper = new Swiper(".mySwiper", {
                        slidesPerView: 3,
                        spaceBetween: 100,
                        slidesPerGroup: 3,
                        loop: true,
                        loopFillGroupWithBlank: true,
                        navigation: {
                        nextEl: ".swiper-button-next",
                        prevEl: ".swiper-button-prev",
                        },
                    });

                    var swiper = new Swiper(".mySwiper2", {
                        slidesPerView: 5,
                        spaceBetween: 100,
                        slidesPerGroup: 4,
                        loop: true,
                        loopFillGroupWithBlank: true,
                        navigation: {
                        nextEl: ".swiper-button-next",
                        prevEl: ".swiper-button-prev",
                        },
                    });


                    
    }

});

function getUrlParams() {
	var params = {};
	window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(str, key, value) { params[key] = value; });
	return params;
};