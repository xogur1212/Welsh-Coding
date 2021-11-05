let productPrice=0;

$.ajax({
    url: "GetCartProductList.do",
    success: function (resultData) {
      console.log(resultData);
      $(".imgbox").html("");
      $.each(resultData.selectCartProduct,function(i,item) {

    
        $(".imgbox").append(`
          <img src="${item.productImageList[0].productImg}">
        `)
        productPrice+=item.productPrice;
        console.log("ProductPrice",productPrice);
      })
      $(".order-price h3").html("￦ " + productPrice);
      $(".total-price h3").html("￦ " + productPrice);
    },
    error: function (errorMsg) {


      console.log(errorMsg);
    }

  })




  $(".order-btn").on("click",function(){

    const sendData={
        deliveryZipcode:$(".address-number-value").val(),
        deliveryAddress:$(".address-value").val(),
        reciverName:$(".name-value").val(),
        reciverPhone:$(".phone-value").val()

    }


    console.log(sendData);

    $.ajax({
        url: "AddCustomerOrder.do",
        data:sendData,
        success: function (resultData) {
          console.log(resultData);
        	location.href="/welsh";
    
        },
        error: function (errorMsg) {
    
    
          console.log(errorMsg);
        }
    
      })








    return false;
  })


$.ajax({
  url: "GetCustomer.do",
  success: function (resultData) {
    console.log(resultData);
    $(".name-value").val(resultData.userName);
    $(".email-value").val(resultData.userId);
    $(".phone-value").val(resultData.userPhone);
    $(".address-value").val(resultData.userAddress);
    $(".address-number-value").val(resultData.userZipCode);


  }
})