<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/product/favicon.png">
    <link rel="stylesheet" href="css/bedroomMd.css">
    <link rel="stylesheet" href="css/hdFtReset.css">
    <script src="js/hdft.js" defer></script>
    <script defer src="js/bedroomMain.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/mainSearch.js"></script>
    <title>매트리스 - IKEA</title>
    
</head>
<body>
  <jsp:include page="/WEB-INF/views/final/include/header.jsp"/>
  
    <section id="section1">
      <div class="main-content">
        <h1>침대</h1>
        <div class="main-content-img-container">
          <div class="main-content-img">
            <a href="SpringMattress.do">
              <img src="images/product/bedroom-mattress-springMattress.png" alt="">
              <p>스프링 매트리스</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="LatexMattress.do">
              <img src="images/product/bedroom-mattress-latexMattress.png" alt="">
              <p>폼/라텍스 매트리스</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="CusionPad.do">
              <img src="images/product/bedroom-mattress-cusionPad.png" alt="">
              <p>매트리스/베개 보호 패드</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="MattressTopper.do">
              <img src="images/product/bedroom-mattress-toppers.png" alt="">
              <p>매트리스 토퍼</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="KidsMattress.do">
              <img src="images/product/bedroom-closet-kidsCloset.png" alt="">
              <p>어린이 매트리스</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="BabyMattress.do">
              <img src="images/product/bedroom-mattress-babyMattress.png" alt="">
              <p>영아용 매트리스 </p>
            </a>
          </div>
        </div>
      </div>
    </section> <!-- section1 -->

    <jsp:include page="/WEB-INF/views/final/include/footer.jsp"/>
  </body>
</html>