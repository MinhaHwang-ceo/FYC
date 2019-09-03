<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 프로젝트</title>
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

	<jsp:include page="../common/customer_menubar.jsp"/>
	<jsp:include page="../common/myPage_menuList.jsp" />
	<br />
	<div id="myPageOuter">
		<div class="project">
			<h2 align="left"><c:out value="${ loginUser.userName }"/>님의 프로젝트</h2>
			<br />
			<table align="center" id="myProjectTable">
				<tr>
					<td class="projectImg">
						<img src="${ contextPath }/resources/images/mail.PNG" style="width:100%;"/>
					</td>
				</tr>
				<tr>
					<td style="font-weight:bold">프로젝트제목이다아아아아아</td>
				</tr>
				<tr>
					<td>진행 상황 : 검토요청 중</td>
				</tr>
				<tr>
					<td>메이커명</td>
				</tr>
				<tr>
					<td><button class="modifyBtn">수정, 편집하기</button></td>
				</tr>
			</table>

		</div>
	</div>
	<jsp:include page="../common/customer_footer.jsp"/>
</body>
</html>