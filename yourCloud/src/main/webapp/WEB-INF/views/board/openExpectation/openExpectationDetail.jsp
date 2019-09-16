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
 	 margin-left:400px;
 	 font-family: 'Gothic A1', sans-serif;
  	}
    
    #btn{
    
    	width:300px;
    }
    
    #td1{
    	padding-left:100px;
    
    }
    
    </style>
</head>
<body>

<jsp:include page="../../common/customer_menubar.jsp"/>
<jsp:include page="../../common/customer_menuList.jsp"/>
<br>
<div class="outer">

<table id="table">
	<tr>
		<td>
			<div>
				<img alt="" src="/yc/resources/images/yc-logo3.png">
			</div>
		</td>
		<td id="td1"><input type="button" value="알림신청" id="btn" class="btn btn-info" onclick="window.open('${contextPath}/openExpectationRequest.bo','_blank', 'width=370,height=400');return false;">
			<br><br>
			<input type="button" value="공유하기" id="btn" class="btn btn-info">
			<br><br>
			<p>지금 알림 신청하고 얼리버드 혜택을 놓치지 마세요!</p>
		</td>
	</tr>

	<tr>
		<td><b>프로젝트 이름</b></td>
	</tr>
	
	
	<tr>
		<td>
			<div>
				프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용 프로젝트 내용
			</div>	
		</td>
	</tr>
	
	<tr><td><br></td></tr>
	
	<tr>
		<td>9월초 오픈예정</td>
		<td>메이커:<c:out value="${ agentName }"/></td>
	</tr>


</table>

<!-- 임시버튼 -->
<input type="button" onclick="location.href='${contextPath}/funding_1.bo'" value="펀딩하기 임시버튼">

</div>

<br><br>
<jsp:include page="../../common/customer_footer.jsp"/>
</body>
</html>