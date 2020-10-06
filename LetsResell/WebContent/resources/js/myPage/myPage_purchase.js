/**
 * 
 */

$(function(){
	                    	
	                    	$(".1").click(function(){
	                    		
	                    		$(this).css({color:"orange"});
	                    		location.href="<%= contextPath %>/purchaseDetail.mp?userNo=<%=login.getUserNo()%>"
	                    		
	                    	});
	                    	
							$(".2").click(function(){
	                    		
								$(this).css({color:"orange"});
	                    		location.href="<%= contextPath %>/purchaseStatus.mp?userNo=<%=login.getUserNo()%>"
	                    		
	                    	});
							
							$(".3").click(function(){
	                    		
	                    		$(this).css({color:"orange"});
	                    		location.href="<%= contextPath %>/purchaseCom.mp?userNo=<%=login.getUserNo()%>"
	                    		
	                    	});
	            	   		
	            	   	});             
	                    


                    