<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">
<title>Insert title here</title>

<style>
.list {
	width: 100%;
	height: 100%;
	margin: auto;
	font-family: 'Sunflower', sans-serif;
	border: 1px solid red;
}

.tt {
	width: 800px;
	height: 60%;
	font-family: 'Sunflower', sans-serif;
}

.btn {
	width: 1200px;
	height: 60%;
	font-family: 'Sunflower', sans-serif;
}

#btn {
	background: #1AAB8A;
	color: #fff;
	border: none;
	position: relative;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
	font-family: 'Sunflower', sans-serif;
}
</style>
</head>
<body>
	<jsp:include page="../common/customer_menubar.jsp" />
	<jsp:include page="../common/customer_menuList.jsp" />

	<br>
	<br>
	<br>
	<br>
	<br>

	<div class="list">
		<c:if test="${loginUser.userId eq 'admin' }">
		<div class="btn">
			<button id="btn" onclick="location.href='noticeWrite.bo'"
				style="float: right;">글작성</button>

		</div>
		</c:if>

		<table class="list_table" id="listArea" align="center" border="1" style="border: 1px solid yellow;">
			<c:forEach var="b" items="${ BoardList }">
				<tr>
					<td class="tt"><label>공지</label>
						<h4><c:out value="${ b.bTitle }" /></h4>
						<label><c:out value="${ b.createDate }" /></label>
					</td>
					
					<td>
						<img src="resources/uploadFiles/${b.newFileName}" width="150px" height="80px">
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<script>
	$(function(){
		$("#listArea td").mouseenter(function(){
			$(this).parent().css({"background":"darkgray", "cursor":"pointer"});
		}).mouseout(function(){
			$(this).parent().css({"background":"white"});
		}).click(function(){
			var num = $(this).parent().children("input").val();

			location.href="<%=request.getContextPath()%>/selectOne.bo?num=" + num;
		});
	});

	</script>
	
	<jsp:include page="../common/customer_footer.jsp" />



	<!-- <script>
		$(function() {

			$(".list").click(function() {

				location.href = "noticeOne.bo"

			});

		});
	</script> -->

</body>
</html>