<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/product/favicon.png">
    <link rel="stylesheet" href="css/bedroomMd.css">
    <link rel="stylesheet" href="css/hdFtReset.css">
    <script src="js/hdft.js" defer></script>
    <script defer src="js/bedroomMain.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/mainSearch.js"></script>
    <title>옷장 - IKEA</title>
</head>
<body>
  <jsp:include page="/WEB-INF/views/final/include/header.jsp"/>
  
    <section id="section1">
      <div class="main-content">
        <h1>옷장</h1>
        <div class="main-content-img-container">
          <div class="main-content-img">
            <a href="OrderCloset.do">
              <img src="images/product/bedroom-closet-orderCloset.png" alt="">
              <p>맞춤형 옷장</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="PullCloset.do">
              <img src="images/product/bedroom-closet-pullCloset.png" alt="">
              <p>여닫이 옷장</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="SlideCloset.do">
              <img src="images/product/bedroom-closet-slideCloset.png" alt="">
              <p>미닫이 옷장</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="OpenCloset.do">
              <img src="images/product/bedroom-closet-openCloset.png" alt="">
              <p>오픈형 옷장</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="entranceCloset.do">
              <img src="images/product/bedroom-closet-entranceCloset.png" alt="">
              <p>현관 옷장</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="KidsCloset.do">
              <img src="images/product/bedroom-closet-kidsCloset.png" alt="">
              <p>어린이 옷장</p>
            </a>
          </div>
        </div>
      </div>
    </section> <!-- section1 -->

    <jsp:include page="/WEB-INF/views/final/include/footer.jsp"/>
  </body>
</html>