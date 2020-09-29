<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.LetsResell.search.model.vo.*" %>
<%
	
	String search = (String)session.getAttribute("search");
	
	ArrayList<Search> list = (ArrayList<Search>)request.getAttribute("list");
	
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        .wrapper{
           
            width: 1100px;
            height:800px;
            margin: auto;
            margin-top: 50px;
        }
        .content{
            width: 100%;
            margin: auto;
            
        }
        .thumbnail{
            border: 1px solid white;
            width: 220px;
            display: inline-block;
            margin: 14px;
            
        }
        .thumbnail:hover{
            cursor: pointer;
            opacity: 0.7;
        }
       .pagingArea{
       		margin-top:100px;
       }
      
    </style>
</head>
<body>
	 <!-- header-->
	 <%@ include file="../common/header.jsp" %>
    	
    	<div class="wrapper">
       
        

        <div class="content">
            <div class="search-result-body">
                
                    <span id="item_name_pad">검색어: </span>
                    <span id="search_keyword" style="color: #ea5916"><%= search %></span>
          
                    <hr>
            </div>

		
			<% for(Search s : list) { %>
            <div class="thumbnail" align="center">
            	
                <img src="<%=contextPath %>/<%= s.getSearhImg() %>" width="200" height="150">
                <p> <%= s.getSearchName() %> </p>
                <% if( s.getStatus().equals("Y") ){ %>
                
                	<p>입찰대기중</p>
             	<% } %>
            </div>
            <% } %>
        
        </div>
        
        <div class="pagingArea" align="center">
		
		
			<% if(currentPage != 1){ %>
	            <!-- 맨 처음으로 (<<) -->
	            <button onclick="location.href='<%=contextPath%>/search.bo?currentPage=1&search=<%=search%>';"> &lt;&lt; </button>
	            <!-- 이전페이지로 (<) -->
	            <button onclick="location.href='<%=contextPath%>/search.bo?currentPage=<%=currentPage-1%>&search=<%=search%>';"> &lt; </button>
			<% } %>
			
			<% for(int p=startPage; p<=endPage; p++){ %>
				<% if(p != currentPage){ %>
            	<button onclick="location.href='<%=contextPath%>/search.bo?currentPage=<%=p%>&search=<%=search%>';"><%= p %>
            	
            	</button>
            	<% }else{ %>
            	<button disabled><%= p %>
            	
            	</button>
            	<% } %>
            <% } %>
			
			<% if(currentPage != maxPage){ %>
	            <!-- 다음페이지로 (>) -->
	           	<input type=button value="&gt;" onclick="location.href='<%=contextPath%>/search.bo?currentPage=<%=currentPage+1%>&search=<%=search%>'"> 
	                   
	            <!-- 맨 끝으로 (>>) -->
	            <button onclick="location.href='<%=contextPath%>/search.bo?currentPage=<%=maxPage%>&search=<%=search%>';"> &gt;&gt; </button>
			<% } %>
        </div>
            
   
    </div>

    <!-- footer-->
    <%@ include file="../common/footer.jsp" %>
</body>
</html>