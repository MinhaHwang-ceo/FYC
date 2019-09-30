<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>답장하기</title>
<style>
#outer{
	padding: 10px 10px 10px 10px;
}


</style>
</head>
<body>
<br>
<div id="outer">
	<h4><a style="color:#42A5F5;"><b>${sendName}</b></a>님에게 답장하기</h4>
	<br>
	<form id="form1">
		<table>
			<tr>
				<td>
					<textarea rows="18" cols="70" id="messageContent" name="messageContent">
					</textarea>
				</td>
			</tr>
			
			<tr><td><br></td></tr>
		</table>
			
			<input type="hidden" value="${loginUser.userNo}" name="sendMember">
			<input type="hidden" value="${sendMember }" name="receiveMember">
			<input type="button" class="btn btn-default" value="전송하기" onclick="answer()" style="width:514px; height:30px;">
	</form>

<script>
	function answer(){
		
		var formData = $("#form1").serializeArray();
		
		console.log(formData);
		
		$.ajax({
			cache:false,
			url : "answerMessage.me",
			type : "GET",
			data : formData,
			success : function(data){
				window.close();
				opener.parent.location.reload();
			},error : function(data){
				window.close();
				opener.parent.location.reload();
			}
		});	
	}
</script>


</div>



</body>
</html>