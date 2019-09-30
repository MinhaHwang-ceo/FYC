<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">

<title>사용후기 상세보기</title>
<style>
table * {
	padding: 5px;
}

.center {
	text-align: center;
	!
	important;
}

.comment {
	text-decoration: underline;
}

.comment:hover {
	cursor: pointer;
	color: blue;
}

.comment:visited {
	color: black;
}
</style>

</head>
<body>
	<jsp:include page="../common/customer_menubar.jsp" />
	<jsp:include page="../common/customer_menuList.jsp" />
	<br />
	<div id="outer">
		<table align="center" style="width: 49%;">
			<tr style="background: #1AAB8A; border: 1px solid black;">
				<th class="center" style="color: white; text-align: center;">제목</th>
				<td colspan="2" class="center" style="color: white"><c:out
						value="${ b.bTitle }" escapeXml="false" /></td>
				<td></td>
			</tr>
			<tr>
				<th class="center">카테고리</th>
				<td style="text-align: left;" class="center"><strong>공지사항</strong>
				</td>
				<th class="center">작성일</th>
				<td class="center"><c:out value="${b.createDate }" /></td>
			</tr>
			<tr>
				<th class="center">작성자</th>
				<td><strong>니가 그린 구름 그림</strong></td>
			</tr>

			<tr>
				<th colspan="4" class="center" style="border: 1px solid black;">내용</th>
			</tr>

			<tr>

				<td colspan="4" style="width: 65%; border: 1px solid lightgray;">
					<c:if test="${b.newFileName != null}">
						<div align="center"
							style="margin: 0 auto; width: 600px; height: 350px;">
							<img src="resources/uploadFiles/${b.newFileName}" width="600px"
								height="350px" />
						</div>
					</c:if> <c:if test="${b.newFileName == null}">
						<div align="center"
							style="margin: 0 auto; width: 600px; height: 350px;">
							<img src="resources/images/clo.PNG" width="600px" height="350px" />
						</div>
					</c:if>
					<hr style="border: 0; height: 1px; background: #ccc;" />
					<div style="min-height: 500px;">
					<pre><c:out value="${ b.bcontent }" escapeXml="false" /></pre>
					</div>
				</td>
			</tr>
			<tr style="height: 100px;">
				<td></td>
				<td colspan="2" class="center"><c:if
						test="${ sessionScope.loginUser.userId eq b.writer or sessionScope.loginUser.userId eq 'admin'}">
						<button type="button" class="btn" style="width: 100px;"
							onclick="updateBoard();">수정</button>
						<button type="button" class="btn" style="width: 100px;"
							onclick="deleteBoard();">삭제</button>
					</c:if></td>
			</tr>
		</table>
	</div>
	<jsp:include page="../common/customer_footer.jsp" />
	<script>
		var bNo = "${b.bNo}";

		function updateBoard() {
			if (confirm("글을 수정하시겠습니까?")) {

				location.href = "updateBoardNotice.bo?bNo=" + bNo;
			}
		}

		function deleteBoard() {
			if (confirm("#삭제된 글은 노출되지 않지만 데이터베이스에 남아있습니다#\n정말로 글을 삭제하시겠습니까?")) {
				$.ajax({
					url : "deleteBoardNotice.bo",
					type : "post",
					data : {
						bNo : bNo
					},
					success : function(data) {
						console.log("삭제성공");
						alert("삭제되었습니다.")
						location.href = "noticbok.bo";
					},
					error : function(err) {
						console.log("삭제 실패");
					}
				});
			}
		}
	</script>
</body>
</html>