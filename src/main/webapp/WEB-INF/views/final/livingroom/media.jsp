<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/product/favicon.png">
    <link rel="stylesheet" href="css/livingroomMd.css">
    <link rel="stylesheet" href="css/hdFtReset.css">
    <script src="js/hdft.js" defer></script>
    <script defer src="js/livingroomMain.js"></script>
    <script src="js/mainSearch.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <title>TV/멀티미디어가구 - IKEA</title>
</head>
<body>
  <jsp:include page="/WEB-INF/views/final/include/header.jsp"/>
  
    <section id="section1">
      <div class="main-content">
        <h1>TV/멀티미디어가구</h1>
        <div class="main-content-img-container">
          <div class="main-content-img">
            <a href="StorageMedia.do">
              <img src="images/product/livingroom-media-storage.png" alt="">
              <p>TV/멀티미디어 수납</p>
            </a>
          </div>
          <div class="main-content-img">
            <a href="TvBench.do">
              <img src="images/product/livingroom-media-tvBench.png" alt="">
              <p>TV장식장</p>
            </a>
          </div>
        </div>
      </div>
    </section> <!-- section1 -->

    <jsp:include page="/WEB-INF/views/final/include/footer.jsp"/>
  </body>
</html>