$( function() {
    $( "#accordion" ).accordion();
    $('.update_button').click(function () {
        var type = $(this).siblings(".first_info").children("input").attr("type");
        var className = $(this).siblings(".first_info").children("input").attr("class");
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
                alert(value);
            }
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