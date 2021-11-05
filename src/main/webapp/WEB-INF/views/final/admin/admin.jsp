<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/favicon.png">
    <link rel="stylesheet" href="css/admin/reset.css">
    <link rel="stylesheet" href="css/admin/style.css">
    <script src="js/mainSearch.js"></script>
    <title>관리자 페이지</title>
    
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
    <section id="section1" class="gnb">
        <div class="member">
            <a href="OrderSearch.do">
                <img src="https://img.icons8.com/ios-glyphs/100/000000/user.png"/>
                <h3>배송조회</h3>
            </a>
        </div>
        <div class="sales">
            <a href="Sales.do">
                <img src="https://img.icons8.com/ios-glyphs/100/000000/rebalance-portfolio.png"/>
                <h3>매출조회</h3>
            </a>
        </div>
        <div class="upload">
            <a href="Upload.do">
                <img src="https://img.icons8.com/material-outlined/100/000000/upload--v1.png"/>
                <h3>상품등록</h3>
            </a>
        </div>
        <div class="products">
            <a href="Products.do">
                <img src="https://img.icons8.com/material-outlined/100/000000/list.png"/>
                <h3>상품목록</h3>
            </a>
        </div>
        <div class="home">
            <a href="/welsh">
                <img src="https://img.icons8.com/material-rounded/100/000000/home.png"/>
                <h3>홈으로</h3>
            </a>
        </div>
        <div class="recommend">
            <a href="#">
            	
            </a>
        </div>
    </section>
    <footer id="footer">
        &copy; 2021. IKEA. All right reserved.
    </footer>
</body>
</html>