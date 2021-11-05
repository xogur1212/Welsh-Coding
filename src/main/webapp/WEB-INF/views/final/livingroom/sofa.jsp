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
    <title>소파 - IKEA</title>
</head>
<body>
  <jsp:include page="/WEB-INF/views/final/include/header.jsp"/>

  <section id="section1">
    <div class="main-content">
      <h1>소파</h1>
      <div class="main-content-img-container">
        <div class="main-content-img">
          <a href="SofaBedSofa.do">
            <img src="images/product/livingroom-sofa-sofaBed.png" alt="">
            <p>소파베드</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="FabricSofa.do">
            <img src="images/product/livingroom-sofa-fabricSofa.png" alt="">
          <p>패브릭 소파</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="ModularSofa.do">
            <img src="images/product/livingroom-sofa-modularSofa.png" alt="">
            <p>모듈식 소파</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="CusionSofa.do">
            <img src="images/product/livingroom-sofa-cusionSofa.png" alt="">
            <p>쿠션형/풋스툴</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="SofaCover.do">
            <img src="images/product/livingroom-sofa-sofaCover.png" alt="">
            <p>소파커버</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="CoatedSofa.do">
            <img src="images/product/livingroom-sofa-coatedSofa.png" alt="">
            <p>천연/인조가죽 소파</p>
          </a>
        </div>
      </div>
    </div>
  </section> <!-- section1 -->
  
  <jsp:include page="/WEB-INF/views/final/include/footer.jsp"/>
</body>
</html>