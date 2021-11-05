<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/product/favicon.png">
    <link rel="stylesheet" href="css/livingroomStyle.css">
    <link rel="stylesheet" href="css/hdFtReset.css">
    <script src="js/hdft.js" defer></script>
    <script defer src="js/livingroomMain.js"></script>
    <script src="js/mainSearch.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <title>모두가 함께 쓰는 다목적 거실 - IKEA</title>
</head>
<body>
  <jsp:include page="/WEB-INF/views/final/include/header.jsp"/>

  <section id="section1">
    <div class="main-content">
      <h1>거실</h1>
      <div class="main-content-img-container">
        <div class="main-content-img">
          <a href="Sofa.do">
            <img src="images/product/livingroom-sofa.png" alt="">
            <p>소파</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="Storage.do">
            <img src="images/product/livingroom-storage.png" alt="">
            <p>수납장/장식장</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="Media.do">
            <img src="images/product/livingroom-media.png" alt="">
            <p>TV/멀티미디어가구</p>
          </a>
        </div>
      </div>
    </div>
  </section> <!-- section1 -->
  
  <jsp:include page="/WEB-INF/views/final/include/footer.jsp"/>
</body>
</html>