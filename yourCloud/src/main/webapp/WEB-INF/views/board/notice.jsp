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
	width: 750px;
	height: 50%;
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

		<table class="list_table" id="boardArea" align="center" border="1" style="border: 1px solid yellow;">
			<c:forEach var="b" items="${ BoardList }">
				<tr>
					<td>
						<input type="hidden" value="<c:out value='${b.bNo }'/>"/>
					</td>
					<td class="tt">
						<label>공지</label>
						<h4><c:out value="${ b.bTitle }" /></h4>
						<label><c:out value="${ b.createDate }" /></label>
					</td>
					<td>
						<c:if test="${b.newFileName != null}">
							<img src="resources/uploadFiles/${b.newFileName}" width="150px" height="80px">
						</c:if>
						<c:if test="${b.newFileName == null}">
							<img src="resources/images/clo.PNG" width="150px" height="80px" />
						</c:if>
					</td>
					
				</tr>
			</c:forEach>
		</table>
					<div id="pagingArea" align="center">
						<c:if test="${ pi.currentPage <= 1 }">
							[이   전] &nbsp;
						</c:if>
						<c:if test="${ pi.currentPage > 1 }">
							<c:url var="blistBack" value="notice.bo">
								<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
							</c:url>
							<a href="${ blistBack }">[이   전]</a> &nbsp;
						</c:if>
						<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
							<c:if test="${ p eq pi.currentPage }">
								<font color="red" size="4"><b>[  ${ p }  ]</b></font>
							</c:if>
							<c:if test="${ p ne pi.currentPage }">
								<c:url var="blistCheck" value="/notice.bo">
									<c:param name="currentPage" value="${ p }"/>
								</c:url>
								<a href="${ blistCheck }">${ p }</a>
							</c:if>
						</c:forEach>
				
						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="blistEnd" value="notice.bo">
								<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
							</c:url>
							<a href="${ blistEnd }">[다   음]</a>
						</c:if>
						<c:if test="${ pi.currentPage >= pi.maxPage}">
							[다   음]
						</c:if>
					</div>
					
					
	</div>
	<script>
	$(function(){
		$("#boardArea").find("td").mouseenter(function(){
			$(this).parents("tr").css({"background":"orangered","cursor":"pointer"});
		}).mouseout(function(){
			$(this).parents("tr").css({"background":"white"});

		}).click(function(){
		var bNo = $(this).parents().children("td").eq(0).children().val();

			console.log(bNo);
			location.href = "selectNoticeOne.bo?bNo=" + bNo;
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