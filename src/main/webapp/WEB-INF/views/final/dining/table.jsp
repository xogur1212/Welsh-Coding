<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/product/favicon.png">
    <link rel="stylesheet" href="css/diningMd.css">
    <link rel="stylesheet" href="css/hdFtReset.css">
    <script src="js/hdft.js" defer></script>
    <script defer src="js/diningMain.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/mainSearch.js"></script>
    <title>식탁 - IKEA</title>
</head>
<body>
  <jsp:include page="/WEB-INF/views/final/include/header.jsp"/>

  <section id="section1">
    <div class="main-content">
      <h1>식탁</h1>
      <div class="main-content-img-container">
        <div class="main-content-img">
          <a href="fourpeople.do">
            <img src="images/product/dining-table-4people.png" alt="">
            <p>4인용</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="sixpeople.do">
            <img src="images/product/dining-table-6people.png" alt="">
          <p>6인용</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="eightpeople.do">
            <img src="images/product/dining-table-8people.png" alt="">
            <p>8인용</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="tenpeople.do">
            <img src="images/product/dining-table-10people.png" alt="">
            <p>10인용</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="Extendable.do">
            <img src="images/product/dining-table-extendable.png" alt="">
            <p>확장형 테이블</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="Frame.do">
            <img src="images/product/dining-table-frame.png" alt="">
            <p>식탁상판/하부프레임</p>
          </a>
        </div>
      </div>
    </div>
  </section> <!-- section1 -->
  
  <jsp:include page="/WEB-INF/views/final/include/footer.jsp"/>
</body>
</html>