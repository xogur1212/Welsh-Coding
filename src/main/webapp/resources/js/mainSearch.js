

function mainAjax(searchWord) {

	console.log("searchWord", searchWord);
	if (searchWord === undefined) {
		searchword = "";
	}

	console.log("searchWord2", searchWord);
	let sendData = { searchWord: searchWord };

	console.log("senddata", sendData);
	$.ajax({

		url: "MainSearch.do",
		data: sendData,


		success: function(resultData) {


			console.log(resultData);
			$(".modal-product").remove();
			$(".search-box").val(searchWord);
			$.each(resultData.productDtoList, function(i, item) {
				$(".search-modal").append(`
                <div class="modal-product">
                    <a href="ProductInfo.do?productNumber=${item.productNumber}">
                        <div class="modal-img">
                        <img src="${item.productImageList[0].productImg}" alt="" >
                        </div>
                        <div class="modal-txt">
                        <h4>${item.productName}</h4>
                        <h5>${item.productInfo}</h5>
                        </div>
                    </a>
              </div>
                `)

			})

		}


	});

}



function search() {


	searchWord = $(".modal-box").val();
	console.log("searchWord", searchWord);
	mainAjax(searchWord);
}




function getUrlParams() {
	var params = {};
	window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(str, key, value) { params[key] = value; });
	return params;
};







