$(function(){
    new uploadPreview({ UpBtn: "up_img", DivShow: "imgdiv", ImgShow: "imgShow" });
    $('.btn-upimg').click(function(){
        $('#up_img').trigger('click');
    })
});