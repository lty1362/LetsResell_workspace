/**
 * 
 */
$(function(){
	$("#product_img").click(function(){
		location.href="<%= contextPath %>/saleList.sa?prNo=" + $(this).childeren().eq(0).val();  
	});
});