<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">
<title>펀딩하기</title>
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
				<td><h4>금액</h4></td>
				<td id="fno">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="12345" style = "text-align:right;">원</td>
			</tr>
			<tr>
				<td><h4>리워드명</h4></td>
				<td id="fno">
					<input type="text" placeholder="예)ㅇㄴㅇㄴㅇ" id="">
				</td>
			</tr>
			<tr>
				<td><h4>상세설명</h4></td>
				<td id="fno"><input type="text" placeholder="예)더 가벼워진 권석이,동양 무술의 신비"></td>
			</tr>
			<tr>
				<td><h4>옵션조건</h4></td>
				<td id="fno">
				<input type="checkbox" id="c3" name="cc" />
   				<label for="c3"><span></span>옵션 입력이 필요없는 상품입니다.</label><br>
   				<input type="checkbox" id="c4" name="cc" />
   				<label for="c4"><span></span>옵션 입력이 필요한 상품입니다.</label>&nbsp;&nbsp;&nbsp;<br>
   				<textarea rows="5" cols="40" style="width:300px; height:100px;"></textarea> 
			</td>
			</tr>
			<tr>
				<td><h4>배송조건</h4></td>
				<td id="fno">
				<input type="checkbox" id="c1" name="cc" />
   				<label for="c1"><span></span>배송지 정보가 필요합니다.</label>
   				<p>
				</td>
			</tr>
			<tr>
				<td><h4>제한수량</h4></td>
			<td id="fno">&nbsp;&nbsp;&nbsp;&nbsp;<input type="text">개</td>
			</tr>
			<tr>
				<td><h4>발송시작일</h4></td>
				<td id="fno"><input type="date" min="2017-08-15">
				<script>
				let today = new Date().toISOString().substr(0, 10);
				document.querySelector("#today").value = today;

				document.querySelector("#today2").valueAsDate = new Date();
				</script></td>
			</tr>
			<tr>
			<td></td>
				<td>
				<button>저장하기</button>
				<a href="${ contextPath }/FundingOpen6.fd"><button id="next">다음으로 ></button></a>
				</td>
			</tr>
		</table>
		</div>
	
	<jsp:include page="../common/customer_footer.jsp"/>
</body>
</html>























