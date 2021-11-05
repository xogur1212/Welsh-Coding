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
    <title>침대 - IKEA</title>
</head>
<body>
  <jsp:include page="/WEB-INF/views/final/include/header.jsp"/>

  <section id="section1">
    <div class="main-content">
      <h1>침대</h1>
      <div class="main-content-img-container">
        <div class="main-content-img">
          <a href="KingBed.do">
            <img src="images/product/bedroom-bed-kingBed.png" alt="">
            <p>더블/퀸/킹 침대</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="SofaBed.do">
            <img src="images/product/bedroom-bed-sofaBed.png" alt="">
          <p>소파베드</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="CabinetBed.do">
            <img src="images/product/bedroom-bed-cabinet.png" alt="">
            <p>수납형 침대</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="DivanBed.do">
            <img src="images/product/bedroom-bed-divanBed.png" alt="">
            <p>디반 침대</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="SingleBed.do">
            <img src="images/product/bedroom-bed-singleBed.png" alt="">
            <p>싱글/수퍼싱글 + 침대</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="DayBed.do">
            <img src="images/product/bedroom-bed-daybed.png" alt="">
            <p>간이침대/데이베드</p>
          </a>
        </div>
      </div>
    </div>
  </section> <!-- section1 -->
  
  <jsp:include page="/WEB-INF/views/final/include/footer.jsp"/>
</body>
</html>