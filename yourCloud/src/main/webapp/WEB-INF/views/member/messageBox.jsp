<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쪽지함</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="${contextPath }/resources/css/myPage.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" />
</head>

<body>
	<jsp:include page="../common/customer_menubar.jsp" />
	<jsp:include page="../common/myPage_menuList.jsp" />
	<br />
	<div id="outer" style="padding-left:300px; padding-right:300px;">
		<div id="messageBoxHeader">
			<h2><img src="${ contextPath }/resources/images/message.png" style="width:80px;"/> &nbsp; <c:out value="${ loginUser.userName }"/> 님의 쪽지함</h2>
		<button style="left:920px;">쪽지 보내기</button>
		</div>
		<br />
		<div class="messageList">
			<figure class="snip1141">
				<table class="messageListTable">
					<tr>
						<td>&emsp;</td>
						<td>(주)지티엘</td>
						<td>하이하이 플젝명</td>
						<td>날짜</td>
						<td>&nbsp;</td>
					</tr>
				</table>
				<figcaption>
					<div class=""><i class="ion-ios-plus-empty"> </i></div>
				</figcaption>
			</figure>			
		</div>
	</div>
	<jsp:include page="../common/customer_footer.jsp"/>
	<script>
		$(function(){
			$(".snip1141").mouseover(function(){
				$(this).css({"cursor":"pointer", "border":"1px solid black"});
			}).mouseout(function(){
				$(this).css("border","0");
			}).click(function(){
				location.href="sendMessage.me";
			});
		});
	</script>
</body>
</html>