$(function () {

    // 새로고침 시 페이지 최상단
    window.onload = function() {
        setTimeout (function () {
            scrollTo(0,0);
        },100);

    }

    var didScroll;
    var lastScrollTop = 0;
    var delta = 5; // 이벤트를 발생시킬 스크롤의 이동 범위
    var navbarHeight = $("nav").outerHeight();

    $(window).on("scroll", function(){
        didScroll = true;
    });

    setInterval(function() {
        if (didScroll) {
            hasScrolled();
            didScroll = false;
        }
    }, 250); // 스크롤이 멈춘 후 동작이 실행되기 까지의 딜레이

    function hasScrolled() {
        var st = $(this).scrollTop(); // 현재 window의 scrollTop 값

        // delta로 설정한 값보다 많이 스크롤 되어야 실행된다.
        if(Math.abs(lastScrollTop - st) <= delta)
            return;

        if (st > lastScrollTop && st > navbarHeight){
            // 스크롤을 내렸을 때
            $("nav").slideUp("fast"); // header 숨기기
            $(".hd-top").slideUp("fast");
        } else {
            // 스크롤을 올렸을 때
            if(st == 0) {
                $(".hd-top").slideDown("fast");
            }
            else if(st + $(window).height() < $(document).height()) {
                $("nav").slideDown("fast"); // header 보이기
            }
        }

        lastScrollTop = st; // 현재 멈춘 위치를 기준점으로 재설정
    }


    var aside1 = $('#aside1');
    var aside2 = $('#aside2');
    var target = $('#aside1, #aside2');

    $(document).mouseup(function (e){
        if(target.has(e.target).length==0) {
            target.removeClass('fade-in');
        } 
    });

    $('.menu-btn').on("click", function() {
        aside1.addClass('fade-in');
    });

    $('.aside1-del>img').on("click", function() {
        aside1.removeClass('fade-in');
    });

    $('.digital-showroom').on("click", function() {
        aside2.addClass('fade-in');
    })

    $('.aside2-del>img').on("click", function() {
        aside1.addClass('fade-in');
        aside2.removeClass('fade-in');
    });

    $('.aside1-btm>h1').on("click", function() {
        aside2.addClass('fade-in');
        aside1.removeClass('fade-in');
    })

});