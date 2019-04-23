$( function() {
    $( "#accordion" ).accordion();
    $('.update_button').click(function () {
        var token = $('.token').val();
        var type = $(this).siblings(".first_info").children("input").attr("type");
        var which_update = $(this).siblings(".first_info").children("input").attr("class");
        var my_this = $(this);
        if (type=="radio") {
//                    单选按钮
            var value = $(this).siblings(".first_info").children("input").val();

            alert(value);
        }else {
            var val = $(this).siblings(".first_info").children("input").val();
            if (val==undefined||val=='') {
                $(this).siblings(".first_info").children(".reqiure_enter").show(0);
            }else{
//                        修改，修改类名或id，直接获取类名就可以
                var value =$(this).siblings(".first_info").children("input").val();
                var arr =   which_update + "=" + value + "&" + "token=" + token+"" ;
                $.ajax({
                    url:'/certification.do',
                    type:'post',
                    dataType:'JSON',
                    data:arr,
                    success:function (data) {
                        var result = data.result;
                        if (result === 0){
                            alert('更新失败，请检测信息格式');
                        } else if (result === 1){
                            // $(this).text(value);
                            alert('更新成功');
                            updateText(value);
                        }
                        if (which_update === 'userName'){
                            $('.user_name_a').text(value);
                        }
                    }
                });
            }
        }
        function updateText(value) {
            my_this.parent().prev().children().html(value);
        }
    });
//            实时监听输入框的输入变化，当有输入值的时候，隐藏必须填写字段
    $('.first_info input').bind("input propertychange change",function () {
        var val = $(this).val();
        if (val!=undefined&&val!='') {
            $(this).siblings(".reqiure_enter").hide(0);
        }
    });
} );
$(function () {
    if ($('.show_tip').is(':hidden')){
        var show_tip = $('.show_tip').val();
        alert('请先认证真实信息！！！！！');
    }
});