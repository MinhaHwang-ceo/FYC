<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet">
<link rel="stylesheet" href="${contextPath }/resources/css/myPage.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
<title>사용후기</title>
</head>
<body>
	<jsp:include page="../common/customer_menubar.jsp" />
	<br />
	<jsp:include page="../common/customer_menuList.jsp" />
	<div id="reviewOuter">
		<h2 style="text-align: left">사용후기 게시판</h2>
		<hr />
		<table id="reviewTable" align="center">
			<tr>
				<th>글번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="3"><input type="search" style="width:500px"/></td>
				<td><input type="button" class="btn btn-info" value="작성하기" /></td>
				<td><input type="button" class="btn btn-info" value="검색하기"/></td>
			</tr>
		</table>

	</div>

</body>
</html>