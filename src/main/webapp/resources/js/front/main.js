$(function () {

    $("#hover-box2").stop().fadeIn(300);
    $("#image-dot2").addClass("hover-w_dot");
    $("#dot2").addClass("hover-b_dot");

    
    // 메인베너 글씨 상하 애니메이션
    var t1 = gsap.timeline();
    t1.to(".visual-txt h2", {duration: 1, y: 100}, "+=0.7");
    $(".visual-txt h2").fadeIn(2000); 
    t1.to(".visual-txt p", {duration: 1, y: 50}, "+=0.7");
    t1.to(".visual-txt a", {duration: 1, y: -100}, "+=0.7");

    function downFade(){
       $(".visual-txt p").fadeIn(2000);
    }
    function upFade(){
        $(".visual-txt a").fadeIn(2000);
    }
    var downTimer = setTimeout(downFade, 2000);
    var upTimer = setTimeout(upFade, 4000);

    downTimer;
    upTimer;


    // 신제품 호버 효과
    const imageDot1 = document.getElementById('dot1');
    const imageDot2 = document.getElementById('dot2');

    imageDot1.addEventListener('mouseover',function(e){
        e.preventDefault();
        $("#hover-box1").stop().fadeIn(300);
        $("#image-dot1").addClass("hover-w_dot");
        $("#dot1").addClass("hover-b_dot");
    });

    imageDot1.addEventListener('mouseout',function(e){
        e.preventDefault();
        $("#hover-box1").stop().fadeOut(300);
        $("#image-dot1").removeClass("hover-w_dot");
        $("#dot1").removeClass("hover-b_dot");
    });

    imageDot2.addEventListener('mouseover',function(e){
        e.preventDefault();
        $("#hover-box2").stop().fadeIn(300);
        $("#image-dot2").addClass("hover-w_dot");
        $("#dot2").addClass("hover-b_dot");
    });

    imageDot2.addEventListener('mouseout',function(e){
        e.preventDefault();
        $("#hover-box2").stop().fadeOut(300);
        $("#image-dot2").removeClass("hover-w_dot");
        $("#dot2").removeClass("hover-b_dot");
    });



    
});