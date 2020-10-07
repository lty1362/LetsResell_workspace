/* 카드 정보 관련  내용*/

// 카드 정보 등록 > 저장버튼 click이벤트
$(document).ready(function(){
	$("#btn_insertCard").on("click", function(){
		$("#insertCardForm").submit();
	});
	
	// 등록된 카드 삭제 처리
//	$(".btn_deleteCard").on("click", function(){
//
//		//var cardNameArr = new Array();
//		//cardNameArr.push($(this).attr('name'));
//	});
	
	var cardNameArr = new Array();
	$(".btn_deleteCard").on("click", function(){
		cardNameArr.push($(this).attr('name'));
		
		
		
//		var cardName = $(this).attr('name');	// 선택한 카드 별칭
//		var table = $(".div_info").attr('name');
//		
//		console.log("cardName : " + cardName + "table : " + table);
		
	});
	
});