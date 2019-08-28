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
 	 margin:auto;
 	 font-family: 'Gothic A1', sans-serif;
  }
	#td2{
	 width:230px;
  	 margin-left:50px;
	}
  #td3{
  	width:100px;
  	margin-left:60px;
  }
  #td4{
    width:100px;
  	margin-left:60px;
  }
    #sumbmitbutton{
  	width:500px;
  }
</style>

</head>
<body>
<jsp:include page="../common/customer_menubar.jsp"/><br><br>
<div class="outer">
<h2><b>아이디 찾기</b></h2>
<br>
<form>
	<table>
		<tr>
			<td>이름</td>
			<td><input type="text" id="td2" required></td>
		</tr>
		
		<tr><td><br></td></tr>
		
		<tr>
			<td>이메일</td>
			<td><input type="text" id="td2" required></td>
			<td><button id="td3" class="btn btn-info">인증요청</button></td>
		</tr>
		
		<tr><td><br></td></tr>
		
		<tr>
			<td></td>
			<td><input type="text" id="td2" placeholder="인증번호를 입력하세요"></td>
			<td><button id="td4" class="btn btn-info">확인</button></td>
		</tr>
	
		<tr><td><br></td></tr>
	
	
	</table>
</form>

	<br>

  <input type="submit" value="아이디찾기" id="sumbmitbutton" onclick="findId();" class="btn btn-info">
  
  <script>
  function findId(){
	  alert("회원님의 아이디는  '내이름은오수정 거꾸로해도 오수정'입니다");
  }
  
  </script>
 

</div>
<br><br>
<jsp:include page="../common/customer_footer.jsp"/>
</body>
</html>