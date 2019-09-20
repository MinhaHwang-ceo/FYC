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
	width: 700px;
	margin: 0 auto;
	font-family: 'Gothic A1', sans-serif;
}

#btn {
	width: 300px;
	margin: 0 auto;
}

#td2 {
	width: 300px;
}

h3 {
	display: inline-block;
	padding: 0.6em;
}

table * {
	text-align: center;
}
</style>

</head>
<body>
	<jsp:include page="../common/customer_menubar.jsp" /><jsp:include
		page="../common/customer_menuList.jsp" /><br>
	<section class="section-1">

		<div class="outer" style="min-height: 600px;">
			<form action="login.me" method="post">
				<table align="center" style="margin-top: 50px;">
					<tr>
						<th colspan="2"><h2>로그인</h2></th>
					</tr>
					<tr>
						<td><br></td>
					</tr>
					<tr>
						<td>아이디</td>
						<td>&nbsp;<input type="text" style="text-align:left;" id="td2" name="userId"></td>
					</tr>

					<tr>
						<td><br></td>
						<td></td>
					</tr>

					<tr>
						<td>비밀번호</td>
						<td>&nbsp;<input type="password" style="text-align:left;" id="td2" name="userPwd"></td>
					</tr>

					<tr>
						<td><br></td>
						<td></td>
					</tr>

					<tr>
						<td></td>
						<td>
							<button id="btn" class="btn btn-info">로그인</button>
						</td>
					</tr>

					<tr>
						<td><br></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td><div id="naver_id_login" style="text-align: center;">
								<a href="${ url }"> <img
									style="margin: 0 auto; width: 300px;"
									src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png" /></a>
							</div></td>
					</tr>
					<tr>
						<td></br></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td><a href="${contextPath}/findId.me">아이디찾기</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
							href="${contextPath}/findPw.me">비밀번호찾기</a></td>
					</tr>
				</table>
			</form>
			<script type="text/javascript">
				var url = $("a").attr("href");

				console.log(url);
			</script>



		</div>
	</section>
	<jsp:include page="../common/customer_footer.jsp" />

</body>
</html>