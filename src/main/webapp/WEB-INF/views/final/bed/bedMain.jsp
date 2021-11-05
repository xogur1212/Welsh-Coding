<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/product/favicon.png">
    <link rel="stylesheet" href="css/bedroomStyle.css">
    <link rel="stylesheet" href="css/hdFtReset.css">
    <script src="js/hdft.js" defer></script>
    <script defer src="js/bedroomMain.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/mainSearch.js"></script>
    <title>다양한 스타일과 예산을 위한 침실 가구 아이디어 - IKEA</title>
</head>
<body>
  <jsp:include page="/WEB-INF/views/final/include/header.jsp"/>

  <section id="section1">
    <div class="main-content">
      <h1>침실</h1>
      <div class="main-content-img-container">
        <div class="main-content-img">
          <a href="Bed.do">
            <img src="images/product/bedroom-bed.png" alt="">
            <p>침대</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="Mattress.do">
            <img src="images/product/bedroom-mattress.png" alt="">
            <p>매트리스</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="Closet.do">
            <img src="images/product/bedroom-closet.png" alt="">
            <p>옷장</p>
          </a>
        </div>
      </div>
    </div>
  </section> <!-- section1 -->

  <jsp:include page="/WEB-INF/views/final/include/footer.jsp"/>
</body>
</html>