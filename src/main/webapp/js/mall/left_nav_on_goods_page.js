/**
 * Created by alone on 2017/5/14.
 */
$(function () {
    insertShopCar();
    var type_list = getTypeList();
    $(window).scroll(function () {
        var temp = $(this).scrollTop();
        if (temp > 100) {
            $('.my_type_div').css({"margin-top": "8%"});
            $('.particular_type_div').css({"margin-top": "8%"});
        } else {
            $('.my_type_div').css({"margin-top": "15%"});
            $('.particular_type_div').css({"margin-top": "15%"});
        }
    });
    $('.my_type_div ul li').hover(function () {
        var temp_class = $(this).attr("class");
        if (temp_class == 'type_1') {
            addList(0);
        } else if (temp_class == 'type_2') {
            addList(1);
        } else if (temp_class == 'type_3') {
            addList(2);
        } else if (temp_class == 'type_4') {
            addList(3);
        } else if (temp_class == 'type_5') {
            addList(4);
        } else if (temp_class == 'type_6') {
            addList(5);
        }
        function addList(id) {
            var which = type_list[id];
            var my_string = "";
            for (j = 0; j < which.length; j++) {
                var type_i = which[j];
                var arr = type_i.content;
                var a_list = "";
                for (i = 0; i < arr.length; i++) {
                    a_list += "<a id = '" + arr[i].id + "' class='shop_sort'>" + arr[i].name + "</a>";
                }
                my_string += "<div class='one_part'><div class='type_title_div'>" +
                    "<span class='type_border_span'>1</span><h3>" + type_i.name + "</h3></div><div " +
                    "class='type_goods_list'>" + a_list + "</div></div>";
            }
            $('.particular_type_div').html(my_string);
            //  点击事件
            $('.type_goods_list a.shop_sort').click(function () {
                var wsk = $(this).attr('id');
                var $all_product = $('.all_product');
                $.ajax({
                    url: 'selectBySort.do',
                    type: 'post',
                    dataType: 'JSON',
                    data: {sort: wsk},
                    success: function (data) {
                        $all_product.html('');
                        if (data.length === 0) {
                            $all_product.append("<div class='product_content_div'>" +
                                "<figure class='detail_product'>" +
                                "<input type='hidden' value= ''/>" +
                                "<img src='' title='暂时没有该分类的商品' />" +
                                "<span class='detail_product_name'></span><br/>" +
                                "<span class='detail_product_cost'></span><br/>" +
                                "<span class='detail_buy product_1'>加入购物车</span>" +
                                "</figure>" +
                                "</div>");
                        }
                        for (var i = 0; i < data.length; i++) {
                            $all_product.append("<div class='product_content_div'>" +
                                "<div class='detail_product'>" +
                                "<input type='hidden' value=" + data[i].id + " '/>" +
                                "<div class='product_img_div'><img class='show_img' src='" + data[i].image + "' title=" + data.name + "'/></div>" +
                                "<p class='show_tip'>"+data[i].remark+"</p>"+
                                "<span class='detail_product_name' value='"+data[i].id+"'>" + data[i].name + "</span><br/>" +
                                "<span class='detail_product_cost'>￥" + data[i].price + "</span><br/>" +
                                "<span class='detail_buy product_1' value='"+data[i].id+"'>加入购物车</span>" +
                                "</div>" +
                                "</div>");
                        }
                        //进入查看商品的详情,通过id
                        $('.detail_product_name').click(function () {
                            var id = $(this).attr('value');
                            window.location.href='/selectById.do?id='+id;
                        });
                        insertShopCar();
                    }
                });
                // alert(wsk);

            })
        }

        $('.particular_type_div').show(0);
    });
    $('header').click(function () {
        hideParticular();
    });
    //new
    bindClick();
    //  直接点击页数
    function bindClick() {
        $('.pagination_div ul li').click(function () {
            var cur = $(".pagination_div ul li.current_page").children("a").html();
            $(".pagination_div ul li.current_page").removeClass("current_page");
            $(this).addClass("current_page");
            //  点击的页数
            var which_click = $(this).children("a").html();
            //  在if里面处理
            if (cur !== which_click) {
                selectByCounts(which_click);
            }
        });
    }

    //  上一页
    $('.pagination_lt').click(function () {
        var current = $('.pagination_div ul li.current_page');
        var temp = current.children("a").html();
        //  已经达到最左边，再点无反应
        if (temp == 1) {
            return false;
        }
        updateCurrent(current, 1, temp);
        //      这个就是当前的页数
        var current_page = $('.pagination_div ul li.current_page').children("a").html();
        selectByCounts(current_page);
    });
    //下一页
    $('.pagination_gt').click(function () {
        var current = $('.pagination_div ul li.current_page');
        var temp = current.children("a").html();
        // 到达最右边
        if (temp == 99) {
            return false;
        }
        updateCurrent(current, 2, temp);
        var current_page = $('.pagination_div ul li.current_page').children("a").html();
        //      通过这个current_page 来获取数据
        selectByCounts(current_page);

    });

    // temp 当前的值（1,2,3,4...）
    function updateCurrent(current, to, temp) {
        //    1左，2右
        var num = current.nextAll().length;
        if (to == 1) {
            if (num == 4) {
                current.siblings(":last").remove();
                current.before("<li><a>" + (temp - 1) + "</a></li>");
            }
            if (num == 3) {
                if (!(temp - 2 < 1)) {
                    current.siblings(":last").remove();
                    current.siblings(":first").before("<li><a>" + (temp - 2) + "</a></li>");
                }
            }
            current.removeClass("current_page");
            current.prev().addClass("current_page");
        } else {
            if (num == 0) {
                current.siblings(":first").remove();
                current.after("<li><a>" + (parseInt(temp) + 1) + "</a></li>");
            }
            if (num == 1) {
                current.siblings(":first").remove();
                current.siblings(":last").after("<li><a>" + (parseInt(temp) + 2) + "</a></li>");
            }
            current.removeClass("current_page");
            current.next().addClass("current_page");
        }
        bindClick();
    }
    function selectByCounts(currentCounts) {
        var $all_product = $('.all_product');
        $.ajax({
            url: 'selectByCounts.do',
            type: 'post',
            dataType: 'JSON',
            data: {counts: currentCounts},
            success: function (data) {
                $all_product.html('');
                if (data.length === 0) {
                    $all_product.append("<div class='product_content_div'>" +
                        "<div class='detail_product'>" +
                        "<input type='hidden' value= ''/>" +
                        "<div class='product_img_div'><img src='' title='暂时没有该分类的商品' /></div>" +
                        "<span class='detail_product_name'></span><br/>" +
                        "<span class='detail_product_cost'></span><br/>" +
                        "<span class='detail_buy product_1'>加入购物车</span>" +
                        "</div>" +
                        "</div>");
                }
                for (var i = 0; i < data.length; i++) {
                    $all_product.append("<div class='product_content_div'>" +
                        "<div class='detail_product'>" +
                        "<input type='hidden' value=" + data[i].id + " '/>" +
                        "<div class='product_img_div'>" +
                        "<img class='show_img' src='" + data[i].image + "' title=" + data.name + "'/>" +
                        "</div>" +
                        "<p class='show_tip'>"+data[i].remark+"</p>"+
                        "<span class='detail_product_name' value='"+data[i].id+"'>" + data[i].name + "</span><br/>" +
                        "<span class='detail_product_cost'>￥" + data[i].price + "</span><br/>" +
                        "<span class='detail_buy product_1' value='"+data[i].id+"'>加入购物车</span>" +
                        "</div>" +
                        "</div>");
                }
                //进入查看商品的详情,通过id
                $('.detail_product_name').click(function () {
                    var id = $(this).attr('value');
                    window.location.href='/selectById.do?id='+id;
                });
                insertShopCar();
            }
        });

    }
    //进入查看商品的详情,通过id
    $('.detail_product_name').click(function () {
        var id = $(this).attr('value');
        window.location.href='/selectById.do?id='+id;
    });
    function insertShopCar() {
        $('.detail_buy').click(function () {
            var id = $(this).attr('value');
            $.ajax({
                url:'/insertGoodsCar.do',
                dataType:'JSON',
                type:'post',
                data:{id:id},
                success:function (data) {
                    var result = data.result;
                    if (result == '2'){
                        alert('您还未登录，请先登录！！！');
                    } else if (result == '1'){
                        alert('加入购物车成功');
                    } else if (result == '0'){
                        alert('加入购物车失败');
                    } else {
                        alert('发生了错误，请检测网络');
                    }
                }
            })
        });
    }

});
function hideParticular() {
    if ($('.particular_type_div').is(":visible")) {
        $('.particular_type_div').hide(0);
    }
}