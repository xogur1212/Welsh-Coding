function mainAjax(searchSelect,searchWord,clickedPage){
    
    //console.log("searchSelect",searchSelect,searchWord);
    /*
    if(searchSelect===undefined || searchWord===undefined){
        searchSelect="";
        searchword="";
    }
   
    console.log("searchSelect2",searchSelect,searchWord);
    */
    let sendData=getUrlParams();
    sendData.searchSelect=searchSelect;
    sendData.searchWord=searchWord;
    sendData.clickedPage=clickedPage;
    console.log("senddata",sendData);
    $.ajax({

        url: "OrderSearchList.do",
        data: sendData,
        success: function (resultData) {
            console.log("getUrlParams()",getUrlParams());
            console.log("resultData",resultData);
            $(".products-list-contents").remove();
            $(".paginationBox ul").html("");
            
            let searchSelect=resultData.searchSelect;
            let searchWord=resultData.searchWord;

            if(searchSelect===""){
                searchSelect = "orderNumber";
            }
            if(searchWord===""){
                searchWord = "blank";
            }
            console.log("searchSelect : ",searchSelect, "searchWord : ", searchWord);
            $.each(resultData.orderList, function (i, item) {
                const orderDatetDate = new Date(item.orderDate);
    
    
    
            $(".products-list").append(`<li class="products-list-contents"> </li>`);
            $(".products-list-contents").eq(i).append(`
                                                        <span class="products-list-contents-item" >${item.num}</span>
                                                        <span class="products-list-contents-item">
                                                        <a href="OrderDetailSearch.do?orderNumber=${item.orderNumber}">${item.orderNumber}</a></span>
                                                        <span class="products-list-contents-item">${item.reciverName}</span>
                                                        <span class="products-list-contents-item">${item.userId}</span>
                                                        <span class="products-list-contents-item"> ${orderDatetDate.getFullYear()}
														.${orderDatetDate.getMonth()+1}. ${orderDatetDate.getDate()}</span>
                                                        
                                                    `)
    
    
            });
            if (resultData.startPage != 1) {
                $(".paginationBox ul").append(`
                                            <li>
                                                <button onclick="page('${searchSelect}','${searchWord}',${resultData.startPage - resultData.pageGroupCount })">
                                                <span class="material-icons">chevron_left</span>
                                                </button></li>
                                            </li>
                                            `);
            }
            for(let i=resultData.startPage;i<=resultData.endPage;i++){
                console.log("i",i);
                $(".paginationBox ul").append(`<li class="${resultData.currentPage == i ? 'active':'' }">
                <button onclick="page('${searchSelect}','${searchWord}',${i})">${i }</button></li>`)
            }
            if(resultData.endPage!=resultData.lastPage){
                $(".paginationBox ul").append(`<li>
                                                <button onclick="page('${searchSelect}','${searchWord}',${resultData.startPage + resultData.pageGroupCount })">
                                                <span class="material-icons">chevron_right</span>
                                                </button></li>
                                               
                                            </li>`);
            }
            if( resultData.searchWord!=="blank")
            $(".searchWord").val(`${resultData.searchWord}`);
        }
    
    
    });
   
}

mainAjax("","",0);

function search(){
    
        searchSelect=$(".searchSelect").val();
        searchWord=$(".searchWord").val();

    
    console.log("searchSelect",$(".searchSelect").val());
    console.log("searchWord",$(".searchWord").val());
    mainAjax(searchSelect,searchWord,0);
}

function page(searchSelect,searchWord,clickedPage){

    mainAjax(searchSelect,searchWord,clickedPage);

    
}

function getUrlParams() {
	var params = {};
	window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(str, key, value) { params[key] = value; });
	return params;
};