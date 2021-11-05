<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/favicon.png">
    <link rel="stylesheet" href="css/event/productEvent.css">
    <link rel="stylesheet" href="css/hdFtReset.css">
    <script src="js/front/hdft.js" defer></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/mainSearch.js"></script>
    <title>새로운 제품과 컬렉션 - IKEA</title>
</head>

	<%@ include file="../include/header.jsp" %>
    <section>
        <div>
            <h1 class="puoduth1">IKEA 제품에 관한 새로운 소식</h1>
        </div>
        <div class="produtcontent">
            <div class="produtcontents">
                <h3 class="produth2">맑은 실내 공기로 건강을 챙겨보세요</h3>
                <div class="produttext">
                    <p class="produtp">찬바람으로 환기가 어려워지는 시기인 만큼, 실내 공기를 깨끗하게 유지하는 게 중요하죠.  새롭게 출시된 FÖRNUFTIG 푀르누프티그 공기청정기로 집안을 맑고 안전하게 유지해 보세요. 패브릭 소재는 어떤 공간에도 잘 어울리며 아늑한 분위기를 더해줄 거예요.</p>
                    <button class="produtbt">FÖRNUFTIG 푀르누프티그 공기청정기 사용법</button>
                </div>
            </div>
            <div class="produtimg">
              <div class="imgbox" id="imgbox">
                <a href=""><img src="images/event/PH178353-crop001.png" alt="" class="image1"></a>
              </div>
              <div class="imgbox">
                <a href=""><img src="images/event/PH177962-crop001.png" alt=""></a>
              </div>
            </div>
        </div>
        <div class="produtcontent2">
            <div class="produtcontents2">
                <h3 class="produth32">천연 소재와 재활용 소재를 선택해 보세요</h3>
                <div class="produttext2">
                    <p class="produtp2">새로운 계절이 시작된 지금, 환경에 좀 더 친화적인 제품을 선택해보는 건 어떨까요? 더 나은 미래를 위해 순모와 재활용 패브릭을 사용한 신제품을 만나보세요.</p>
                    <button class="produtbt2">지속가능한 제품 알아보기</button>
                </div>
            </div>
            <div class="produtimg">
              <div class="imgbox" id="imgbox2">
                <a href=""><img src="images/event/PH181225-crop001.png" alt=""></a>
              </div>
              <div class="imgbox">
                <a href=""><img src="images/event/PH181217-crop001.png" alt=""></a>
              </div>
            </div>
        </div>
    </section>
    <%@ include file="../include/footer.jsp" %>
  
</body>
</html>

