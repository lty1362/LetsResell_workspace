/**
 * 
 */
$(function(){
	$("#product_img").click(function(){
		location.href="http://localhost:8888/LetsResell/saleList.sa?prNo=" + $("#prNo").val() + "&currentPage=1";  
	});
});