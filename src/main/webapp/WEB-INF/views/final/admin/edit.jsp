<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>제품 상세 | IKEA</title>
    <link rel="shortcut icon" href="images/favicon.png" />
    <link rel="stylesheet" href="css/admin/edit.css" />
    <script defer src="js/showProductInfo.js"></script>
    <script src="js/mainSearch.js"></script>
    
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
    />
    
     <script src="js/jquery-3.6.0.min.js"></script>
  </head>
  <body>
    <header id="header">
      <div class="header-ui">
          <span class="back-btn">
              <img src="https://img.icons8.com/ios-glyphs/60/000000/circled-left.png"/>
          </span>
          <a href="/welsh">
              <h1 class="title">
                  관리자 페이지 
              </h1>
          </a>
          <a href="#" class="logout">
              <p>로그아웃</p>
          </a>
      </div>
      <ul class="header-gnb">
        <li><a href="OrderSearch.do">배송조회</a></li>
        <li><a href="Sales.do">매출조회</a></li>
        <li><a href="Upload.do">상품등록</a></li>
        <li><a href="Products.do">상품목록</a></li>
        <li><a href="/welsh">홈으로</a></li>
    </ul>
  </header>


    <div id="wrap">
      <div id="content">
        <div class="product-container">
          <div class="product-left">
            <ul class="img-box">
              
              <li>
                <img src="images/product/bedroom.png" alt="상품이미지1" />
                <div class="btn-box">
                  <a href="#">수정</a>
                  <a href="#">삭제</a>
                </div>
              </li>
             
            </ul>
            
            <h2>제품설명</h2>
            <p class="product-mention">
              부드러운 직조 패브릭으로 씌워져 있어 침실에 아늑한 느낌을
              더해줍니다. 침대헤드는 늦은 밤 독서를 즐길 때 편안한 등받이가
              되어줍니다. 더 좋은 점은 모든 것이 단일 패키지로 제공된다는
              점입니다. 정말 간편하죠?
            </p>
            <h2>제품크기</h2>
            <form action="">
              <label for="">
                <h3>상품평</h3>
                <div class="input-box">
                  <h4></h4>
                  <input type="text" name="comment" class="input1" />
                  <input type="submit" value="등록" class="input2" />
                </div>
              </label>
            </form>
            <ul class="comment-box">
              <li>
                <p class="comment-txt">
                  Lorem ipsum dolor sit amet consectetur adipisicing elit.
                </p>
                <p class="comment-name">홍길동</p>
                <p class="comment-date">2021-10-18</p>
                <button class="comment-change">수정</button>
                <button class="comment-cancel">삭제</button>
              </li>
              <li>
                <p class="comment-txt">
                  Lorem ipsum dolor sit amet consectetur adipisicing elit.
                </p>
                <p class="comment-name">홍길동</p>
                <p class="comment-date">2021-10-18</p>
                <button class="comment-change">수정</button>
                <button class="comment-cancel">삭제</button>
              </li>
            </ul>
          </div>
          <!-- product-left 끝 -->
          <div class="product-right">
            <div class="product-txt">
              <div class="txt-left">
                <h5 class="product-name">SLATTUM 슬라툼</h5>
                <p class="mention">쿠션형 침대프레임, 150x200 cm</p>
                <p class="star">★★★★★</p>
              </div>
              <div class="txt-right">
                <h4 class="sale-price">￦ <span>179,000</span></h4>
                <h6 class="price">￦ 199,000</h6>
              </div>
            </div>
            <p class="caution">
              <i class="fas fa-info-circle"></i> 매트리스와 침구는
              별도구매입니다.
            </p>
            <div class="color">
              <h6>색상</h6>
              <div class="color-btn">
                <button class="color-btn1"></button>
                <button class="color-btn2"></button>
              </div>
            </div>
            <div class="size">
              <h6>규격</h6>
              <p>150x200 cm</p>
            </div>
            <div class="btn-box last-box">
         <!--    <a href="#" class="purchase-btn">이미지 추가</a>

            <a href="#" class="purchase-btn">수정하기</a>
            -->
          </div>
          </div>
          <!-- product-right 끝 -->
        </div>
      </div>
    
    </div>
  </body>
</html>
