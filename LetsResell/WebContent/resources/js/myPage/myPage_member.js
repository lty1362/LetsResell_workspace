/* 선경_20200925_v1.4 */
/* script 분리 */
/* 선경_20200925_v1.5 */
/* 비밀번호 변경 기능 수정, 회원 탈퇴 기능 추가 */

/* 프로필 관련  script*/

$(document).ready(function(){
	
	// 프로필 수정 > 저장버튼 click 이벤트
	$("#btn_updateMember").on("click", function(){
		$("#updateMemberForm").submit();
	});
	
});

$(document).ready(function(){
	
	// 비밀번호 변경 > 저장버튼 click 이벤트
	$("#btn_updatePwd").on("click", function(){
		$("#updatePwdForm").submit();
	});
	
});

$(document).ready(function(){
	
	// 회원 탈퇴 > 탈퇴버튼 click 이벤트
	$("#btn_updateMemStatus").on("click", function(){
		$("#updateMemStatusForm").submit();
	});
	
});