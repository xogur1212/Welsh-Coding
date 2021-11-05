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
    <title>주방 조리대 - IKEA</title>
</head>
<body>
  <jsp:include page="/WEB-INF/views/final/include/header.jsp"/>

  <section id="section1">
    <div class="main-content">
      <h1>주방 조리대</h1>
      <div class="main-content-img-container">
        <div class="main-content-img">
          <a href="WorktopWorktop.do">
            <img src="images/product/kitchen-worktop-worktop.png" alt="">
            <p>라미네이트 상판</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="WorktopWorktop2.do">
            <img src="images/product/kitchen-worktop-worktop2.png" alt="">
          <p>두꺼운 베니어 조리대</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="ItemWorktop.do">
            <img src="images/product/kitchen-worktop-item.png" alt="">
            <p>조리대용품</p>
          </a>
        </div>
      </div>
    </div>
  </section> <!-- section1 -->
  
  <jsp:include page="/WEB-INF/views/final/include/footer.jsp"/>
</body>
</html>