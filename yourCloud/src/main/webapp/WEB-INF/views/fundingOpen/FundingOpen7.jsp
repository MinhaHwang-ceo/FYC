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
		<table style="align:center">
			<tr>
				<td><h5>메이커 이름</h5></td>
				<td id="fno">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"></td>
			</tr>
			<tr>
				<td><h5>프로필 이미지</h5>
				<p>메이커 프로필 영역에<br> 노출되는 내용으로 <br>로고나 메이커님의<br> 사진을 넣어주세요.</p></td>
				<td id="fno">
					<form id="form" runat="server" style="background:Lightgray">
					   <img id="image_section" src="#"/>
					   <br>
					   <input type='file' id="imgInput"/>
					</form>
				</td>
			</tr>
			<tr>
				<td><h5>소셜 네트워크</h5>
				<p>서포터가 확인할 수 있는<br>메이커님의 페이스북,<br>인스타그램 링크 등을<br> 등록해주세요.(최소 1개 등록)</p></td>
				<td id="fno"><input type="text"></td>
			</tr>
			<tr>
				<td><h5>문의 이메일</h5>
				<p>서포터 문의 시 소통이 <br>가능하고, 프로젝트<br> 페이지에 노출가능한<br> 이메일을 입력해주세요.</p></td>
				<td id="fno"><input type="text"></td>
			</tr>
			<tr>
				<td><h5>문의 전화번호</h5>
				<p>서포터 문의 시 실시간<br> 연락이 가능하고, <br>프로젝트 페이지에<br> 노출가능한 대표번호를<br> 입력해주세요.</p></td>
				<td id="fno"><input type="text"></td>
			</tr>
			<tr>
			<td></td>
				<td>
				<button>저장하기</button>
				<a href="${ contextPath }/FundingOpen8.fd"><button id="next">다음으로 ></button></a>
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






















