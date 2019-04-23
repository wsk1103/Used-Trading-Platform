/**
 * Created by alone on 2017/5/13.
 */
$(function () {
    $('body').click(function (e) {
        if (e.clientX > 150 || e.clientY > 300) {
            if ($('.short_nav_show').is(":visible")) {
                $('.short_nav_show').animate({
                    opacity: 0,
                    height: 0
                }, 500, function () {
                    $(this).hide(0);
                });
            }
            if ($('.personal_nav').is(":visible")) {
                $(this).animate({height: '0%'}, 300).hide(0);
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
        if ($('.short_nav').css('opacity') > 0.5) {
            if ($('.short_nav_show').is(":visible")) {
                $('.short_nav_show').animate({
                    opacity: 0,
                    height: 0
                }, 500, function () {
                    $(this).hide(0);
                });
            } else {
                $('.short_nav_show').show(0).css({opacity: 0, height: 0}).animate({
                    opacity: 1,
                    height: "30%"
                }, 500).show(0);
            }
        }
    });
    $('.user_name_a').mouseenter(function () {
        if (!$('.personal_nav').is(":visible")) {
            $('.personal_nav').show(0).animate({height: '41%'}, 500);
        }
    });
    $('.personal_nav').mouseleave(function () {
        if ($('.personal_nav').is(":visible")) {
            $(this).animate({height: '0%'}, 300).hide(0);
        }
    });
    $('.search_icon').click(function () {
        var name = $('.nav_search_input').val();
        window.location.href = '/findShopByName.do?name=' + name;
    });
});
jQuery(document).ready(function ($) {
    // if (window.history && window.history.pushState) {
    //     $(window).on('popstate', function () {
    //         var hashLocation = location.hash;
    //         var hashSplit = hashLocation.split("#!/");
    //         var hashName = hashSplit[1];
    //         if (hashName !== '') {
    //             var hash = window.location.hash;
    //             if (hash === '') {
    //                 // alert("Back button isn't supported. You are leaving this application on next clicking the back button");
    //                 window.history.pushState('forward', null,'./?WSKandXYF=后退不了了吧，我故意设置的');
    //             }
    //         }
    //     });
    //     window.history.pushState('forward', '/?wsk','./?WSKandXYF='+new Date().getTime());
    // }
    //监听关闭事件
    window.onbeforeunload =(function () {
        window.location.href='/logout.do';
    });
    var host = window.location.host;
    var me = new Date().getTime();
    var websocket = new WebSocket("ws://" + host + "/sockjs/webSocketIMServer");
    var phone = $('#user_name_a').attr('value');
    if (phone !== 'wsk') {
        websocket.onopen = function () {
            console.log("websocket连接上");
            websocket.send(phone+","+me+",start");
        };
        websocket.onmessage = function (evnt) {
            // console.log(evnt.data);
            var result = evnt.data;
            if (result == "error"){
                window.location.href='/logout.do';
                alert("该账号在其他地方登录了，请检查是否为本人操作，防止密码丢失！！！");
                return;
            }
            setTimeout(function () {
                messageHandle();
            }, 2000);
        };
        websocket.onerror = function () {
            console.log("websocket错误");
        };
        websocket.onclose = function () {
            console.log("websocket关闭");
        };
        function messageHandle() {
            // alert(phone);
            websocket.send(phone+","+me+",send");
        };
    }
});
