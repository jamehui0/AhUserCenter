$(function(){
    /*卡片切换*/
    $('.tab').click(function(){
        /*导航改变*/
        $('.tab').removeClass('tab-focus');
        $(this).addClass('tab-focus');
        /*内容改变*/
        var index=$(this).index();
        $('.view-content').hide().eq(index).show();
    });
    /*光圈效果*/
    $('.box').mouseenter(function(){
        $('.box').removeClass('box-focus');
        $(this).addClass('box-focus');
    });
    $('.box').append('<div class="cover">\
        <p class="view-reset"><i class="ic ic-reset"></i>还原配置</p>\
        <p class="view-edit">点击进行配置</p>\
        </div>');


    var url_edit=$('#view').attr('url-edit');
    var url_reset=$('#view').attr('url-reset');
    /*重置
    * */
    $('.view-reset').click(function(){
        var fir=$(this).parents('.view-content').index();
        var sec=$(this).index('.view-reset')+1;
        console.log('重置一级'+fir+'二级'+sec);
    });
    /*编辑*/
    $('.view-edit').click(function(){
        var id=$(this).parents('.box').attr('id');
        var code=id.substring(4,7);
        console.log(code);
        location.href=url_edit+'?code='+code;
    });
});