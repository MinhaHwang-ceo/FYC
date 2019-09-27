<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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

			<form method="post" action="noticeInsert.bo" enctype="multipart/form-data">
				<table class="table table-striped"
					style="text-align: center; border: 1px;">
					<thead>
						<tr>
							<th colspan="1"
								style="background-color: #eeeeee; text-align: center;">공지사항
								글쓰기</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control"
								placeholder="글제목" name="bTitle"></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용"
									name="bcontent" maxlength="2048" style="height: 350px"></textarea>
							</td>
						</tr>
						<tr>
							<td><input type="file" class="form-control" name="photo"></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="btn" value="글쓰기" style="float: right;">
			</form>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="../common/customer_footer.jsp" />

</body>
</html>