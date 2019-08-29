<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>쪽지</title>
</head>

<body>
	<jsp:include page="../common/customer_menubar.jsp" />
	<br />
	<div id="messageOuter">
		<div id="messageWindow">
			<div class="myMessage">
				<span>보낸 메세지</span>
			</div>
			<div class="receivedMessage">
				<span>받은 메세지</span>
			</div>
		</div>
		<div id="inputMessageDiv" align="center">
			<input type="text" id="inputMessage" />
			<input type="button" class="btn btn-info" id="sendMessage" value="전송"/>
		</div>
	</div>
	<jsp:include page="../common/customer_footer.jsp"/>
</body>
</html>