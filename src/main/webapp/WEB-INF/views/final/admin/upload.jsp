<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/favicon.png">
    <link rel="stylesheet" href="css/admin/reset.css">
    <script src="js/mainSearch.js"></script>
    <link rel="stylesheet" href="css/admin/upload.css">
    <title>상품등록</title>
    
    <script defer src="js/admin/checkBox.js"></script>
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
    <form class="upload-form" action="RegisterItem.do" name="upload" method="POST" autocapitalize="on" enctype="multipart/form-data">
        <label> <!-- for과 id가 일치하면 묶임, 근데 암시적으로 이렇게 label 태그 안에다가 묶어서 사용 가능 이게 가시성이 더 좋아 이렇게 진행 -->
            카테고리
            
            <select name="categoryLg" class="category-lg"> <!--name은 서버로 보낼 이름, category로 지정해줌 -->
             	<option value="">선택</option>
                <option value="bed">침대</option>
                <option value="livingroom">거실</option>
                <option value="kitchen">주방</option>
                <option value="dining">다이닝</option>
               
            </select>
            <select name="categoryMd" class="category-md"> <!--name은 서버로 보낼 이름, category로 지정해줌 -->
            	<option value="">선택</option>
                
            </select>
            <select name="categorySm" class="category-sm"> <!--name은 서버로 보낼 이름, category로 지정해줌 -->
              	<option value="">선택</option>
            </select>
        </label>
        <label>
            상품이름
            <input type="text" name="productName" placeholder="상품 이름을 입력하세요.">
        </label>
        <label>
            상품설명
            <input type="text" name="productInfo" placeholder="상품 소개를 입력하세요.">
        </label>
        <label>
            상품가격
            <input type="number" name="productPrice" placeholder="상품 가격을 입력하세요.(숫자만 기입)">
        </label>
        <label>
            상품개수
            <input type="number" name="productStock" placeholder="상품 개수를 입력하세요.(숫자만 기입)">
        </label>
        <label>
            상품설명
            <textarea type="text" name="productDesc" cols="100" rows="20" placeholder="상품 설명을 간단히 작성해 주세요."></textarea>
        </label>
        
        
        <label>
            상품이미지
            <input type="file" name="multipartImg" >
        </label>

        <button type="submit" class="upload-btn">
            등록하기
        </button>
    </form>
    <footer id="footer">
        &copy; 2021. IKEA. All right reserved.
    </footer>
    
    
    
    
</body>
</html>