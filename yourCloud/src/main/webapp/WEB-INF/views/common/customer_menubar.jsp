<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">

<link rel="stylesheet" href="/yc/resources/css/animate.css">
<link href="/yc/resources/css/main.css" rel="stylesheet" />

<title>more</title>

<style>
@
keyframes fade_in {
	from {opacity: 0
}

to {
	opacity: 1
}

}
@
keyframes fade_out {
	from {opacity: 1
}

to {
	opacity: 0
}

}
.right-box {
	position: absolute;
	top: 0;
	right: 5%;
}

#floating {
	background-color: white;
	position: fixed;
	right: 50%;
	top: 20%;
	margin-right: -49%;
	text-align: center;
	width: 320px;
	border-radius: 8px;
	margin-top: -6%;
	margin-bottom: 5%;
	size: auto;
	display: none;
	opacity: 0;
	z-index: 99;
	animation-duration: 0.5s;
	animation-fill-mode: forwards;
}

.webTest {
	margin-left: 100px;
}

button:hover, input[type="button"]:hover {
	cursor: pointer;
}
</style>





</head>

<body>


	<nav class="navbar navbar-expand-sm ">
		<div class="right-box" id="navbar3">
			<ul class="navbar-nav">
				<c:if test="${ empty sessionScope.loginUser }">
					<li><a class="nav-link" href="loginMain.me">로그인 </a></li>


					<li><a class="nav-link" href="joinMain.me">회원가입 </a></li>
				</c:if>
				<c:if test="${ !empty sessionScope.loginUser }">
					<li><a class="nav-link" href="logout.me">로그아웃 </a></li>
					<li><a class="nav-link" href="myPage.me">마이페이지 </a></li>
				</c:if>
				<c:choose>
					<c:when test="${loginUser.userId == 'admin' }"> 
						<li><a class="nav-link" href="main.ad">관리자페이지 </a></li>
					</c:when>
				</c:choose>
				
	<li><a style="cursor: pointer;" class="nav-link" onclick="fundingOp(${ !empty sessionScope.loginUser });">펀딩 오픈하기</a></li>
				<li><a class="nav-link" href="chat.ch">채팅</a></li>

			</ul><br><br>
		
			<ul>
				<li class=" webTest">
					<button class="testBtn"
						style="background: white; border-radius: 10%;">자체테스트</button>
				</li>
			</ul>
		</div>
	</nav>
	<header>

		<div class="container text-white">

			<div class="row">
				<div class="col-sm-4 align-self-center text-left">
					<h6>Drawing Your Cloud</h6>
				</div>
				<div class="col-sm-4 col-12 align-self-center box-1 text-center">
					<a class="navbar-brand" href="index.jsp"><img
						src="/yc/resources/images/yc-logo3.png" alt="logo"></a>
				</div>
				<div class="col-sm-4 align-self-center text-right navbar-collapse"
					id="navbar3"></div>
				<!--container end-->
			</div>
		</div>
		<!--/row-->
		<!--container-->
	</header>

	<span class="position-absolute trigger"> <!-- hidden trigger to apply 'stuck' styles -->
	</span>
	<nav class="navbar navbar-expand-sm sticky-top navbar-dark">

		<!--   플로팅 메뉴 -->

	</nav>



	<script>
		$(function() {

			$(".testBtn").click(
					function() {

						window.open("SelfTest", "PopupWin",
								"width=450,height=500", "resizable=no");

					})

		})
		
		function fundingOp(flag){
      console.log(flag);
      if(flag){
         location.href="FundingOpen2.fd";
         
      }else{
         alert("로그인을 해주세요");
      }
      
   }
	</script>

</body>

</html>