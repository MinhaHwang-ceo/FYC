<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>나의 관심 프로젝트</title>
</head>

<body>
	<jsp:include page="../common/customer_menubar.jsp" />
	<jsp:include page="../common/myPage_menuList.jsp" />
	<br />
	<div id="interestProjectOuter">
		<div id="interestProject">
			<h2>♥  <c:out value="${ loginUser.userName }"/>님의 관심 프로젝트</h2>
			<div class="hr">
				<hr />
			</div>
			<div class="projectDiv">
					<c:forEach var="b" items="${ list }">
				<div class="projects">
					<table  align="center" >
						<tr>
							<td class="projectImgs"><img
								src="/yc/resources/uploadFiles/${b.newFileName}"
								style="width: 100%; height: 70%;" /></td>
						</tr>
						<tr>
							<td class="projectTitles"><c:out
									value="${ b.projectTitle }" /></td>
						</tr>
					
					</table>
				</div>
							</c:forEach>
			</div>
		</div>
		<div id="openAlarmProject">
			<h2><img src="${ contextPath }/resources/images/mail.PNG"/>  <c:out value="${ loginUser.userName }"/> 님의 알림 프로젝트</h2>
			<div class="projects">
					<c:forEach var="b" items="${ list2 }">
					<table  align="center" >
					<tr>
							<td class="projectImgs"><img
								src="/yc/resources/uploadFiles/${b.newFileName}"
								style="width: 100%; height: 50%;" /></td>
						</tr>
						<tr>
							<td class="projectTitles"><c:out
									value="${ b.projectTitle }" /></td>
						</tr>
					</table>
					</c:forEach>
				</div>
		</div>
	</div>
	<jsp:include page="../common/customer_footer.jsp"/>
</body>
</html>