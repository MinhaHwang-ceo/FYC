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
 	 margin:auto;
 	 font-family: 'Gothic A1', sans-serif;
  }

	.td2{
	 width:330px;
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
<h2><b>비밀번호 재설정</b></h2>
<br>
<form action="newPwd.me" method="post">
	<table>
		<tr>
			<td>비밀번호 ${email}</td>
			
			<td><input type="text" class="td2" id="pass1" name="userPwd" required></td>
		</tr>
		
		<tr><td><br></td></tr>
		
		<tr>
			<td>비밀번호 확인</td>
			<td><input type="text" class="td2" id="pass2" required></td>
		</tr>
		
		<tr><td><br></td></tr>
		
	</table>
	
	<button  id="sumbmitbutton" class="btn btn-info" >비밀번호 재설정</button>
</form>
<br>



</div>
<br><br>







<script>























$(function(){

	$("#pass2").keyup(function(){
		var password = $("#pass1").val();
		var password2 = $("#pass2").val();

		if(password == password2){
			console.log("같음!");
			$("#pass2").css("border-color", "transparent")
		}else{
			console.log("틀림!");
			$("#pass2").css("border-color", "red")
		}
	});
});

</script>











<jsp:include page="../common/customer_footer.jsp"/>
</body>
</html>