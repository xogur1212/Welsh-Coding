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
    <title>식탁 세트 - IKEA</title>
</head>
<body>
  <jsp:include page="/WEB-INF/views/final/include/header.jsp"/>
  
    <section id="section1">
      <div class="main-content">
        <h1>식탁 세트</h1>
        <div class="main-content-img-container">
          <div class="main-content-img">
            <a href="2people.do">
              <img src="images/product/dining-set-2people.png" alt="">
              <p>2인용 식탁 세트</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="4people.do">
              <img src="images/product/dining-set-4people.png" alt="">
              <p>4인용 식탁 세트</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="6people.do">
              <img src="images/product/dining-set-6people.png" alt="">
              <p>6인용 식탁 세트</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="10people.do">
              <img src="images/product/dining-set-10people.png" alt="">
              <p>10인용 식탁 세트</p>
            </a>
          </div>
          </div>
        </div>
      </div>
    </section> <!-- section1 -->

    <jsp:include page="/WEB-INF/views/final/include/footer.jsp"/>
  </body>
</html>