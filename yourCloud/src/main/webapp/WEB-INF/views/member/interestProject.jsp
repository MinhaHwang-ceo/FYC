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
				<div class="projects">
					<table>
						<tr>
							<input type="hidden" value=""/>
							<td class="projectImgs"><img src="${ contextPath }/resources/images/mail.PNG" alt="" /></td>
						</tr>
						<tr>
							<td class="projectTitles"><c:out value="gd"/></td>
						</tr>
						<tr>
							<td class="projectCategories"><c:out value="gd"/></td>
						</tr>
					</table>
				</div>
				<div class="projects">
					<table>
						<tr>
							<input type="hidden" value=""/>
							<td class="projectImgs"><img src="${ contextPath }/resources/images/mail.PNG" alt="" /></td>
						</tr>
						<tr>
							<td class="projectTitles"><c:out value="gd"/></td>
						</tr>
						<tr>
							<td class="projectCategories"><c:out value="gd"/></td>
						</tr>
					</table>
				</div>
				<div class="projects">
					<table>
						<tr>
							<input type="hidden" value=""/>
							<td class="projectImgs"><img src="${ contextPath }/resources/images/mail.PNG" alt="" /></td>
						</tr>
						<tr>
							<td class="projectTitles"><c:out value="gd"/></td>
						</tr>
						<tr>
							<td class="projectCategories"><c:out value="gd"/></td>
						</tr>
					</table>
				</div>
				<div class="projects">
					<table>
						<tr>
							<input type="hidden" value=""/>
							<td class="projectImgs"><img src="${ contextPath }/resources/images/mail.PNG" alt="" /></td>
						</tr>
						<tr>
							<td class="projectTitles"><c:out value="gd"/></td>
						</tr>
						<tr>
							<td class="projectCategories"><c:out value="gd"/></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div id="openAlarmProject">
			<h2><img src="${ contextPath }/resources/images/mail.PNG"/>  <c:out value="${ loginUser.userName }"/> 님의 관심 프로젝트</h2>
			<div class="hr">
				<hr />
			</div>
		</div>
	</div>
	<jsp:include page="../common/customer_footer.jsp"/>
</body>
</html>