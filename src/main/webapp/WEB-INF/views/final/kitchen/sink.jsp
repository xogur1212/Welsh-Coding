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
    <title>주방 싱크대/수도꼭지 - IKEA</title>
</head>
<body>
  <jsp:include page="/WEB-INF/views/final/include/header.jsp"/>
  
    <section id="section1">
      <div class="main-content">
        <h1>주방 싱크대/수도꼭지</h1>
        <div class="main-content-img-container">
          <div class="main-content-img">
            <a href="SinkSink.do">
              <img src="images/product/bedroom-closet-orderCloset.png" alt="">
              <p>싱크대</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="Tap.do">
              <img src="images/product/bedroom-closet-pullCloset.png" alt="">
              <p>수도꼭지</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="ItemSink.do">
              <img src="images/product/bedroom-closet-slideCloset.png" alt="">
              <p>싱크대 부속품</p>
            </a>
          </div>
          </div>
        </div>
      </div>
    </section> <!-- section1 -->

    <jsp:include page="/WEB-INF/views/final/include/footer.jsp"/>
  </body>
</html>