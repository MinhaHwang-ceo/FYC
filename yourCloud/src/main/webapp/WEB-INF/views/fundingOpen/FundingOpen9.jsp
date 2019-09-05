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
	td {
		padding:40px;
		padding-left:40px;
		padding-right:10px;
		font-family: 'Sunflower', sans-serif;
	}

</style>
</head>
<body>
	
	<jsp:include page="../common/customer_menuList.jsp"/>
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
				<td><h5>수수료</h5></td>
				<td style="background:white;">
					<div>
					<h6>리워드 오픈 수수료는 7%(VAT별도)입니다.</h6>
					<p>- 부가 서비스 이용 시, 추가 수수료가 발생될 수 있습니다.</p>
					<p>- 리워드가 없는 기부후원 프로젝트의 경우, 수수료가 다르게 적용됩니다.</p>
					<p>- 자세한 내용은 니가그린 구름그림 수수료 정책을 확인해주세요.</p>
   					 <input type="checkbox" id="c1" name="cc" />
   					 <label for="c1"><span></span>구름펀딩 수수료 정책을 확인하였습니다.</label>
					</div>
				</td>
			</tr>
			<tr>
				<td><h5>계약정보-1)<br>사업자 여부 및 정보</h5></td>
				<td style="background:white;">
					<div>
   					 <input type="checkbox" id="c2" name="cc" />
   					 <label for="c2"><span></span>사업자(개인사업/법인사업)</label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
   					 <input type="checkbox" id="c3" name="cc" />
   					 <label for="c3"><span></span>개인</label>
   					 <br>
   					 사업자 등록번호
   					 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   					 <input type="text">
   					 <br><br>
   					 사업자등록증 업로드<br>
					 <input type='file' id="imgInput"/>
					 <br><br>
					 통장사본 업로드
   					 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 <input type='file' id="imgInput"/>
					</div>
				</td>
			</tr> 
			<tr>
				<td><h5>계약정보-2)<br>대표자 정보</h5>
				<p>전자 약정서는 대표자가<br> 직접 확인하고, 서명을 진행<br>해야함으로, 대표자의 이메일<br> 로약정서가 발송됩니다.<br> 
				공동 대표의 경우는 모든 대표자의<br> 메일로 발송되며, 모든 대표자가<br> 확인하고 서명하여야 약정이 체결됩니다.</p></td>
				<td style="background:white;">
					<div>
   					 <input type="text" placeholder="대표자 성명">
   					 <br><br>
					 <input type='text' placeholder="대표자 이메일 주소"/>
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
		<script>
		function readURL(input) {
			 if (input.files && input.files[0]) {
			  var reader = new FileReader();
			  
			  reader.onload = function (e) {
			   $('#image_section').attr('src', e.target.result);  
			  }
			  
			  reader.readAsDataURL(input.files[0]);
			  }
			}
			  
			$("#imgInput").change(function(){
			   readURL(this);
		});
		</script>
	
	<jsp:include page="../common/customer_footer.jsp"/>
</body>
</html>























