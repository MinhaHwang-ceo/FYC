<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>니가그린구름그림</title>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
    <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Gothic+A1&display=swap" rel="stylesheet">
    
    <style>
     .outer{

 	 width:500px;
 	 margin-left:280px;
 	 font-family: 'Gothic A1', sans-serif;
 	}
   
   #table1 tr td{
   	padding:20px;
   }
    
    </style>
</head>
<body>
<jsp:include page="../../common/customer_menubar.jsp"/><br><br>

<div class="outer">
<h4>오픈예정 둘러보기</h4>
<br>
<table id="table1">

<% for(int i=0;i<4;i++) {%>
	<tr>
	<%for(int j=0;j<3;j++) {%>
		<td>
			<div>
				<a href="${contextPath}/openExpectationDetail.bo"><img alt="" src="/yc/resources/images/yc-logo3.png"></a>
			</div>
		</td>
	<%} %>
	</tr>
	
	
	<tr>
	<%for(int j=0;j<3;j++) {%>
		<td><b>프로젝트명</b>
			<br>카테고리
			<br>회사이름
		</td>
	<%} %>
	</tr>
	
<% } %>	
	
</table>


<br>
</div>

<br><br>
<jsp:include page="../../common/customer_footer.jsp"/>
</body>
</html>