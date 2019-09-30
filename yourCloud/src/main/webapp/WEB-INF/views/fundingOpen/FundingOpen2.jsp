<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">

<link rel="stylesheet" href="/yc/resources/css/animate.css">
<link href="/yc/resources/css/main.css" rel="stylesheet" />
<title>펀딩하기</title>
<style>
#box {
	margin-top: 10%;
}

#rd {
	font-size: 20px;
}

body {
	font-family: 'Sunflower', sans-serif;
}

table {
	width: 50%;
	margin: 0 auto;
}
td {
	height: 100px;
}
.first {
	width: 5%;
	text-align: center;
}
input[type="button"] {
	width:120px;
    height: 40px;
    background-color: #00af84;
    display: inline-block;
    font-weight: 500;
    color: #fff;
    font-size: 16px;
    border: 0;
}


input[type="button"]:hover {
	cursor: pointer;
	background: orange;
}
</style>
</head>
<body>
	<jsp:include page="../common/customer_menubar.jsp" />
	<jsp:include page="../common/customer_menuList.jsp" />

	<div id="outer" style="min-height: 500px;">
		<form action="FundingOpen3.fd" id="terms_form" method="get">
			<table style="margin-top: 50px;">
				<tr style="text-align: center;">
					<th colspan="2"><h2>몇 가지 세부사항을 미리 확인하고, 프로젝트를 시작하세요</h2></th>
				</tr>
				<tr>
					<td colspan="2">프로젝트를 진행하기 전, 몇 가지 심사기준 항목을 체크하고, 프로젝트 진행을 도와주는 메이커 뉴스레터를 받아보세요.</td>
				</tr>
				<tr>
					<td class="first"><input type="checkbox" id="ex_rd1" name="ex_rds"></td>
					<td><label for="ex_rd1" for="ex_rd" id="rd">펀딩 진행 중에는
							제공할 리워드를 다른 온/오프라인에서 펀딩하거나 판매하지 않습니다.</label></td>
				</tr>
				<tr>
					<td class="first"><input type="checkbox" id="ex_rd2" name="ex_rds"></td>
					<td><label for="ex_rd2" id="rd">제공할 리워드는 현금, 지분 등의
							수익이 아닌 제품 또는 서비스입니다.</label></td>
				</tr>
				<tr>
					<td class="first"><input type="checkbox" id="ex_rd3" name="ex_rds"></td>
					<td><label for="ex_rd3" id="rd">진행할 프로젝트가 지적 재산권을
							침해하지 않습니다.</label></td>
				</tr>
				<tr>
					<td class="first"><input type="checkbox" id="ex_rd4" name="ex_rds"></td>
					<td><label for="ex_rd4" id="rd">서포터에게 프로젝트 진행 과정을
							안내하고, 배송 약속을 지킬 수 있습니다.</label></td>
				</tr>
				<tr>
					<td class="first"><input type="checkbox" id="ex_rd5" name="ex_rds"></td>
					<td><label for="ex_rd5" id="rd">서포터와의 신뢰를 위해 펀딩 진행,제품
							제작 배송 등 모든 과정에서 겪는 어려움들을 <br> 서포터에게 진솔하게 전달하고 문제를 해결합니다. </label></td>
				</tr>
				<tr style="text-align:center">
					<td colspan="2"><input type="button" id="nextBtn"
						class="btn btn-info" style="margin: 0 auto;" value="다음단계로" /></td>
				</tr>
			</table>
		</form>
	</div>
	<br />
	<jsp:include page="../common/customer_footer.jsp" />
	<script>
		$(function() {
			$("#nextBtn").click(function() {
				if ($("#ex_rd1").is(":checked") == false) {
					alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
					return;
				} else if ($("#ex_rd2").is(":checked") == false) {
					alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다..");
					return;
				} else if ($("#ex_rd3").is(":checked") == false) {
					alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다..");
					return;
				} else if ($("#ex_rd4").is(":checked") == false) {
					alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다..");
					return;
				} else if ($("#ex_rd5").is(":checked") == false) {
					alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다..");
					return;
				} else {
					$("#terms_form").submit();
				}
			});
		});
	</script>
</body>
</html>






















