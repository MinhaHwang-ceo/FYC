<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="${contextPath }/resources/css/myPage.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<span class="position-absolute trigger"> <!-- hidden trigger to apply 'stuck' styles -->
	</span>
	<nav class="navbar navbar-expand-sm sticky-top navbar-dark">
		<div class="container">
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbar1">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbar1">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="myPage.me">내 정보</a></li>
					<li class="nav-item"><a class="nav-link" href="myReward.me">나의 리워드</a></li>
					<li class="nav-item"><a class="nav-link" href="myProject.me">나의 메이커</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="messageBox.me">쪽지함</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="payTest.fd">관심 / 알림 프로젝트</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<script>
	</script>
</body>
</html>