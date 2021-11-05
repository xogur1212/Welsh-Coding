<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/product/favicon.png">
    <link rel="stylesheet" href="css/kitchenStyle.css">
    <link rel="stylesheet" href="css/hdFtReset.css">
    <script src="js/hdft.js" defer></script>
    <script defer src="js/kitchenMain.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <title>다양한 스타일과 예산을 위한 침실 가구 아이디어 - IKEA</title>
</head>
<body>
  <jsp:include page="/WEB-INF/views/final/include/header.jsp"/>

  <section id="section1">
    <div class="main-content">
      <h1>주방</h1>
      <div class="main-content-img-container">
        <div class="main-content-img">
          <a href="Item.do">
            <img src="images/product/kitchen-item.png" alt="">
            <p>주방 부속품</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="Worktop.do">
            <img src="images/product/kitchen-worktop.png" alt="">
            <p>주방 조리대</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="Sink.do">
            <img src="images/product/kitchen-sink.png" alt="">
            <p>주방 싱크대/수도꼭지</p>
          </a>
        </div>
      </div>
    </div>
  </section> <!-- section1 -->

  <jsp:include page="/WEB-INF/views/final/include/footer.jsp"/>
</body>
</html>