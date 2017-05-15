/**
 * Created by Maibenben on 2017/5/14.
 */
$(function () {
    $('.allKinds').change(function () {
        var id = $(this).find(':selected').val();
        // alert(id);
        $.ajax({
            url: '/getClassification',
            type: 'POST',
            dataType: 'JSON',
            data: {id: id},
            success: function (result) {
                var $classification = $('.classification');
                $classification.empty();
                for (var i = 0; i < result.length; i++) {
                    $classification.append('<option id=' + result[i].id + ' value=' + result[i].id + '>' + result[i].name + '</option>');
                }
                var cid = $('.classification').find(':selected').val();
                $.ajax({
                    url:'/getSpecific',
                    type:'POST',
                    dataType:'JSON',
                    data:{id:cid},
                    success:function (result) {
                        var $specific = $('.specific');
                        $specific.empty();
                        for (var i = 0; i<result.length;i++) {
                            $specific.append('<option id=' + result[i].id + ' value=' + result[i].id + '>' + result[i].name + '</option>');
                        }
                    }
                });
            },
        });

    });
    $('.classification').change(function () {
        var id = $(this).find(':selected').val();
        $.ajax({
           url:'/getSpecific',
            type:'POST',
            dataType:'JSON',
            data:{id:id},
            success:function (result) {
                var $specific = $('.specific');
                $specific.empty();
                for (var i = 0; i<result.length;i++) {
                    $specific.append('<option id=' + result[i].id + ' value=' + result[i].id + '>' + result[i].name + '</option>');
                }
            }
        });
    });

});