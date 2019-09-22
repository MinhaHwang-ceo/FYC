<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩하기</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">
<style>
#personal {
	color: White;
}

#textbox {
	font-size: 13px;
	color: red;
	border: 1px solid red;
}

#inputBox {
	width: 900px;
	height: 800px;
	position: relatve;
	z-index: 2;
	background: White;
	margin: 0 auto;
}

#inputBox2 {
	width: 800px;
	height: 80%;
	z-index: 1;
	margin: 0 auto;
	border: 1px solid lightgray;
}


#browsers {
	width: 300px;
	height: 30px;
}

#box1 {
	width: 500px;
}

.inputDiv {
	display: none;
}

#menu li {
	float: left;
	font-size: 20px;
}

#menu a {
	display: block;
	height: 40px;
	line-height: 35px;
	padding: 0 35px;
}

#menu a:hover {
	cursor: pointer;
	background: lightgreen;
}

h4 {
	text-align: center;
}

label:hover {
	cursor: pointer;
}

table td{
	height: 50px;
}
</style>
</head>
<body>

	<jsp:include page="../common/customer_menubar.jsp" />
	<jsp:include page="../common/customer_menuList.jsp"/>
	<div id="menu" style="width: 55%; height: 35px; margin: 0 auto;">
		<ul>
			<li><a id="basic">기본정보</a></li>
			<li><a id="reward">리워드</a></li>
			<li><a id="story">스토리</a></li>
			<li><a id="aboutyou">메이커정보</a></li>
			<li><a id="cominhsoon"
				style="background-color: black; color: white;">오픈예정</a></li>
			<li><a id="account">정산</a></li>
		</ul>
	</div>
	<br>
	<form action="FundingOpen9.fd" method="POST">
		<div id="inputBox2" align="center" style="min-height: 700px; padding: 50px;">
			<input type="hidden" id="projectNo" name="projectNo" value="${p.projectNo }" /> 
			<input type="hidden" id="userNo" name="userNo" value="${ sessionScope.loginUser.userNo }" />
			<table style="align: center; width: 100%;">
				<tr>
					<th colspan="3">'오픈예정'은 오픈예정 알림 신청한 서포터에게 프로젝트 오픈 소식이 SMS으로 발송되는 서비스입니다.<br>
										오픈예정을 신청하시면, 오픈예정 심사가 진행됩니다.</th>
				</tr>
				<tr>
					<td colspan="3">&nbsp;</td>
				</tr>
				<tr>
					<td rowspan="2"><h5>오픈예정 신청</h5> 오픈예정 진행 여부를 선택해주세요. </td>
					<td style="background: white; border:">
						<input type="radio" id="c1" name="progressStatus" value="" /></td>
					<td><label for="c1">오픈예정 진행하지 않고,바로 프로젝트 오픈<br /></label></td>
				</tr>
				<tr>
					<td><input type="radio" id="c2" name="progressStatus" value="오픈예정" /></td>
					<td><label for="c2"><span></span>오픈예정 7일~15일 진행 후, <br />프로젝트 오픈 추가 플랫폼 수수료 : 3% (VAT별도)</label></td>
				</tr>
				<tr>
					<td colspan="3" style="text-align:center;">
						<button>저장하기</button>
						<button id="next">다음으로 ></button>
					</td>
				</tr>
			</table>
		</div>
	</form>
	<jsp:include page="../common/customer_footer.jsp" />
</body>
</html>























