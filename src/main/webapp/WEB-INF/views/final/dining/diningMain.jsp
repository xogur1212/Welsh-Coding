<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/product/favicon.png">
    <link rel="stylesheet" href="css/diningStyle.css">
    <link rel="stylesheet" href="css/hdFtReset.css">
    <script src="js/hdft.js" defer></script>
    <script defer src="js/diningMain.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/mainSearch.js"></script>
    <title>다양한 스타일과 예산을 위한 침실 가구 아이디어 - IKEA</title>
</head>
<body>
  <jsp:include page="/WEB-INF/views/final/include/header.jsp"/>


  <section id="section1">
    <div class="main-content">
      <h1>다이닝</h1>
      <div class="main-content-img-container">
        <div class="main-content-img">
          <a href="Chair.do">
            <img src="images/product/dining-chair.png" alt="">
            <p>식탁 의자</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="Table.do">
            <img src="images/product/dining-table.png" alt="">
            <p>식탁</p>
          </a>
        </div>
        <div class="main-content-img">
          <a href="Set.do">
            <img src="images/product/dining-set.png" alt="">
            <p>식탁 세트</p>
          </a>
        </div>
      </div>
    </div>
  </section> <!-- section1 -->

  <jsp:include page="/WEB-INF/views/final/include/footer.jsp"/>
</body>
</html>