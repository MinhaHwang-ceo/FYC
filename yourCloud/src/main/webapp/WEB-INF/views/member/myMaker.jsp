<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>나의 리워</title>

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
	<br />
	
	<div id="outer">
		<div id="myReward">
			<h2><c:out value="${ loginUser.userName }"/>님의 리워드</h2>
			<hr />
			<br />
			<h4>펀딩내역</h4>
			<br />
			<div class="rewards">
				<div class="left">
					<p class="category">리워드/ 반려동물</p>	
					<p class="status">종료</p>
					<br />
					<p class="projectTitle">진수네 구기자기자</p>
					<p class="maker">진수</p>
					<p class="payStatus">결제완료</p>
				</div>				
				<div class="right">
					<p>2019-09-01 펀딩</p>	
					<br />
					<br />
					<label>메이커 만족도</label>
					<br />
					<label class="stars">★★★★☆</label>
					<br />
					<a href="#">상세보기</a>
				</div>
			</div>
			<div class="rewards">
				<div class="left">
					<p class="category">리워드/ 반려동물</p>	
					<p class="status">종료</p>
					<br />
					<p class="projectTitle">진수네 구기자기자</p>
					<p class="maker">진수</p>
					<p class="payStatus">결제완료</p>
				</div>				
				<div class="right">
					<p>2019-09-01 펀딩</p>	
					<br />
					<br />
					<label>메이커 만족도</label>
					<br />
					<label class="stars">★★★★☆</label>
					<br />
					<a href="#">상세보기</a>
				</div>
			</div>
		</div>
		
	</div>
	
	<jsp:include page="../common/customer_footer.jsp"/>
	<script>

		function secession(){
			location.href="myReward.me";
		};
	</script>
</body>
</html>