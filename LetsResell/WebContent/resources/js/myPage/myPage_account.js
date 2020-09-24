/* 계좌 정보 관련  내용*/

// 계좌 정보 등록 > 저장버튼 click이벤트
$(document).ready(function(){
	$("#btn_updateAccount").on("click", function(){
	    var memAccountNum = document.getElementById("memAccountNum").value;
	    var memAccountholder = document.getElementById("memAccountholder").value;
	    
	    if(memAccountNum == ""){
	        div_updateAccountError.innerHTML += "계좌번호를 입력해주세요.";
	    }else if(memAccountholder == ""){
	        div_updateAccountError.innerHTML += "예금주를 입력해주세요.";
	    }else if(memAccountNum != null && memAccountholder != null){
	        $("#updateAccountForm").submit();
	    }
	    console.log(memAccountNum);
	    console.log(memAccountholder);
	});
});