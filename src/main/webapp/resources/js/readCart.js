const getCookieValue = (key) => {
  let cookieKey = key + "=";
  let result = "";
  const cookieArr = document.cookie.split(";");

  for (let i = 0; i < cookieArr.length; i++) {
    if (cookieArr[i][0] === " ") {
      cookieArr[i] = cookieArr[i].substring(1);
    }

    if (cookieArr[i].indexOf(cookieKey) === 0) {
      result = cookieArr[i].slice(cookieKey.length, cookieArr[i].length);
      return result;
    }
  }
  return result;
}
let sendData = {
  productNumber: "",
  cartNumber: 0
};


if (getCookieValue('productNumber') !== null && getCookieValue('cartNumber') !== 0) {

  sendData = {
    productNumber: getCookieValue('productNumber'),
    cartNumber: getCookieValue('cartNumber')
  }
}




let totalPrice=0;

$.ajax({
  url: "ReadCookie.do",
  data: sendData,
  type: "POST",

  success: function (resultData) {

    $(".cart-left ul").html("");
    console.log("resultData", resultData); //result: replyList:[{}]
    $.each(resultData.selectCartProduct, function (i, item) {
      totalPrice+=item.productPrice;
      console.log("totalPrice",totalPrice);
      $(".cart-left ul").append(`
          <li class="cart-product" data-productNumber="${item.productNumber}">
                      <img src="${item.productImageList[0].productImg}" alt="상품이미지1" />
                      <div class="product-info">
                        <h5 class="product-name">${item.productName}</h5>
                        <p class="mention">쿠션형 침대프레임, 150x200 cm</p>
                        <div class="count">
                          <select name="" id="">
                            <option value="1">1</option>
                          </select>
                          <a href="#" class="cancel">삭제</a>
                        </div>
                      </div>
                      <h4>￦ ${item.productPrice}</h4>
                    </li>`)
    })
    $(".total h4").html("￦ "+totalPrice);

  },
  error: function (errorMsg) {
    console.log(errorMsg);
  }
});



/*
$(".order-btn").on("click", function () {
  $.ajax({
    url: "AddOrder.do",
    success: function (resultData) {
      console.log(resultData);
    },
    error: function (errorMsg) {


      console.log(errorMsg);
    }

  })


  return false;
})
*/