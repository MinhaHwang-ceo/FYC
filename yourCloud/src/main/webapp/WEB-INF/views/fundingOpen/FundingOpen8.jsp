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
	body{
		font-family: 'Sunflower', sans-serif;
	}
	#menu {
	font-family: 'Sunflower', sans-serif;
	}
	li {
		list-style-type:none;
		font-family: 'Sunflower', sans-serif;
	}
	a {
		text-decoration:none;
		color:inherit;
		font-family: 'Sunflower', sans-serif;
	}
	#menu li {
		float:left;
		font-size: 10px; 
		background-color: White;
		font-family: 'Sunflower', sans-serif;
	}
	#menu a {
		display:block;
		height:35px;
		line-height:35px;
		padding:0 35px; 
		border: 1px solid rgb(246, 249, 249);
		font-family: 'Sunflower', sans-serif;
	}
	#personal {
		color:White;
		font-family: 'Sunflower', sans-serif;
	}
	#textbox {
		font-size:13px;
		color:red;
		border:1px solid red;
		font-family: 'Sunflower', sans-serif;
	}
	#inputBox {
		width:900px;
		height:800px;
		position:relatve;
		z-index:2;
		background:White;
		margin:0 auto;
		font-family: 'Sunflower', sans-serif;
	}
	#inputBox2 {
		width:800px;
		height:80%; 
		position:relatve;
		z-index:1;
		background:rgb(246, 249, 249);
		margin:0 auto;
		font-family: 'Sunflower', sans-serif;
		
	}
	#fno { 
		text-align:center;
		font-family: 'Sunflower', sans-serif;
	}
	th, td {
		padding:15px;
		font-family: 'Sunflower', sans-serif;
	}
	table {
		border-spacing: 10px;
		font-family: 'Sunflower', sans-serif;
	}
	input {
		background-color:Lightgray;
		width:300px;
		height:40px; 
		font-family: 'Sunflower', sans-serif;
	}
	#browsers {
		width:300px;
		height:30px; 
		font-family: 'Sunflower', sans-serif;
	}
	input[type="checkbox"] {
    display:none;
	font-family: 'Sunflower', sans-serif;
}

input[type="checkbox"] + label {
    font-size:13px;
    font-family: 'Sunflower', sans-serif;
}

input[type="checkbox"] + label span {
    display:inline-block;
    width:15px;
    height:15px;
    margin:-2px 10px 0 0;
    vertical-align:middle;
    background:url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png) left top no-repeat;
    cursor:pointer;
    font-family: 'Sunflower', sans-serif;
}

input[type="checkbox"]:checked + label span {
    background:url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png) -19px top no-repeat;
}
</style>
</head>
<body>
	<jsp:include page="../common/customer_menubar.jsp"/>
	<br>
	<div id="menu">
	<ul>
		<li>
			<a id="basic">기본정보</a>
		</li>
		<li>
			<a id="reward">리워드</a>
		</li>
		<li>
			<a id="story">스토리</a>
		</li>
		<li>
			<a id="aboutyou">메이커정보</a>
		</li>
		<li>
			<a id="cominhsoon">오픈예쩡</a>
		</li>
		<li>
			<a id="account">정산</a>
		</li>
		<li style="margin-left:20px;">
			<a id="preview">미리보기</a>
		</li>
		<li style="margin-left:20px;">
			<a id="personal" class="menu8" style="background-color: lightgreen">검토 요청하기</a>
		</li>
	</ul>
	</div>
	<br><br><br> 
		<div id="inputBox2" align="center">
		<br>
		<p>'오픈예정'은 오픈예정 알림신청한 서포터에게 프로젝트 오픈 소식이 SMS으로 발송되는 서비스입니다.<br>
			오픈예정을 신청하시면, 오픈예정 심사가 진행됩니다.</p>
		<table style="align:center">
			<tr>
				<td><h5>오픈예정 신청</h5>
				<p>오픈예정 진행 여부를<br> 선택해주세요.</p></td>
				<td style="background:white; border: ">
					<div>
						<input type="checkbox" id="c1" name="cc" />
   					 <label for="c1"><span></span>오픈예정 진행하지 않고,바로 프로젝트 오픈</label><br><br>
   					<input type="checkbox" id="c2" name="cc" />
   					<label for="c2"><span></span>오픈예정 7일~15일 진행 후, 프로젝트 오픈
					추가 플랫폼 수수료 : 3% (VAT별도)</label>
					</div>
				</td>
			</tr>
			<tr>
			<td></td>
				<td>
				<button>저장하기</button>
				<a href="${ contextPath }/FundingOpen9.fd"><button id="next">다음으로 ></button></a>
				</td>
			</tr>
		</table>
		</div>
	
	<jsp:include page="../common/customer_footer.jsp"/>
</body>
</html>























