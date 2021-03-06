$(function(){
	   		
	   		// category, brand, color 요청값
	   		$("#category>input").click(function(){
	   			$(this).css({background:"white", color:"black", border:"1px solid black"});
	   			$("#category>input").not($(this)).css({background:"black", color:"white"});
	   			$("#hiddenCategory").val($(this).val());
	   		});
	   		
	   		$(".brand>input").click(function(){
	   			$(this).css({background:"white", color:"black", border:"1px solid black"});
	   			$(".brand>input").not($(this)).css({background:"black", color:"white"});
	   			$("#hiddenBrand").val($(this).val());
	   		});
	   		
	   		$("#color label").click(function(){
	   			if($(this).text()==""){
	   				$(this).text("V");
	   			}else{
	   				$(this).text("");
	   			}
	   		});
	   		
	   		// 이미지 등록
	   		$("#titleImg").click(function(){
                $("#registerMainImage").click();
            });
	   		
	   		$("#detailImg1").click(function(){
	   			$("#registerDetailImage1").click();
	   		});
	   		
	   		$("#detailImg2").click(function(){
	   			$("#registerDetailImage2").click();
	   		});
	   		
	   		$("#detailImg3").click(function(){
	   			$("#registerDetailImage3").click();
	   		});
	   		
	   		$("#detailImg4").click(function(){
	   			$("#registerDetailImage4").click();
	   		});
	   		
	   		// 첫 로딩 시 이미지 숨기기
	   		$("#titleImg").css("display","none");
	   		$("#detailImg1").css("display","none");
	   		$("#detailImg2").css("display","none");
	   		$("#detailImg3").css("display","none");
	   		$("#detailImg4").css("display","none");
	   		
	   		// footer 위치 조정
	   		$("#footer").css("margin-top","155px");
	   		
	   		// 분류에 대한 브랜드 선택
	   		$("input[value=Tops]").click(function(){
	   			$(".topsBrand").css("display","");
	   			$(".brand").not(".topsBrand").css("display","none");
	   			$(".brand input").css({"background":"black","color":"white"});
	   		});
	   		$("input[value=Bottoms]").click(function(){
	   			$(".bottomsBrand").css("display","");
	   			$(".brand").not(".bottomsBrand").css("display","none");
	   			$(".brand input").css({"background":"black","color":"white"});
	   		});
	   		$("input[value=Outers]").click(function(){
	   			$(".outersBrand").css("display","");
	   			$(".brand").not(".outersBrand").css("display","none");
	   			$(".brand input").css({"background":"black","color":"white"});
	   		});
	   		$("input[value=Footwear]").click(function(){
	   			$(".footwearBrand").css("display","");
	   			$(".brand").not(".footwearBrand").css("display","none");
	   			$(".brand input").css({"background":"black","color":"white"});
	   		});
	   		$("input[value=Accessories]").click(function(){
	   			$(".accessoriesBrand").css("display","");
	   			$(".brand").not(".accessoriesBrand").css("display","none");
	   			$(".brand input").css({"background":"black","color":"white"});
	   		});
	   		
	   	});
	   	
	   	// 미리보기
	   	function loadImg(inputFile, num){
			
   			if($("#registerMainImage").val()!=""){
		   		$("#main").css("display","none");
	   		}
   			if($("#registerDetailImage1").val()!=""){
		   		$("#detail1").css("display","none");
	   		}
   			if($("#registerDetailImage2").val()!=""){
		   		$("#detail2").css("display","none");
	   		}
   			if($("#registerDetailImage3").val()!=""){
		   		$("#detail3").css("display","none");
	   		}
   			if($("#registerDetailImage4").val()!=""){
		   		$("#detail4").css("display","none");
	   		}
				   			
	        if(inputFile.files.length == 1){
	            var reader = new FileReader();              
	            reader.readAsDataURL(inputFile.files[0])   
	            reader.onload = function(e){                 
                switch(num){
                    case 1 : $("#titleImg").attr("src", e.target.result); break;
                    case 2 : $("#detailImg1").attr("src", e.target.result); break;
                    case 3 : $("#detailImg2").attr("src", e.target.result); break;
                    case 4 : $("#detailImg3").attr("src", e.target.result); break;
                    case 5 : $("#detailImg4").attr("src", e.target.result); break;
                }
	            }
	        }else{
                switch(num){
                    case 1 : $("#titleImg").attr("src", null); break;
                    case 2 : $("#detailImg1").attr("src", null); break;
                    case 3 : $("#detailImg2").attr("src", null); break;
                    case 4 : $("#detailImg3").attr("src", null); break;
                    case 5 : $("#detailImg4").attr("src", null); break;
                }
	        }
	        
	        if($("#registerMainImage").val()!=""){
		        $("#titleImg").css("display","block");
	   		}
	        if($("#registerDetailImage1").val()!=""){
		        $("#detailImg1").css("display","block");
	   		}
	        if($("#registerDetailImage2").val()!=""){
		        $("#detailImg2").css("display","block");
	   		}
	        if($("#registerDetailImage3").val()!=""){
		        $("#detailImg3").css("display","block");
	   		}
	        if($("#registerDetailImage4").val()!=""){
		        $("#detailImg4").css("display","block");
	   		}
	        
	    }
	   	
	   	// required
	   	function check(){
	   		if($("#hiddenCategory").val() == ""){
	   			alert("분류를 선택하세요!");
	   			return false;
	   		}
	   		if($("#hiddenBrand").val() == ""){
	   			alert("브랜드를 선택하세요!");
	   			return false;
	   		}
	   		if($("#color label").text() == ""){
	   			alert("컬러를 선택하세요!");
	   			return false;
	   		}
	   	}
	   	