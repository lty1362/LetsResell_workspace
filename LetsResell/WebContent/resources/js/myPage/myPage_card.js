/* 카드 정보 관련  내용*/

// 카드 정보 등록 > 저장버튼 click이벤트
$(document).ready(function(){
	$("#btn_insertCard").on("click", function(){
		$("#insertCardForm").submit();
	});
	
	// 등록된 카드 삭제 처리	
	var cardNameArr = new Array();
	$(".btn_deleteCard").on("click", function(){
		cardNameArr.push($(this).attr('name'));	
	});
	
	$("#btn_deleteCardSave").on("click", function(){
		var userNo = $(this).attr('name');
		
		$.ajax({
			url : "deleteCard.my",
			data : {
				'cardNameArr':cardNameArr,
				'userNo':userNo
			},
			type : "post",
			success:function(resultNumber) {
				location.href = "/LetsResell/myPage.info?userNo=" + userNo;
			},
			error:function(){
				alert("삭제 실패하였습니다.");
			}
		});
	});
	
});