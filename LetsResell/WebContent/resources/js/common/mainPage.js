$(function() {

	// eventList
	$.ajax({
		url:"eventList.ajax",
		type:"post",
		success:function(eventList) {
			var eventNo = "";
			var eventImg = "";
			var eventDetail = "";
			
			for(var i=0; eventList.length; i++) {
				eventImg = eventList[i].eventImage;
				eventDetail = eventList[i].eventDetail;
				
				console.log(eventImg);
				console.log(eventDetail);
				$(".eventImg" + (i+1)).attr("src", eventImg);
				$(".eventName" + (i+1)).text(eventDetail);
			}
			
		}, error:function(request,status,error){
	        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
		}

	});
	
	// popularList
	$.ajax({
		url:"popularList.ajax",
		type:"post",
		success:function(popularList) {
			var prNo = "";
			var prName = "";
			var titleImg = "";
			
			for(var i=0; i<popularList.length; i++) {
				prNo = popularList[i].prNo;
				prName = popularList[i].prName;
				titleImg = popularList[i].titleImg;
				
				$(".img" + (i+1)).attr("src", titleImg);
				$(".value" + (i+1)).val(prNo);
				$(".name" + (i+1)).text(prName);
			}
		}, error:function(request,status,error){
	        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
		}

	});
	
//	// productPageInfo
//	$.ajax({
//		url:"productPageInfo.ajax",
//		type:"post",
//		data:{
//			productCurrentPage: $(".productCurrentPage").val()
//		},
//		success:function(productPi) {
//			console.log(productPi);
//		}, error:function(request,status,error){
//	        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
//		}
//
//	});
//	
//	// productList
//	$.ajax({
//		url:"productList.ajax",
//		type:"post",
//		data:{
//			productCurrentPage: $(".productCurrentPage").val()
//		},
//		success:function(productList) {
//			console.log(productList);
//		}, error:function(request,status,error){
//	        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
//		}
//
//	});
//	
//	// salePageInfo
//	$.ajax({
//		url:"salePageInfo.ajax",
//		type:"post",
//		data:{
//			saleCurrentPage: $(".saleCurrentPage").val()
//		},
//		success:function(salePi) {
//			console.log(salePi);
//		}, error:function(request,status,error){
//	        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
//		}
//
//	});
//	
//	// saleList
//	$.ajax({
//		url:"saleList.ajax",
//		type:"post",
//		data:{
//			saleCurrentPage: $(".saleCurrentPage").val()
//		},
//		success:function(saleList) {
//			console.log(saleList);
//		}, error:function(request,status,error){
//	        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
//		}
//
//	});
//	
//	// oldPageInfo
//	$.ajax({
//		url:"oldPageInfo.ajax",
//		type:"post",
//		data:{
//			oldCurrentPage: $(".oldCurrentPage").val()
//		},
//		success:function(oldPi) {
//			console.log(oldPi);
//		}, error:function(request,status,error){
//	        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
//		}
//
//	});
//	
//	// oldList
//	$.ajax({
//		url:"oldList.ajax",
//		type:"post",
//		data:{
//			oldCurrentPage: $(".oldCurrentPage").val()
//		},
//		success:function(oldList) {
//			console.log(oldList);
//		}, error:function(request,status,error){
//	        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);  
//		}
//
//	});
	
	$("#left").click(function() {
		var currentPage = $(".eventCurrentPage").val() -1;
		
		$(".eventCurrentPage").val(currentPage);
	});
	
	$("#right").click(function() {
		var currentPage = $(".eventCurrentPage").val() +1;
		
		$(".eventCurrentPage").val(currentPage);
	});
	
	$(".popularBtn").click(function(){
		var currentPage = $(this).text();
		
		$(".popularCurrentPage").val(currentPage);
	});
	
	$(".productBtn").click(function(){
		var currentPage = $(this).text();
		
		$(".productCurrentPage").val(currentPage);
	});
	
	$(".saleBtn").click(function(){
		var currentPage = $(this).text();
		
		$(".saleCurrentPage").val(currentPage);
	});
	
	$(".oldBtn").click(function(){
		var currentPage = $(this).text();
		
		$(".oldCurrentPage").val(currentPage);
	});
});