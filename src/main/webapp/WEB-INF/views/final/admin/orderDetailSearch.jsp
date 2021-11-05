<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/favicon.png" />
    <link rel="stylesheet" href="test/css/reset.css">
    <link rel="stylesheet" href="css/admin/orderSearch.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <script src="js/mainSearch.js"></script>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@100;200;300;400;500;600;700&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

    <title>상품목록</title>

    <script defer src="js/orderDetailSearch.js"></script>
    
    <script src="js/jquery-3.6.0.min.js"></script>
</head>
<body>
    <header id="header">
        <div class="header-ui">
            <span class="back-btn">
                <img src="https://img.icons8.com/ios-glyphs/60/000000/circled-left.png"/>
            </span>
            <a href="AdminPage.do">
                <h1 class="title">
                    관리자 페이지 
                </h1>
            </a>
            <a href="#" class="logout">
                <p>로그아웃</p>
            </a>
        </div>
        <ul class="header-gnb">
            <li><a href="OrderSearch.do">배송조회</a></li>
            <li><a href="Sales.do">매출조회</a></li>
            <li><a href="Upload.do">상품등록</a></li>
            <li><a href="Products.do">상품목록</a></li>
            <li><a href="/welsh">홈으로</a></li>
        </ul>
    </header>

    <div class="products-list">
        <ul>
        	<li class="products-list-title">
        		<span class="products-list-title-item">
	                No
	           	 </span>
	           	<span class="products-list-title-item">
	                주문번호
	            </span>
	            
	            <span class="products-list-title-item">
	                상품번호
	            </span>
	            <span class="products-list-title-item">
	                상품가격
	            </span>
	            <span class="products-list-title-item">
	                구매량
	            </span>
            </li>
        </ul>
     
    </div>
    
    	

    <footer id="footer">
        &copy; 2021. IKEA. All right reserved.
    </footer>
</body>
</html>