<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login-main</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
    <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" />
  <style>
   .outer{
  
  width:800px;
  margin-left:450px;
  font-family: 'Gothic A1', sans-serif;
  font-size: 20px;
  }
  
  #btn{
  	width:300px ;
  	margin-left:80px ;
  }
  
  #td2{
  	width:300px ;
  	margin-left:80px;
  }
  
  #td4{
  	padding-left:140px;
  
  }
  
  </style>
 
</head>
<body>
<jsp:include page="../common/customer_menubar.jsp"/>

<br>
<section class="section-1">
<div class="outer">
<h2 align="center"><b>로그인</b></h2>
<br>
<form>
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" id="td2" required></td>
		</tr>
		
		<tr><td><br></td></tr>
		
		<tr>
			<td>비밀번호</td>
			<td><input type="password" id="td2" required></td>
		</tr>
		
		<tr><td><br></td></tr>
		
		<tr>
			<td></td>
			<td><button id="btn" class="btn btn-info">로그인</button></td>
		</tr>
		
		<tr><td><br></td></tr>
		
		<tr>
			<td></td>
			<td id="td4">&emsp;&emsp;&emsp;&emsp;&emsp;또는</td>
		</tr>
		
		<tr><td><br></td></tr>
		
		<tr>
			<td></td>
			<td><button id="btn" class="btn btn-success">네이버로 로그인</button></td>
		</tr>
		
		<tr><td><br></td></tr>
		
		<tr>	
			<td></td>
			<td id="td4">
				<a href="#">아이디찾기</a> &emsp;
				<a href="#">비밀번호찾기</a>
			</td>
		</tr>

		<tr><td><br></td></tr>
		
	</table>
</form>

<br>
</div>
</section>
<jsp:include page="../common/customer_footer.jsp"/>

</body>
</html>