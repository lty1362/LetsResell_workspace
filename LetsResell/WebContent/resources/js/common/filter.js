/**
 * 
 */
 $(function() {
		$("#content_filter").click(function(){
		    $(".outer").show();
		});
		
		$("#close_outer").click(function(){
		    $(".outer").hide();
		});
		
		$(".filter_btn").click(function(){
		    $(this).css({"background-color":"black", "color":"white", "border":"1px solid white"});
		});

 });