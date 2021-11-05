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
    <title>식탁 의자 - IKEA</title>
</head>
<body>
  <jsp:include page="/WEB-INF/views/final/include/header.jsp"/>
  
    <section id="section1">
      <div class="main-content">
        <h1>식탁 의자</h1>
        <div class="main-content-img-container">
          <div class="main-content-img">
            <a href="CoverChair.do">
              <img src="images/product/dining-chair-coverChair.png" alt="">
              <p>커버 의자</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="ChairChair.do">
              <img src="images/product/dining-chair-chair.png" alt="">
              <p>식탁 의자</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="Pad.do">
              <img src="images/product/dining-chair-pad.png" alt="">
              <p>의자 패드</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="Foldable.do">
              <img src="images/product/dining-chair-foldable.png" alt="">
              <p>접의식 의자</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="CoverChair2.do">
              <img src="images/product/dining-chair-coverChair2.png" alt="">
              <p>의자 커버</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="BabyChair.do">
              <img src="images/product/dining-chair-babyChair.png" alt="">
              <p>유아용 식탁 의자</p>
            </a>
          </div>
        </div>
      </div>
    </section> <!-- section1 -->

    <jsp:include page="/WEB-INF/views/final/include/footer.jsp"/>
  </body>
</html>