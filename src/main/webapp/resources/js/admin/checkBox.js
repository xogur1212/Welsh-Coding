$(function () {
  $(".category-lg").on("change", function () {
    if ($(this).val() != "") {
      console.log($(this).val());
      initDay($(this).val());
      //$(".begin-day").show();
      $(".category-md").removeAttr("disabled");
    } else {
      $(".category-md").empty();
      $(".category-md").append('<option value="">선택</option>');
      //$(".begin-day").hide();
      $(".category-md").attr("disabled", "disabled");
    }
    $(".category-sm").empty();
    $(".category-sm").append('<option value="">선택</option>');
    //$(".begin-time").hide();
    $(".category-sm").attr("disabled", "disabled");
  });
  $(".category-md").on("change", function () {
    if ($(this).val() != "") {
      initTime($(this).val());
      //$(".begin-time").show();
      $(".category-sm").removeAttr("disabled");
    } else {
      $(".category-sm").empty();
      $(".category-sm").append('<option value="">선택</option>');
      //$(".begin-time").hide();
      $(".category-sm").attr("disabled", "disabled");
    }
  });

  $(".category-md").attr("disabled", "disabled");
  $(".category-sm").attr("disabled", "disabled");

  function initDay(val) {
    console.log("실행했다");
    $(".category-md").empty();
    $(".category-md").append('<option value="">선택</option>');
    if (val === "bed") {

      $(".category-md").append('<option value="bed">침대</option>');
      $(".category-md").append('<option value="mattress">매트리스</option>');
      $(".category-md").append('<option value="closet">옷장</option>');

    } else if (val === "livingroom") {
      $(".category-md").append('<option value="sofa">소파</option>');
      $(".category-md").append('<option value="storage">수납장/장식장</option>');
      $(".category-md").append('<option value="media">TV/멀티미디어가구</option>');
    } else if (val === "dining") {
      $(".category-md").append('<option value="chair">식탁의자</option>');
      $(".category-md").append('<option value="table">식탁</option>');
      $(".category-md").append('<option value="set">식탁세트</option>');
    } else if (val === "kitchen") {

      $(".category-md").append('<option value="item">주방 부속품</option>');
      $(".category-md").append('<option value="worktop">주방 조리대</option>');
      $(".category-md").append('<option value="sink">주방 싱크대/수도꼭지</option>');
    }


  }

  function initTime(val) {
    $(".category-sm").empty();
    $(".category-sm").append('<option value="">선택</option>');

    if (val === "bed") {

      $(".category-sm").append('<option value="kingBed">더블/퀸/킹</option>');
      $(".category-sm").append('<option value="sofaBed">소파베드</option>');
      $(".category-sm").append('<option value="cabinetBed">수납형 침대</option>');
      $(".category-sm").append('<option value="divanBed">디반 침대</option>');
      $(".category-sm").append('<option value="singleBed">싱글/수퍼싱글 +침대</option>');
      $(".category-sm").append('<option value="dayBed">간이침대/데이베드</option>');

    } else if (val === "closet") {

      $(".category-sm").append('<option value="orderCloset">맞춤형 옷장</option>');
      $(".category-sm").append('<option value="pullCloset">여닫이 옷장</option>');
      $(".category-sm").append('<option value="slideCloset">미닫이 옷장</option>');
      $(".category-sm").append('<option value="openCloset">오픈형 옷장</option>');
      $(".category-sm").append('<option value="entranceCloset">현관 옷장</option>');
      $(".category-sm").append('<option value="kidsCloset">어린이 옷장</option>');


    } else if (val === "mattress") {

      $(".category-sm").append('<option value="springMattress">스프링 매트리스</option>');
      $(".category-sm").append('<option value="latexMattress">폼/라텍스 매트리스</option>');
      $(".category-sm").append('<option value="cusionPad">매트리스/베개 보호 패드</option>');
      $(".category-sm").append('<option value="mattressTopper">매트리스 토퍼</option>');
      $(".category-sm").append('<option value="kidsMattress">어린이 매트리스</option>');
      $(".category-sm").append('<option value="babyMattress">영야용 매트리스</option>');


    } else if (val === "sofa") {

      $(".category-sm").append('<option value="coatedSofa">천연/인조가죽 소파</option>');
      $(".category-sm").append('<option value="cusionSofa">쿠션형/풋스툴</option>');
      $(".category-sm").append('<option value="fabricSofa">페브릭 소파</option>');
      $(".category-sm").append('<option value="modularSofa">모듈식 소파</option>');
      $(".category-sm").append('<option value="sofaBed">소파베드</option>');
      $(".category-sm").append('<option value="sofaCover">소파 커버</option>');


    } else if (val === "media") {

      $(".category-sm").append('<option value="storage">TV장식장</option>');
      $(".category-sm").append('<option value="tvBench">TV/멀티미디어수납</option>');
    } else if (val === "storage") {

      $(".category-sm").append('<option value="buffet">거실장/찬장</option>');
      $(".category-sm").append('<option value="cabinet">장식장</option>');
      $(".category-sm").append('<option value="cabinet2">수납장</option>');
      $(".category-sm").append('<option value="cabinet3">수납유닛/수납장</option>');
      $(".category-sm").append('<option value="system">거실수납시스템</option>');

    } else if (val === "chair") {

      $(".category-sm").append('<option value="babyChair">유아용 식탁 의자</option>');
      $(".category-sm").append('<option value="chair">식탁 의자</option>');
      $(".category-sm").append('<option value="coverChair">커버 의자</option>');
      $(".category-sm").append('<option value="coverChair2">의자 커버</option>');
      $(".category-sm").append('<option value="foldable">접의식 의자</option>');
      $(".category-sm").append('<option value="pad">의자 패드</option>');


    } else if (val === "set") {

      $(".category-sm").append('<option value="10people">10인용 식탁 세트</option>');
      $(".category-sm").append('<option value="2people">2인용 식탁 세트</option>');
      $(".category-sm").append('<option value="4people">4인용 식탁 세트</option>');
      $(".category-sm").append('<option value="6people">6인용 식탁 세트</option>');



    } else if (val === "table") {

      $(".category-sm").append('<option value="10people">10인용 </option>');
      $(".category-sm").append('<option value="4people">4인용 </option>');
      $(".category-sm").append('<option value="6people">6인용 </option>');
      $(".category-sm").append('<option value="8people">8인용 </option>');
      $(".category-sm").append('<option value="extendable">확장형 테이블</option>');
      $(".category-sm").append('<option value="frame">식탁상판/하부프레임</option>');



    } else if (val === "item") {

      $(".category-sm").append('<option value="collection">청소 용품 정리함 </option>');
      $(".category-sm").append('<option value="equipment">경첩/완충 장치 </option>');
      $(".category-sm").append('<option value="organiser">분리수거통 </option>');
      $(".category-sm").append('<option value="partition">서랍 칸막이 </option>');
      $(".category-sm").append('<option value="shelve">선반/서랍</option>');

    } else if (val === "sink") {

      $(".category-sm").append('<option value="item">싱크대 부속품 </option>');
      $(".category-sm").append('<option value="sink">싱크대 </option>');
      $(".category-sm").append('<option value="tap">수도꼭지 </option>');
      

    } else if (val === "worktop") {

      $(".category-sm").append('<option value="item">조리대용품 </option>');
      $(".category-sm").append('<option value="worktop">라미네이트 상판 </option>');
      $(".category-sm").append('<option value="worktop2">두꺼운 베니어 조리대</option>');
      

    }





  }
});