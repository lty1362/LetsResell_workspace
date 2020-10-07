/* 위시리스트 관련  script*/
$(document).ready(function(){
	
	// 전체 상품 선택
	$("#checkbox_checkAll").click(function(){
		 var check = $("#checkbox_checkAll").prop("checked");
		 if(check) {
		  $(".checkbox_checkDetail").prop("checked", true);
		 } else {
		  $(".checkbox_checkDetail").prop("checked", false);
		 }
	});
	
	// 개별선택 해제되면 전체선택 해제됨
	$(".checkbox_checkDetail").click(function(){
		  $("#checkbox_checkAll").prop("checked", false);
		 });
	
	// 삭제 확인 후 삭제처리
	$("#btn_deleteWish").click(function(){
		
		var deleteCheck = confirm("정말 삭제하시겠습니까?");
		
		if(deleteCheck) {
			var checkArr = new Array();			// 선택된 제품 이름
			var userNo = $(this).attr('name');	// 로그인된 회원의 번호
			
			// 선택된 제품들을 배열에 담음
			$("input[class='checkbox_checkDetail']:checked").each(function(){
				checkArr.push($(this).attr('name'));
			   });
			
			// 삭제처리
			$.ajax({
				url : "deleteWish.my",
				data : {
					'checkArr':checkArr,
					'userNo':userNo
				},
				type : "post",
				success:function(resultNumber) {
					alert(resultNumber + "개의 관심상품이 삭제되었습니다.");
					location.href = "/LetsResell/myPage.wishlist?userNo=" + userNo +"&currentPage=1&order=new";
				},
				error:function(){
					alert("삭제 실패하였습니다.");
				}
			});
		}
	});
	
	// 최신등록순/과거등록순 정렬 처리
	$("#order").change(function(){
		
		var order = $("option:selected").val();	// 선택된 option의 value (new/old)
		var userNo = $(this).attr('name');		// 로그인된 회원의 번호
		
		location.href = "/LetsResell/myPage.wishlist?userNo=" + userNo +"&currentPage=1&order=" + order;
	});
});