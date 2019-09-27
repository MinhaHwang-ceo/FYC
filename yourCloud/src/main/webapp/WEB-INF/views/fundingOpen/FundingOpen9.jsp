<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩하기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">
<style>
#personal {
	color: White;
}

#textbox {
	font-size: 13px;
	color: red;
	border: 1px solid red;
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

table {
	border: 1px solid lightgray;
}
</style>
</head>
<body>

	<jsp:include page="../common/customer_menubar.jsp" />
	<jsp:include page="../common/customer_menuList.jsp"/>
	<div id="top" style="width: 100%;">
<br /><br /><br />
<div id="menu" style="width: 55%;height: 40px; margin: 0 auto;">
		<ul>
			<li><a onclick="basicInfo();" id="basic">기본정보</a></li>
			<li><a onclick="rewardList();" id="reward">리워드</a></li>
			<li><a onclick="rewardStory();" id="story">스토리</a></li>
			<li><a onclick="makerInfo();" id="aboutyou">메이커정보</a></li>
			<li><a id="cominhsoon">오픈예정</a></li>
			<li><a id="account">정산</a></li>
		</ul>
	</div>
</div>
<script>
	function basicInfo(){
		var projectNo = $("#projectNo").val();
		location.href = "baseInfoList.fd?projectNo=" + projectNo;
	}
	
	function rewardList(){
		var projectNo = $("#projectNo").val();
		location.href = "rewardList.fd?projectNo=" + projectNo;
	}
	function rewardStory(){
		var projectNo = $("#projectNo").val();
		location.href = "rewardStory.fd?projectNo=" + projectNo;
		
	} 
	function makerInfo() {
		var projectNo = $("#projectNo").val();
		location.href = "makerInfo.fd?projectNo=" + projectNo;
		
	}
</script>
	<br />
	<br>
	<form action="finalOpen.fd" method="POST" encType="multipart/form-data" id="openForm">
		<input type="hidden" id="projectNo" name="projectNo" value="${p.projectNo }" /> 
		<input type="hidden" id="userNo" name="userNo" value="${ sessionScope.loginUser.userNo }" />
		<div id="inputBox2" align="center" style="width: 100%; min-height: 700px;">
		<table style="align: center; text-align:center; width: 55%;">
			<tr>
				<td colspan="2"><h5>수수료</h5></td>
				<td colspan="2" style="background:white;">
					<h6>리워드 오픈 수수료는 7%(VAT별도)입니다.</h6>
					- 부가 서비스 이용 시, 추가 수수료가 발생될 수 있습니다. <br />
					- 리워드가 없는 기부후원 프로젝트의 경우, 수수료가 다르게 적용됩니다. <br />
					- 자세한 내용은 니가그린 구름그림 수수료 정책을 확인해주세요. <br />
   					 <input type="checkbox" id="c1" name="cc" />
   					 <label for="c1">구름펀딩 수수료 정책을 확인하였습니다.</label>
				</td>
			</tr>
			<tr>
				<td colspan="2" rowspan="2"><h5>계약정보-1)<br>사업자 여부 및 정보</h5></td>
				<td>
   					 <input type="radio" class="radio" id="c2" name="cc" checked/> <label for="c2">사업자(개인사업/법인사업)</label>
				</td>
				<td><input type="radio" class="radio"id="c3" name="cc" /><label for="c3">개인</label></td>
			</tr> 
			<tr>
				<td> <label for="ssn" class="ssn">사업자등록증</label><br /><input type="text" id="ssn" class="ssn" name="ssn" placeholder="사업자등록번호"/></td>
				<td> 통장사본 업로드 <br /><input type='file' id="imgInput"/></td>
			</tr>
			<tr>
				<td colspan="2"><h5>계약정보-2)<br>대표자 정보</h5>
				전자 약정서는 대표자가 확인하고 <br />서명을 진행 해야함으로, <br />동의가 필요합니다.<br> 
				<br />모든 대표자가 서명하여야 <br />약정이 체결됩니다.</td>
				<td><input type="text" name="agentName"placeholder="대표자 성명"> </td>
				<td><input type='text' name="agentEmail"placeholder="대표자 이메일 주소"/></td>
			</tr>
			<tr>
				<td colspan="4">
					<input type="button" value="저장하기" onclick="submit();" />
				</td>
			</tr>
		</table>
		</div>
	</form>
		<script>
			$(function(){
				$(".radio").change(function() {
					if ($("#c2").prop("checked")) {
						$(".ssn").show();
					} else {
						$(".ssn").hide();
					}
					;
				});
			})
		</script>
	
	<jsp:include page="../common/customer_footer.jsp"/>
</body>
</html>























