<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/product/favicon.png">
    <link rel="stylesheet" href="css/kitchenMd.css">
    <link rel="stylesheet" href="css/hdFtReset.css">
    <script src="js/hdft.js" defer></script>
    <script defer src="js/kitchenMain.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/mainSearch.js"></script>
    <title>주방 부속품 - IKEA</title>
</head>
<body>
  <jsp:include page="/WEB-INF/views/final/include/header.jsp"/>
  
    <section id="section1">
      <div class="main-content">
        <h1>주방 부속품</h1>
        <div class="main-content-img-container">
          <div class="main-content-img">
            <a href="Partition.do">
              <img src="images/product/kitchen-item-partition.png" alt="">
              <p>서랍 칸막이</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="Organiser.do">
              <img src="images/product/kitchen-item-collection.png" alt="">
              <p>분리수거통</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="Shelve.do">
              <img src="images/product/kitchen-item-shelve.png" alt="">
              <p>선반/서랍</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="Equipment.do">
              <img src="images/product/kitchen-item-equipment.png" alt="">
              <p>경첩/완충 장치</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="Organiser.do">
              <img src="images/product/kitchen-item-organiser.png" alt="">
              <p>청소 용품 정리함</p>
            </a>
          </div>
        </div>
      </div>
    </section> <!-- section1 -->

    <jsp:include page="/WEB-INF/views/final/include/footer.jsp"/>
  </body>
</html>