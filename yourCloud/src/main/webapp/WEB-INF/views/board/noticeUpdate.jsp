<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
.row2 {
	width: 800px;
	height: 80%;
	margin: auto;
	font-family: 'Sunflower', sans-serif;
}

.btn {
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
	<div class="container">
		<div class="row2">

			<form id="saveForm" method="post" action="" enctype="multipart/form-data">
			<input type="hidden" id="bNo" name="bNo" value="${b.bNo }" />
				<input type="hidden" id="attachmentNo" name="attachmentNo" value="${at.attachmentNo}" />
				<table class="table table-striped"
					style="text-align: center; border: 1px;">
					<thead>
						<tr>
							<th colspan="1"
								style="background-color: #eeeeee; text-align: center;">공지사항
								글쓰기
							</th>
							
								
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input value="${b.bTitle}" type="text" class="form-control"
								placeholder="글제목"  name="bTitle"></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용"
									name="bcontent" maxlength="2048" style="height: 350px">${b.bcontent}</textarea>
							</td>
						</tr>
						<tr>
							<td><input type="file" class="form-control" name="photo"></td>
						</tr>
					</tbody>
				</table>
				<button onclick="exc();" class="btn" style="float: right; margin-left: 50px;" >취소</button>
				<button onclick="updateComplate();" class="btn" style="float: right; margin-left: 50px;" >수정완료</button>
			</form>
		</div>
	</div>
	<script>
	function exc() {
		$("#saveForm").attr("action","noticeUpdateComplateEsc.bo");
	}
	function updateComplate() {
		$("#saveForm").attr("action","noticeUpdateComplate.bo").submit();
	}
	</script>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="../common/customer_footer.jsp" />
	</body>
</html>