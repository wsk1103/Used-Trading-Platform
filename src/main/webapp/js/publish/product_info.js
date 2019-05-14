/**
 * Created by wsk1103 on 2017/5/21.
 */
$(function () {
    $('.send_comment_button').click(function () {
        var value = $('.comment_textarea').val();
        var username = $('.wsk').val();
        var token = $('.token').val();
        var $comment = $('.comment_content');
        var id = $('.id').val();
        if (username == '0') {
            alert('请先登录！！！');
            return;
        }
        $.ajax({
            url: 'insertShopContext.do',
            type: 'post',
            dataType:'JSON',
            data:{id:id,context:value,token:token},
            success:function (data) {
                var result = data.result;
                if (result == 2){
                    alert('请先登录！！！');
                } else if (result == 0){
                    alert("发表留言失败，请先检查格式");
                } else if (result == 1){
                    var name = data.username;
                    var time = data.time;
                    var context = data.context;
                    var cc = "<div class='one_comment'><span class='username'>用户："+name+"</span><span class='time'>发表于："+time+"</span><p class='content'>"+context+"</p></div>";
                    $comment.append(cc);
                }
            }
        });
    });
    $('.buy_button').click(function () {
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
});