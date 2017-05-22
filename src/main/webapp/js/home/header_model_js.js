/**
 * Created by alone on 2017/5/13.
 */
$(function () {
    $('body').click(function (e) {
        if (e.clientX>150||e.clientY>300) {
            if ($('.short_nav_show').is(":visible")) {
                $('.short_nav_show').animate({
                    opacity: 0,
                    height: 0
                }, 500,function () {
                    $(this).hide(0);
                });
            }
            if ($('.personal_nav').is(":visible")){
                $(this).animate({height: '0%'},300).hide(0);
            }
        }
    });
    $(window).scroll(function () {
        //输出垂直的滚动距离
        var scroll_length = $(this).scrollTop();
//                根据滚动的距离分别修改透明度
        if (scroll_length > 5 && scroll_length < 80) {
            var op_length = (80 - scroll_length);
            if (op_length >= 0) {
                var opacity_o = op_length / 80;
                if (opacity_o < 0.2) {
                    opacity_o = 0.2;
                }
                $('.my_nav').css({opacity: (opacity_o - 0.2)});
                $('.short_nav').css({opacity: (1 - opacity_o)});
            }
        } else if (scroll_length < 5) {
            $('.my_nav').css({opacity: 1});
            $('.short_nav').css({opacity: (0)});
        } else if (scroll_length > 80 && scroll_length < 550) {
            $('.short_nav').css({opacity: (1)});
            var op_length = 550 - scroll_length;
            var op = op_length / 480;
            if (op < 0) {
                op = 0;
            }
            $('.my_slider').css({opacity: op});
        }
    });

    $('.nav_search_input').bind("focus", function () {
        $(this).animate({width: "15%", marginLeft: "20%"}, 800);
    });

    $('.nav_search_input').bind("blur", function () {
        if ($(this).val() == '')
            $(this).animate({width: "5em", marginLeft: "25%"}, 800);
    });

    $('.search_icon').click(function () {

    });
    $('.short_nav').click(function () {
        if ($('.short_nav').css('opacity')>0.5) {
            if ($('.short_nav_show').is(":visible")) {
                $('.short_nav_show').animate({
                    opacity: 0,
                    height: 0
                }, 500,function () {
                    $(this).hide(0);
                });
            } else {
                $('.short_nav_show').show(0).css({opacity: 0, height: 0}).animate({
                    opacity: 1,
                    height: "43%"
                }, 500).show(0);
            }
        }
    });
    $('.user_name_a').mouseenter(function () {
        if (!$('.personal_nav').is(":visible")) {
            $('.personal_nav').show(0).animate({height: '23%'},500);
        }
    });
    $('.personal_nav').mouseleave(function () {
        if ($('.personal_nav').is(":visible")){
            $(this).animate({height: '0%'},300).hide(0);
        }
    });
    $('.search_icon').click(function () {
        var name = $('.nav_search_input').val();
        window.location.href='/findShopByName?name='+name;
    });
});