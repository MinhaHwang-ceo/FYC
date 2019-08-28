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
  
  width:800px;
  margin-left:600px;
  font-family: 'Gothic A1', sans-serif;
  }
  
  #btn{
  	width:300px;
  }
  
  #img{
  
  	width:300px;
  	height:auto;
  }
  
  #td1{
  
  	padding-left:140px;
  }
  </style>
</head>
<body>
<jsp:include page="../common/customer_menubar.jsp"/>
<br>
<div class="outer">
<br>
<h2><b>회원가입</b></h2>
<br>
<form>
	<table>
		<tr>
			<td><input type="button" class="btn btn-info" id="btn" value="ID/PW로 회원가입" onclick="location.href='${contextPath}/joinIdPw.me'"></td>
		</tr>
	
		<tr><td><br></td></tr>
	
		<tr>
			<td><input type="button" id="btn" class="btn btn-success" value="네이버로 회원가입" onclick="location.href='${contextPath}/joinNaver.me'"></td>
		</tr>
		
		<tr><td><br></td></tr>
		
		<tr>
			<td>이미 계정이 있나요? &emsp; &emsp; <a href="${ contextPath }/loginMain.me">로그인하기</a></td>
		</tr>
		
	</table>
</form>

<br><br>


</div>

<jsp:include page="../common/customer_footer.jsp"/>
</body>
</html>