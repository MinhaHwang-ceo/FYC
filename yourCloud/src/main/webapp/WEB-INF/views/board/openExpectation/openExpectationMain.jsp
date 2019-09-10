<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<jsp:include page="../../common/customer_menubar.jsp"/>
<jsp:include page="../../common/customer_menuList.jsp"/>

<div class="outer">
<h4>오픈예정 둘러보기</h4>
<br>
<table id="table1">
	<tr>
		<td><b>프로젝트명</b></td>
		<td><br>카테고리</td>
		<td><br>회사이름</td>
	</tr>
	<c:forEach var="p" items="${ openlist }">
	<tr>
		<td><c:out value="${ p.projectTitle }"/></td>
		<td><c:out value="${ p.category }"/></td>
		<td><c:out value="${ p.companyName }"/></td>
	</tr>
	</c:forEach>
</table>


<br>
</div>

<br><br>
<jsp:include page="../../common/customer_footer.jsp"/>
</body>
</html>