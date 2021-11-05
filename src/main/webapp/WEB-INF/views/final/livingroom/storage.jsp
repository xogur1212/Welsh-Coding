<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/product/favicon.png">
    <link rel="stylesheet" href="css/livingroomMd.css">
    <link rel="stylesheet" href="css/hdFtReset.css">
    <script src="js/hdft.js" defer></script>
    <script defer src="js/livingroomMain.js"></script>
    <script src="js/mainSearch.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <title>수납장/장식장 - IKEA</title>
</head>
<body>
  <jsp:include page="/WEB-INF/views/final/include/header.jsp"/>
  
    <section id="section1">
      <div class="main-content">
        <h1>수납장/장식장</h1>
        <div class="main-content-img-container">
          <div class="main-content-img">
            <a href="System.do">
              <img src="images/product/livingroom-storage-system.png" alt="">
              <p>거실수납시스템</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="Buffet.do">
              <img src="images/product/livingroom-storage-buffet.png" alt="">
              <p>거실장/찬장</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="Cabinet.do">
              <img src="images/product/livingroom-storage-cabinet.png" alt="">
              <p>장식장</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="Cabinet2.do">
              <img src="images/product/livingroom-storage-cabinet2.png" alt="">
              <p>수납장</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="Cabinet3.do">
              <img src="images/product/livingroom-storage-cabinet3.png" alt="">
              <p>수납유닛/수납장</p>
            </a>
          </div>
        </div>
      </div>
    </section> <!-- section1 -->

    <jsp:include page="/WEB-INF/views/final/include/footer.jsp"/>
  </body>
</html>