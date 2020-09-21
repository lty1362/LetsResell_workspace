<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>serviceSideMenu</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
	textarea:focus, input:focus{
        	outline:none;
    }
    div{
            box-sizing: border-box;
    }
    #wrap{
        border: 1px solid black;
        width:1200px;
        height:1300px;
        margin:auto;
    }
    #body{
        width: 90%;
        height: 65%;
        margin:auto;
        margin-top:5%;
    }
    #body>div{
        float:left;
    }
    #body_left{
        width: 25%;
        height: 90%;
        padding: 20px;
    }
	#sideMenu{
		height:620px;
	}
	#service{
		border:1px solid lightgrey;
		margin-bottom:30px;
		height:70%;
	}
	#service div{
		padding-left:20px;
	}
	#serviceTitle{
		background:lightgray;
		font-size:30px;
		font-weight:bold;
		padding:5px;
	}
	#serviceNotice{
		font-size:25px;
		margin-top:50px;
	}	
	#serviceFAQ{
		font-size:25px;
		margin-top:50px;
	}
	#serviceInquiry{
		font-size:25px;
		margin-top:50px;
	}
	#serviceReport{
		font-size:25px;
		margin-top:50px;
		margin-bottom:40px;
	}
 	#serviceNotice>a{
        color:black;
    }
    #serviceFAQ>a{
    	color:black;
	}	
	#serviceInquiry>a{
		color:black;
	}
	#serviceReport>a{
		color:black;
	}
	
	#serviceTime{
		border:1px solid lightgray;
		padding-left:20px;
		font-size:18px;
		height:30%;
		padding-top:18px;
	}
	#serviceTime>p:nth-child(1){
		font-weight:bold;
	}
</style>
</head>
<body>
	<div id="sideMenu">
	    <div id="service">
	        <div id="serviceTitle">고객센터</div>
	        <div id="serviceNotice">
	       		<a href="<%=request.getContextPath()%>/noticeForm.service?currentPage=1">공지사항</a>
	        </div>
	        <div id="serviceFAQ">
	        	<a href="<%=request.getContextPath()%>/FAQform.service?currentPage=1">FAQ</a>
	        </div>
	        <div id="serviceInquiry">
	        	<a href="<%=request.getContextPath()%>/inquiryForm.service?currentPage=1">1:1 문의</a>
	        </div>
	        <div id="serviceReport">
	        	<a href="<%=request.getContextPath()%>/reportForm.service?currentPage=1">부정 판매자 신고</a>
	        </div>
	    </div>
	    <div id="serviceTime">
	        <p>고객센터 <br>
	            1588-9393
	        </p>
	        <p>
	            월 - 금 <br>
	            09:00 ~ 17:00 <br>
	            (토 / 일 / 공휴일 휴무)
	        </p>
    	 </div>
     </div>
</body>
</html>