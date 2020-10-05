/* 카드 정보 관련  내용*/

// 카드 정보 등록 > 저장버튼 click이벤트
$(document).ready(function(){
	$("#btn_insertCard").on("click", function(){
		$("#insertCardForm").submit();
	});
});