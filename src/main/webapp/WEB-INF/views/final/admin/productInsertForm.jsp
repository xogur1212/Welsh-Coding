<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/logo.png">
    <link rel="stylesheet" href="css/admin/reset.css">
    <link rel="stylesheet" href="css/admin/upload.css">
    <script src="js/mainSearch.js"></script>
    <title>상품등록</title>
    <script defer src="js/main.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
</head>
<body>
    <header id="header">
        <div class="header-ui">
            <span class="back-btn">
                <img src="https://img.icons8.com/ios-glyphs/60/000000/circled-left.png"/>
            </span>
            <a href="/AdminPage.do">
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
    <form class="upload-form" action="ProductImageInsert.do" name="upload" method="POST" autocapitalize="on" enctype="multipart/form-data">
     
        <label>
            상품이미지 
            <input type="file" name="multipartAddImg" >
        </label>
			<input type="hidden" name="productNumber" value="${param.productNumber}">
        <button type="submit" class="upload-btn">
            등록하기
        </button>
    </form>
    <footer id="footer">
        &copy; 2021. IKEA. All right reserved.
    </footer>
</body>
</html>