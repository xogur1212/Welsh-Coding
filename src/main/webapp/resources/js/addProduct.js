

    $.ajax({
        url: "ProductJsonList.do",
        success: function (resultData) {
   		//console.log(resultData.productList);
    	$.each(resultData.productList, function (i, item) {
                const productInsertDate= new Date(item.productInsertDate);
                console.log(i,item.productName,item.productStock,productInsertDate.toDateString(),productInsertDate,item.productHits);
                $(".products-list").append(`<li class="products-list-contents"> </li>`);
                $(".products-list-contents").eq(i).append(`
                                        <span class="products-list-contents-item" >${i}</span>
                                        <span class="products-list-contents-item"><a href="ProductEditPage.do?productNumber=${item.productNumber}">${item.productName}</a></span>
                                        <span class="products-list-contents-item">${item.productStock}</span>
										
                                        <span class="products-list-contents-item">${productInsertDate.getFullYear()}. ${productInsertDate.getMonth()+1}. ${productInsertDate.getDate()}</span>
                                        <span class="products-list-contents-item">${item.productHits}</span>
                                                        
                                         `)
                if(item.isRecommend==='false'){
                    $(".products-list-contents").eq(i).append(`
                                                                <span class="proudcts-list-contents-item add">
                                                                <a href="UpdateRecomendItem.do?isRecommend=true&productNumber=${item.productNumber}">추천제품추가</a></span>`);  
                }else if(item.isRecommend==='true'){
                    $(".products-list-contents").eq(i).append(`
                                                                <span class="proudcts-list-contents-item add">
                                                                <a href="UpdateRecomendItem.do?isRecommend=true&productNumber=${item.productNumber}">추천제품제거</a>`); 
                }
                $(".products-list-contents").eq(i).append(`<span class="proudcts-list-contents-item add"><a href="ProductDelete.do?productNumber=${item.productNumber}">삭제</a></span>`);
                
            });
     
        }
    
    });





