/**
 * 
 */
function imgPop(url){
    var img=new Image();
    img.src=url;
    var img_width=img.width;
    var win_width=img.width;
    var img_height=img.height;
    var win=img.height;
    var OpenWindow=window.open('','_blank', 'width='+img_width+', height='+img_height+', menubars=no, scrollbars=no');
    OpenWindow.document.write("<style>body{margin:0px;}</style><img src='"+url+"' width='"+win_width+"'>");
}

$(function() {
	$(".wishImg").click(function(){
		location.href="http://localhost:8888/LetsResell/wishList.wl?prNo=" + $(this).parents("#wish_btn").children().eq(0).val();
	});
});
