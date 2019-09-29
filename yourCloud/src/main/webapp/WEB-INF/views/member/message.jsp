<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="${contextPath }/resources/css/myPage.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<title>쪽지</title>
</head>

<body>
<div>
	<br>
	<div style="font-family: 'Nanum Gothic', sans-serif; position:relative; height:10	00px;">
	<form id="form1">

			<div class="myMessage">
				<span>
					
					<c:forEach var="mge" items="${mge}">
					
						<c:if test="${mge.sendMember eq loginUser.userNo }">
							<div style="align:right; background:#FFF176; text-align:right; margin-left:204px; width:230px; padding:10px 10px 0px 10px; border-radius:16px;">
								<c:out value="${mge.messageContent }"/>
								<p style="font-size:0.7em"><c:out value="${mge.createDate }"/></p>
							</div>
						</c:if>
					
						<c:if test="${mge.sendMember ne loginUser.userNo }">
							<div style="text-align:left; width:230px; background:#EDE7F6; border-radius:16px; padding:10px 10px 0px 10px;">
								<c:out value="${mge.messageContent }"/>
								<p style="font-size:0.7em; color:#9E9E9E;"><c:out value="${mge.createDate }"/></p>
							</div>
						</c:if>
					
					</c:forEach>

				</span>
			</div>
	
		<br><br>
		
		<div id="inputMessageDiv" align="center" style="position: fixed; bottom:0; width:100%;">
			<input type="hidden" value="${loginUser.userNo}" id="sendMember"name="sendMember">
			<input type="hidden"  value="${makerNo}" name="receiveMember" id="receiveMember">
			<input type="text" id="messageContent" name="messageContent" style="width:320px; height:35px;"  onkeypress="if(event.keyCode==13) {sendMessage(); return false;}"/> &nbsp;
			<input type="button" class="btn btn-info" onclick="sendMessage()" value="전송"/>
		</div>
		
	</form>
	</div>

</div>
	
	<br><br>

	
	
	<script>
	function sendMessage(){
		
		var formData = $("#form1").serializeArray();
		
		console.log(formData);
		console.log(formData[0]);
		console.log(formData[1]);
		console.log(formData[2]);
		
		$.ajax({
			cache:false,
			url : "submitMessage.me",	
			data : formData,
			success : function(data){
				//alert(formData);
				location.reload();
			},error : function(data){
				console.log("에러입니다");
			}
		});
	}
	</script>
</body>
</html>