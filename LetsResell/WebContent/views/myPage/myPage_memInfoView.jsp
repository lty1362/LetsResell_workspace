<%-- 선경_20200918_v1.0 --%>
<%-- 회원정보 화면 추가 --%>
<%-- 선경_20200920_v1.1 --%>
<%-- 계좌 등록 기능 추가 (미완성) --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myPage_memInfoView</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<style>
	::placeholder {
		font-size: 12px;
	}
	
	/* 정보 영역 사이즈 및 위치*/
	#wrap {
		width: 800px;
		height: 1000px;
		float: right;
		margin-right: 200px;
		padding: 15px;
		border: 1px solid red;
	}
	.div {
		border: 1px solid red;
		margin: 20px;
	}
	.div2 {
		border: 1px solid red;
		margin: 10px;
	}
	
	/* 프로필 영역 css */
	#div1 {
		border: 2px solid gray;
		border-radius: 3px;
		width: 700px;
		height: 200px;
		position: relative;
	}
	#information {
		position: absolute;
		float: left;
		left: 20px;
	}
	#iconStyle {
		border: 1px solid black;
		width: 100px;
		height: 100px;
		position: absolute;
		float: left;
		left: 20px;
		top: 70px;
	}
	#informationTable {
		float: left;
		position: absolute;
		left: 170px;
		top: 95px;
	}
	
	/* 테이블 스타일 */
	.cardInfo-edit-td, .addressInfo-edit-td {
		font-size: 13px;
		font-weight: lighter;
	}
	#cardInfo-edit-tb td, #addressInfo-edit-tb td {
		padding: 10px;
	}
</style>

	<script>
	 	$(document).ready(function(){
	 		$("#btn_updateAccount").on("click", function(){
	 			var memAccountNum = document.getElementById("memAccountNum").value;
	 			var memAccountholder = document.getElementById("memAccountholder").value;
	 			
	 			if(memAccountNum == ""){
	 				div_updateAccountError.innerHTML += "계좌번호를 입력해주세요.";
	 				$('#updateAccountForm').modal('show');
	 			}else if(memAccountholder == ""){
	 				div_updateAccountError.innerHTML += "예금주를 입력해주세요.";
	 				$('#updateAccountForm').modal('show');
	 			}else if(memAccountNum != null && memAccountholder != null){
	 				$("#updateAccountForm").submit();
	 				window.alert('저장되었습니다.');
	 			}
	 			
	 			console.log(memAccountNum);
	 			console.log(memAccountholder);
	 		});
	 		
	 	});
	 </script>
	 
	 
	
</head>

<body>
	<%@ include file="../../main.jsp" %>
	
	<div id="wrap">
		<div class="div">
			<h2>내정보</h2>
			<div id="div1">
				<div id="information">
					<table>
						<td><h4>프로필&nbsp;&nbsp;&nbsp;&nbsp;</h4></td>
						<td><button type="button" class="btn btn-dark btn btn-primary btn-sm" data-toggle="modal" data-target="#memberInfo-edit">프로필 수정</button></td>
						<td>&nbsp;&nbsp;<button type="button" class="btn btn-dark btn btn-primary btn-sm" data-toggle="modal" data-target="#password-edit">비밀번호 변경</button></td>
						<td>&nbsp;&nbsp;<button type="button" class="btn btn-dark btn btn-primary btn-sm" data-toggle="modal" data-target="#mem-out">탈퇴하기</button></td>
					</table>
				</div>
				<span id="iconStyle">프로필icon영역</span>
				<span id="informationTable">
					<table>
						<tr>
							<td>계정&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;
							</td>
							<td>이름&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;
							</td>
							<td>핸드폰 번호&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td>계정1</td>
							<td>이름1</td>
							<td>핸드폰번호1</td>
						</tr>
					</table>
				</span>
			</div>
		</div>
	
	<!-- 카드 등록 정보 영역 -->
	<div class="div">
		<div class="div2">
			<span class="div2_titleFont">카드 등록 정보</span>
			&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-dark btn btn-primary btn-sm" data-toggle="modal" data-target="#cardInfo-edit">등록</button>
			&nbsp;&nbsp;<button type="button" class="btn btn-dark btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">삭제</button>
		</div>
		<div class="div2">
			카드 등록 정보 표시
		</div>
	</div>
	
	<!-- 배송지 등록 정보 영역 -->
	<div class="div">
		<div class="div2">
			<span class="div2_titleFont">배송지 등록 정보</span>
			&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-dark btn btn-primary btn-sm" data-toggle="modal" data-target="#addressInfo-edit">등록</button>
			&nbsp;&nbsp;<button type="button" class="btn btn-dark btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">삭제</button>
		</div>
		<div class="div2">
			배송지 등록 정보 표시
		</div>
	</div>
	
	<!-- 계좌 정보 표시 영역 -->
	<div class="div">
		<div class="div2">
			<span class="div2_titleFont">계좌 정보</span>
			&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-dark btn btn-primary btn-sm" data-toggle="modal" data-target="#accountInfo-edit">등록</button>
		</div>
		<div class="div2">
			계좌 정보 표시
		</div>
	</div>
	
	<!-- 여기서부터 프로필 수정, 비밀번호 변경, 탈퇴하기 모달입니다.  -->
	
	<!-- 프로필 수정 팝업 -->
	<!-- The Modal -->
	<div class="modal" id="memberInfo-edit">
		<div class="modal-dialog">
			<div class="modal-content" style="font-weight: bold;">
				<!-- Modal Header -->
				<div class="modal-header" style="background: black;">
					<b class="modal-title" style="color: white; font-size: 20px;">프로필 수정</b>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<div style="margin-top: 10px;">이름
						<input type="text" class="form-control" placeholder="이름" style="margin-top: 5px; width: 120px;">
					</div>
					<div style="margin-top: 25px;">생년월일 <br>
						<input type="text" class="form-control" placeholder="년(4자)" style="margin-top: 5px; width: 100px; float: left;">
						<input type="text" class="form-control" placeholder="월" style="margin-top: 5px; margin-left: 5px; width: 70px; float: left;">
						<input type="text" class="form-control" placeholder="일" style="margin-top: 5px; margin-left: 5px; width: 70px; float: left;"> 
					</div>
					<br><br>
					<div style="margin-top: 25px;">휴대전화 <br>
						<input type="text" class="form-control" placeholder="휴대전화" style="margin-top: 5px; width: 200px; float: left;">
						<button type="button" class="btn btn-dark btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal" style="float: left; margin-top: 8px; margin-left: 10px;">인증번호 발송</button><br><br>
						<input type="text" class="form-control" placeholder="인증번호를 입력하세요." style="margin-top: 5px; width: 170px;">
					</div>
					<div style="float: right; margin-top: 30px;">
						<button type="button" class="btn text-info" data-dismiss="modal" style="font-weight: bold;">저장</button>
						<button type="button" class="btn text-secondary" data-dismiss="modal" style="font-weight: bold;">취소</button>
					</div>                   
				</div>
			</div>
		</div>
	</div>
	
	<!-- 비밀번호 변경 팝업 -->
	<div class="modal" id="password-edit">
		<div class="modal-dialog">
			<div class="modal-content" style="font-weight: bold;">
				<!-- Modal Header -->
				<div class="modal-header" style="background: black;">
					<b class="modal-title" style="color: white; font-size: 20px;">비밀번호 변경</b>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<div style="margin-top: 10px; font-size: 13px; font-weight: bold;">기존 비밀번호를 입력해 주세요.
						<input type="password" class="form-control" placeholder="기존 비밀번호" style="margin-top: 5px; width: 120px;">
					</div>
					<div style="margin-top: 25px;">
						<div style="font-size: 13px; font-weight: bold;">
							변경하실 비밀번호를 입력해 주세요. <br> 
							(8자리 이상으로 패스워드 설정. 영문, 특수문자 포함)
						</div>
						<input type="text" class="form-control" placeholder="변경할 비밀번호" style="margin-top: 5px; width: 120px; float: left;">
						<br><br>
						<input type="text" class="form-control" placeholder="비밀번호 확인" style="margin-top: 5px; width: 120px;">
					</div>
					<div style="float: right; margin-top: 30px;">
						<button type="button" class="btn text-info" data-dismiss="modal" style="font-weight: bold;">저장</button>
						<button type="button" class="btn text-secondary" data-dismiss="modal" style="font-weight: bold;">취소</button>
					</div>                   
				</div>
			</div>
		</div>
	</div>
	
	<!-- 회원 탈퇴 팝업 -->
	<div class="modal" id="mem-out">
		<div class="modal-dialog">
			<div class="modal-content" style="font-weight: bold;">
				<!-- Modal Header -->
				<div class="modal-header" style="background: black;">
					<b class="modal-title" style="color: white; font-size: 20px;">회원 탈퇴</b>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<div style="margin-top: 10px;">비밀번호 재확인
					</div>
					<table style="margin-top: 30px;">
						<tr>
							<td>아이디</td>
							<td>[회원 아이디값 들어올 자리]</td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type="password" class="form-control" style="width: 120px;"></td>
						</tr>
					</table>
					<div class="text-secondary" style="margin-top: 20px; font-size: 13px;">
						본인확인을 위해 비밀번호를 다시 한번 확인합니다. <br>
						본인확인 후 최종 회원탈퇴가 가능합니다.
					</div>
					<div class="text-danger" style="font-size: 13px; font-weight: lighter; margin-top: 50px;" align="center">
						회원 탈퇴 시 개인 정보 및 LETSRESELL에서 만들어진 모든 데이터는 삭제됩니다.
					</div>
					<div class="text-secondary" style="font-size: 13px; font-weight: lighter; margin-top: 5px;" align="center">
						회원 탈퇴 처리 후에는 회원님의 개인 정보를 복원할 수 없으며, 회원 탈퇴 진행 시 해당 아이디는 영구적으로 삭제되어 재가입이 불가합니다.
					</div>
					<div style="float: right; margin-top: 30px;">
						<button type="button" class="btn text-info" data-dismiss="modal" style="font-weight: bold;">탈퇴</button>
						<button type="button" class="btn text-secondary" data-dismiss="modal" style="font-weight: bold;">취소</button>
					</div>                   
				</div>
			</div>
		</div>
	</div>
	
	<!-- 여기서부터 카드, 배송지, 계좌 정보 모달입니다.  -->
	<!-- 카드 정보 등록 -->
	<div class="modal" id="cardInfo-edit">
		<div class="modal-dialog">
			<div class="modal-content" style="font-weight: bold;">
				<!-- Modal Header -->
				<div class="modal-header" style="background: black;">
					<b class="modal-title" style="color: white; font-size: 20px;">카드 정보 등록</b>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<div style="margin-top: 10px;">카드정보</div>
					<div class="text-secondary" style="font-size: 13px; font-weight: lighter; margin-top: 5px;">
						등록된 카드 정보는 구매대금 결제, 판매자 패널티 부과 시 <br> 결제 용도로 사용됩니다.
					</div>
					<div class="text-danger" style="font-size: 13px; font-weight: lighter; margin-top: 5px;">
					카드 정보는 진행 중인 구매 건이 있을 때에는 변경할 수 없습니다.
					</div>
					<div style="margin-top: 10px;">
						<table id="cardInfo-edit-tb">
							<tr>
								<td class="cardInfo-edit-td">카드별칭</td>
								<td><input type="text" class="form-control" style="width: 200px;" placeholder="ex)신한 두드림(VISA)"></td>
							</tr>
							<tr>
								<td class="cardInfo-edit-td">카드번호 (-제외)</td>
								<td><input type="text" class="form-control" style="width: 200px;"></td>
							</tr>
							<tr>
								<td class="cardInfo-edit-td">유효기간(MMYY)</td>
								<td><input type="text" class="form-control" style="width: 70px; float: left;" placeholder="MONTH">
									<b style="float: left; margin-left: 10px; margin-right: 10px; margin-top: 3.5px;">/</b>
									<input type="text" class="form-control" style="width: 70px;" placeholder="YEAR">
								</td>
							</tr>
							<tr>
								<td class="cardInfo-edit-td">생년월일(YYMMDD)</td>
								<td><input type="text" class="form-control" style="width: 170px;"></td>
							</tr>
							<tr>
								<td class="cardInfo-edit-td">비밀번호 앞 두자리</td>
								<td><input type="password" class="form-control" style="width: 70px;"></td>
							</tr>
						</table>
					</div>
					<div style="margin-top: 10px;">판매 패널티 안내</div>
					<div class="text-secondary" style="font-size: 13px; font-weight: lighter; margin-top: 5px;">
					아래 규정을 위반할 경우 판매금액의 ?%의 패널티가 부과됩니다.
					</div>
					<div class="text-danger" style="font-size: 13px; font-weight: lighter; margin-top: 5px;">
						[패널티 부과 규정 안내] <br>
						1. 배송 규정 위반(배송지연, 미배송 등) <br>
						2. 제품상태 규정 위반(가품, 중고상품, 사이즈, 구성품 등)
					</div>
					<div style="float: right; margin-top: 30px;">
						<button type="button" class="btn text-info" data-dismiss="modal" style="font-weight: bold;">저장</button>
						<button type="button" class="btn text-secondary" data-dismiss="modal" style="font-weight: bold;">취소</button>
					</div>                     
				</div>
			</div>
		</div>
	</div>
	
	<!-- 배송 정보 등록 -->
	<div class="modal" id="addressInfo-edit">
		<div class="modal-dialog">
			<div class="modal-content" style="font-weight: bold;">
				<!-- Modal Header -->
				<div class="modal-header" style="background: black;">
					<b class="modal-title" style="color: white; font-size: 20px;">배송 정보 등록</b>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<div style="margin-top: 10px;">배송 정보</div>
					<div class="text-secondary" style="font-size: 13px; font-weight: lighter; margin-top: 5px;">
						입력한 배송정보의 주소로 상품을 발송합니다.
					</div>
					<div style="margin-top: 10px;">
						<table id="addressInfo-edit-tb">
							<tr>
								<td class="addressInfo-edit-td">우편번호</td>
								<td>
									<input type="text" class="form-control" style="width: 170px; float: left;">
									<button type="button" class="btn btn-dark btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal" style="margin-left: 10px; margin-top: 3.5px;">검색</button>
								</td>
							</tr>
							<tr>
								<td class="addressInfo-edit-td">도로명 주소</td>
								<td><input type="text" class="form-control" style="width: 300px;"></td>
							</tr>
							<tr>
								<td class="addressInfo-edit-td">상세주소</td>
								<td><input type="text" class="form-control" style="width: 300px; float: left;"></td>
							</tr>
							<tr>
								<td class="addressInfo-edit-td">핸드폰 번호</td>
								<td><input type="text" class="form-control" style="width: 200px;"></td>
							</tr>
							<tr>
								<td class="addressInfo-edit-td">배송 메세지</td>
								<td><input type="text" class="form-control" style="width: 300px;"></td>
							</tr>
						</table>
						<div>
							<input type="checkbox" style="margin-right: 10px;">
							<b style="font-size: 13px; font-weight: lighter;">기본배송지로 등록</b>
						</div>
					</div>
					<div style="float: right; margin-top: 30px;">
						<button type="button" class="btn text-info" data-dismiss="modal" style="font-weight: bold;">저장</button>
						<button type="button" class="btn text-secondary" data-dismiss="modal" style="font-weight: bold;">취소</button>
					</div>                     
				</div>
			</div>
		</div>
	</div>
	
	<!-- 판매대금 수취 계좌 등록 -->
	<form action="<%= contextPath %>/updateAccount.my" id="updateAccountForm" method="POST">
		<div class="modal" id="accountInfo-edit">
			<div class="modal-dialog">
				<div class="modal-content" style="font-weight: bold;">
					<!-- Modal Header -->
					<div class="modal-header" style="background: black;">
						<b class="modal-title" style="color: white; font-size: 20px;">판매대금 수취 계좌 등록</b>
					</div>
					<!-- Modal body -->
					<div class="modal-body">
						<div style="margin-top: 10px;">수취 정보 등록</div>
						<div class="text-secondary" style="font-size: 13px; font-weight: lighter; margin-top: 5px;">
							등록된 계좌로 판매대금이 입금됩니다. <br> 
							(수수료 제외)
						</div>
						<div style="margin-top: 10px;">
							<div>
								<select id="memBankname" name="memBankname" class="form-control" style="font-size: 12px; width: 125px; float: left; margin-top: 3.5px; margin-right: 10px;"> 
									<option selected disabled>(은행명 선택)</option>
									<option value="국민은행">국민은행</option> <option value="신한은행">신한은행</option>
									<option value="우리은행">우리은행</option> <option value="하나은행">하나은행</option>
									<option value="기업은행">기업은행</option> <option value="농협은행">농협은행</option>
									<option value="SC은행">SC은행</option>	  <option value="한국씨티은행">한국씨티은행</option>
									<option value="우체국">우체국</option>    <option value="산업은행">산업은행</option>
									<option value="부산은행">부산은행</option> <option value="카카오뱅크">카카오뱅크</option>
									<option value="대구은행">대구은행</option> <option value="케이뱅크">케이뱅크</option>
									<option value="광주은행">광주은행</option> <option value="제주은행">제주은행</option>
								</select>
							</div>
							<div>
								<input type="text" class="form-control" id="memAccountNum" name="memAccountNum" placeholder="계좌번호" style="width: 250px; margin-top: 10px;">
							</div>
							<div>
								<input type="text" class="form-control" id="memAccountholder" name="memAccountholder" placeholder="예금주" style="width: 120px; margin-top: 10px;">
							</div>
							<div id="div_updateAccountError" style="margin-top:10px; font-size: 12px; color: red;"></div>
						</div>
						<div style="float: right; margin-top: 30px;">
							<button type="submit" id="btn_updateAccount" class="btn text-info" data-dismiss="modal" style="font-weight: bold;">저장</button>
							<button type="button" class="btn text-secondary" data-dismiss="modal" style="font-weight: bold;">취소</button>
						</div>                     
					</div>
				</div>
			</div>
		</div>
	</form>
	</div>
</body>
</html>