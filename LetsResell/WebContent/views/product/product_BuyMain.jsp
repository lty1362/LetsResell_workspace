<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매main</title>
<link href="/LetsResell/resources/css/product/product_BuyMain.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="/LetsResell/resources/css/product/product_BiddingBuy.css" rel="stylesheet">
</head>
<body>
	<header>
		<div class="h-container">
		<%@ include file= "../common/header.jsp"%>
		</div>
	</header>
   <section class="pro-body">
        <div class="pro-container">
            <div class="pro-header">
                <div class="buy-h-image">
                    <div class="slideshow-container">
                        <div class="mySlides fade">
                          <div class="numbertext">1 / 5</div>
                          <img src="http://placehold.it/500x500" style="width:100%">
                        </div>
                        
                        <div class="mySlides fade">
                          <div class="numbertext">2 / 5</div>
                          <img src="http://placehold.it/500x500" style="width:100%">
                        </div>
                        
                        <div class="mySlides fade">
                          <div class="numbertext">3 / 5</div>
                          <img src="http://placehold.it/500x500" style="width:100%">
                        </div>

                        <div class="mySlides fade">
                            <div class="numbertext">4 / 5</div>
                            <img src="http://placehold.it/500x500" style="width:100%">
                          </div>

                          <div class="mySlides fade">
                            <div class="numbertext">5 / 5</div>
                            <img src="http://placehold.it/500x500" style="width:100%">
                          </div>
                        
                        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                        <a class="next" onclick="plusSlides(1)">&#10095;</a>
                        
                        </div>

                        <div style="text-align:center">
                          <span class="dot" onclick="currentSlide(1)"></span> 
                          <span class="dot" onclick="currentSlide(2)"></span> 
                          <span class="dot" onclick="currentSlide(3)"></span> 
                          <span class="dot" onclick="currentSlide(4)"></span>
                          <span class="dot" onclick="currentSlide(5)"></span>
                        </div>
                </div>
                
                <script>
                 var slideIndex = 1;
                    showSlides(slideIndex);
                    
                    function plusSlides(n) {
                        showSlides(slideIndex += n);
                    }
                    
                    function currentSlide(n) {
                        showSlides(slideIndex = n);
                    }
                    
                    function showSlides(n) {
                        var i;
                        var slides = document.getElementsByClassName("mySlides");
                        var dots = document.getElementsByClassName("dot");
                        if (n > slides.length) {slideIndex = 1}    
                        if (n < 1) {slideIndex = slides.length}
                        for (i = 0; i < slides.length; i++) {
                            slides[i].style.display = "none";  
                        }
                        for (i = 0; i < dots.length; i++) {
                            dots[i].className = dots[i].className.replace(" active", "");
                        }
                        slides[slideIndex-1].style.display = "block";  
                        dots[slideIndex-1].className += " active";
                    }
                </script>
                
                <div class="pro-h-detail">
                    <div class="pro-h-name">이지부스트 350 V2 자이온</div>
                    <div class="pro-h-flex">
                        <a>상태: 새상품 / 정품
                            <span class="badge-new">new</span>
                        </a>
                    </div>  
                    <div class="pro-h-grid">
                       <div>
                           <div class="buy-box">
                                <a href="/LetsResell/biddingBuy.pro">입찰구매</a><br>
                                <span align="center" style="color:white">BUY</span>
                           </div>
                          <!-- 입찰현황 버튼 클릭시 보여질 Modal -->
                          <button type="button" class="button" data-toggle="modal" 
                          data-target="#biddingStatus">입찰현황 전체 보기</button>
                       </div>
                       <div class="modal" id="biddingStatus">
                           <div class="modal-dialog">
                               <div class="modal-content">
                                   <div class="modal-header">
                                       <h4 class="modal-title">입찰현황 전체 보기</h4>
                                       <button type="button" class="close" data-dismiss="modal">&times;</button>
                                   </div>

                                   <!-- Modal body -->
                                   <div class="modal-body" align="center">
                                        <form action="" method="post">
                                            <table>
                                                <thead>
                                                    <tr>
                                                        <th>사이즈</th>
                                                        <th>판매가격</th>
                                                        <th>날짜</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>230</td>
                                                        <td>244,840</td>
                                                        <td>2</td>
                                                    </tr>
                                                    <tr>
                                                        <td>aa</td>
                                                        <td>aa</td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </form>
                                   </div>
                               </div>
                           </div>
                       </div>
                       <div>
                            <div class="buy-box">
                                <a href="/LetsResell/buyNow.pro">즉시구매</a><br>
                                <span align="center" style="color:white">BUY</span>
                            </div>
                              <!-- 즉시구매 버튼 클릭시 보여질 Modal -->
                          <button type="button" class="button" data-toggle="modal" 
                          data-target="#buyImmediately">즉시구매 전체 보기</button>
                       </div>
                       <div class="modal" id="buyImmediately">
                           <div class="modal-dialog">
                               <div class="modal-content">
                                   <div class="modal-header">
                                       <h4 class="modal-title">즉시구매 전체 보기</h4>
                                       <button type="button" class="close" data-dismiss="modal">&times;</button>
                                   </div>

                                   <!-- Modal body -->
                                   <div class="modal-body" align="center">
                                        <from action="" method="post">
                                            <table>
                                                <thead>
                                                    <tr>
                                                        <th>사이즈</th>
                                                        <th>판매가격</th>
                                                        <th>날짜</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>230</td>
                                                        <td>244,840</td>
                                                        <td>2</td>
                                                    </tr>
                                                    <tr>
                                                        <td>aa</td>
                                                        <td>aa</td>
                                                        <td></td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </from>
                                   </div>
                               </div>
                           </div>
                       </div>
                    </div>      
                    <div>
	                    <div class="buy-box-menu">
	                        <a href="<%=request.getContextPath()%>">다른상품 보러가기 GoGo</a>
	                    </div>
                        <img class="oos-using-guide" src="<%=request.getContextPath()%>/resources/images/product/sale.png" width="100%" height="117" style=" margin-top:30px;">
                     </div>
                </div>
            </div>
            <div class="pro-info">
                <div class="pro-i-info">
                    <span class="title">제품정보</span><br><br>
                    <table width="300px">
                        <thead>
                            <tr>
                                <th>종목코드</th>
                                <td></td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>발매가</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>발매일</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>상장일</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>색상</th>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                   
                </div>
    
                <div class="pro-i-you">
                    <span class="title">제품리뷰</span>
                    <iframe src="https://www.youtube.com/embed/Nl199fznWzM" frameborder="0"></iframe>
                </div>
            </div>

            <div class="pro-sell">
                <div class="pro-s-info">
                    <span class="title">판매내역</span>
                    <table>
                        <thead>
                            <tr>
                                <th>사이즈</th>
                                <th>판매가격</th>
                                <th>날짜</th>
                                <th>시간</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>aa</td>
                                <td>aa</td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>aa</td>
                                <td>aa</td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="pro-s-quote">
                    <span class="title">시세차트</span>
                </div>
            </div>
        </div>
    </section>
    <div class="footer">					
		<%@ include file= "../common/footer.jsp"%>			
	</div>    
</body>
</html>