<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<meta charset="UTF-8">
<title>니가그린구름그림</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css">
<link href="${pageContext.request.contextPath}/resources/css/main.css"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Gothic+A1&display=swap"
	rel="stylesheet">
<style>
.outer {
	width: 800px;
	margin-left: 500px;
	font-family: 'Gothic A1', sans-serif;
}

#btn {
	width: 300px;
	margin-left: 80px;
}

#td2 {
	width: 300px;
	margin-left: 80px;
}

#td4 {
	padding-left: 140px;
}

html, div, body, h3 {
	margin: 0;
	padding: 0;
}

h3 {
	display: inline-block;
	padding: 0.6em;
}
</style>

</head>
<body>
	<jsp:include page="../common/customer_menubar.jsp" />
	<br>
	<br>
	<section class="section-1">

		<div class="outer">
			<h2>
				<b>로그인</b>
			</h2>
			<br>
			<form action="login.me" method="post">
				<table>
					<tr>
						<td>아이디</td>
						<td><input type="text" id="td2" name="userId"></td>
					</tr>

					<tr>
						<td><br></td>
					</tr>

					<tr>
						<td>비밀번호</td>
						<td><input type="password" id="td2" name="userPwd"></td>
					</tr>

					<tr>
						<td><br></td>
					</tr>

					<tr>
						<td></td>
						<td>
							<button id="btn" class="btn btn-info">로그인</button>
						</td>
					</tr>

					<tr>
						<td><br></td>
					</tr>

				</table>
			</form>
		 	<c:choose>
				<c:when test="${sessionId != null}">
					<h2>네이버 아이디 로그인 성공하셨습니다!!</h2>
					<h3>'${sessionId}' 님 환영합니다!</h3>
					<h3>
						<a href="logout">로그아웃</a>
					</h3>
				</c:when> 
				
				<c:otherwise>
				
				<%-- 	<div>
					<button>
						<a href="${url}"> <img style="margin: 0 auto;" width="223"></a>
					</button>
					</div> --%>
					<!-- 네이버 로그인 창으로 이동 -->
					 <div id="naver_id_login" style="text-align: center;">
						<a href="${ url }"> <img style="margin: 0 auto;" width="223"
							src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png" /></a>
					</div>
					<br>
				</c:otherwise>
			 </c:choose>
			<script type="text/javascript">
				var url = $("a").atrt("href");

				console.log(url);
			</script>

			<table>
				<tr>
					<td></td>
					<td id="td4">&emsp;&emsp;&emsp;&emsp;&emsp;또는</td>
				</tr>

				<tr>
					<td><br></td>
				</tr>


				<tr>
					<td><br></td>
				</tr>

				<tr>
					<td></td>
					<td id="td4"><a href="${contextPath}/findId.me">아이디찾기</a>
						&emsp; <a href="${contextPath}/findPw.me">비밀번호찾기</a></td>
				</tr>

				<tr>
					<td><br></td>
				</tr>

			</table>

			<!-- 네이버아이디로로그인 버튼 노출 영역 -->
			<div id="naver_id_login"></div>
			<!-- //네이버아이디로로그인 버튼 노출 영역 -->

			<br>
		</div>
	</section>
	<jsp:include page="../common/customer_footer.jsp" />

</body>
</html>