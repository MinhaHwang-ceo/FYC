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

input {
	width: 300px;
	height: 40px;
}

#browsers {
	width: 300px;
	height: 30px;
}

input[type="checkbox"] {
	display: none;
}

input[type="checkbox"]+label {
	font-size: 13px;
}

input[type="checkbox"]+label span {
	display: inline-block;
	width: 15px;
	height: 15px;
	margin: -2px 10px 0 0;
	vertical-align: middle;
	background:
		url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png)
		left top no-repeat;
	cursor: pointer;
}

input[type="checkbox"]:checked+label span {
	background:
		url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png)
		-19px top no-repeat;
}

#box1 {
	width: 500px;
}

.inputDiv {
	display: none;
}

#menu li  {
	float: left;
	font-size: 25px;
	font-family: 'Sunflower', sans-serif;
	border: 1px solid black;
}

#menu a {
	display: block;
	height: 40px;
	line-height: 35px;
	padding: 0 35px;
}


#menu {
   text-align: center;
}




#menu a:hover {
	cursor: pointer;
	background: lightgreen;
}

h4 {
	text-align: center;
}

button {
	width:120px;
    height: 40px;
    background-color: #00af84;
    display: inline-block;
    font-weight: 500;
    color: #fff;
    font-size: 16px;
    border: 0;
}


button:hover {
	cursor: pointer;
	background: orange;
}

</style>
</head>
<body>

	<jsp:include page="../common/customer_menubar.jsp" />
	<jsp:include page="../common/customer_menuList.jsp"/>
	<div id="top" style="width: 100%;">
<br /><br /><br />
<div id="menu" style="width: 60%;height: 30px; margin: 0 auto;">
		<ul class="ull">
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
	<hr />
	<br>
	<form action="FundingOpen8.fd" id="mainForm" method="POST" encType="multipart/form-data">
		<input type="hidden" id="projectNo" name="projectNo" value="${p.projectNo }" />
		<input type="hidden" id="userNo" name="userNo" value="${ sessionScope.loginUser.userNo }"/>
		<div id="inputBox2" align="center">
			<table style="align: center; width:100%;">
				<tr>
					<td><h5>메이커 이름(법인명)</h5></td>
					<td><input type="text" value="${m.companyName}" name="companyName"></td>
				</tr>
				<tr>
					<td><h5>프로필 이미지</h5>
						<p>
							메이커 프로필 영역에<br> 노출되는 내용으로 <br>로고나 메이커님의<br> 사진을 넣어주세요.
							<br />(권장 사이즈 : 200px x 200px)
						</p></td>
					<td >
						<img src="resources/uploadFiles/${at.newFileName}" id="image_section" style="width:200px; height:200px;"/> <br> <input type='file' name="photo" id="photo"/>
					</td>
				</tr>
				<tr>
					<td><h5>소셜 네트워크</h5>
						<p>
							서포터가 확인할 수 있는<br>메이커님의 페이스북,<br>인스타그램 링크 등을<br>
							등록해주세요.(최소 1개 등록)
						</p></td>
					<td ><input value="${p.social}" type="text" name="social"></td>
				</tr>
				<tr>
					<td><h5>문의 이메일</h5>
						<p>
							서포터 문의 시 소통이 <br>가능하고, 프로젝트<br> 페이지에 노출가능한<br>
							이메일을 입력해주세요.
						</p></td>
					<td ><input value="${p.email}" type="text" name="email"></td>
				</tr>
				<tr>
					<td><h5>문의 전화번호</h5>
						<p>
							서포터 문의 시 실시간<br> 연락이 가능하고, <br>프로젝트 페이지에<br> 노출가능한
							대표번호를<br> 입력해주세요.
						</p></td>
					<td ><input type="text" name="phone" value="${p.phone}"></td>
				</tr>
				<tr>
					<td></td>
					<td>
						<button>저장하기</button> <button id="next">다음으로 ></button>
					</td>
				</tr>
			</table>
		</div>
	</form>
	<script>
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#image_section').attr('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}

		$("#photo").change(function() {
			readURL(this);
		});
	</script>

	<jsp:include page="../common/customer_footer.jsp" />
</body>
</html>






















