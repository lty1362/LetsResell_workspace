
 $(function(){
                    	
                    	$(".1").click(function(){
                    		
                    		$(this).css({color:"orange"});
                    		location.href="<%= contextPath %>/salesDetail.mp?userNo=<%=login.getUserNo()%>"
                    		
                    	});
                    	
						$(".2").click(function(){
                    		
                    		$(this).css({color:"orange"});
                    		location.href="<%= contextPath %>/salesStatus.mp?userNo=<%=login.getUserNo()%>"
                    		
                    	});
						
						$(".3").click(function(){
                    		
                    		$(this).css({color:"orange"});
                    		location.href="<%= contextPath %>/salesCom.mp?userNo=<%=login.getUserNo()%>"
                    		
                    	});
            	   		
            	   	});

                  