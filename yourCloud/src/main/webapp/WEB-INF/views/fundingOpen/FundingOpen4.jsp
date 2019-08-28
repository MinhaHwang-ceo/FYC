<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩하기</title>
<style>
	body {
		background-color: rgb(246, 249, 249);
	}
	#menu {
		margin-top: 10%; 
	}
	li {
		list-style-type:none;
	}
	a {
		text-decoration:none;
		color:inherit;
	}
	#menu li {
		float:left;
		font-size: 10px; 
		background-color: rgb(246, 249, 249);
	}
	#menu a {
		display:block;
		height:35px;
		line-height:35px;
		padding:0 35px;
		border: 1px solid;
	}
	#personal {
		color:White;
	}
	#textbox {
		font-size:13px;
		color:red;
		border:1px solid red;
	}
	#inputBox {
		width:900px;
		position:relatve;
		z-index:2;
		background:White;
		margin:0 auto;
	}
	#fno {
		width:300px;
		height:100px; 
		text-align:center;
	}
	table {
		border-spacing:0 30px;

	}
	td {
		background-color: rgb(246, 249, 249);
		
	}
	input {
		background-color: rgb(246, 249, 249);
		width:300px;
		height:50px; 
	}
</style>
</head>
<body>
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
	<br><br>
	<div id="textbox" align="center">
		<p>알림 | 30분 동안 입력 또는 작성 단계별 저장이 진행되지 않으면 자동으로 로그아웃 되며, 저장하지 않은 입력값은 반영 되지 않으니 주의하시기 바랍니다.</p>
	</div>
	<br> 
	<div id="inputBox" align="center">
		<table>
			<tr>
				<td style="background:White">프로젝트 번호<br>
				<p>와디즈 담당자와의 소통은 <br>프로젝트 번호로 진행됩니다.</p></td>
				<td id="fno">12314<br>dsnjklwlncnzjklnwulinailn</td>
			</tr>
			<tr>
				<td style="background:White">연락처<br>
				<p>주요 안내를 받으실 이메일<br>과 휴대폰 번호를 등록해 주세요<br>정보 변경은 회원정보설정에서<br> 가능합니다.</p></td>
				<td id="fno">
					<input type="text" value="연락처" id="phone">
					<input type="email" value="이메일" id="email">
				</td>
			</tr>
			<tr>
				<td style="background:White">프로젝트 번호<br>
				<p>와디즈 담당자와의 소통은 <br>프로젝트 번호로 진행됩니다.</p></td>
				<td id="fno">12314<br>dsnjklwlncnzjklnwulinailn</td>
			</tr>
			<tr>
				<td style="background:White">프로젝트 번호<br>
				<p>와디즈 담당자와의 소통은 <br>프로젝트 번호로 진행됩니다.</p></td>
				<td id="fno">12314<br>dsnjklwlncnzjklnwulinailn</td>
			</tr>
			<tr>
				<td style="background:White">프로젝트 번호<br>
				<p>와디즈 담당자와의 소통은 <br>프로젝트 번호로 진행됩니다.</p></td>
				<td id="fno">12314<br>dsnjklwlncnzjklnwulinailn</td>
			</tr>
			<tr>
				<td style="background:White">프로젝트 번호<br>
				<p>와디즈 담당자와의 소통은 <br>프로젝트 번호로 진행됩니다.</p></td>
				<td id="fno">12314<br>dsnjklwlncnzjklnwulinailn</td>
			</tr>
			<tr>
				<td style="background:White">프로젝트 번호<br>
				<p>와디즈 담당자와의 소통은 <br>프로젝트 번호로 진행됩니다.</p></td>
				<td id="fno">12314<br>dsnjklwlncnzjklnwulinailn</td>
			</tr>
			<tr>
				<td style="background:White">프로젝트 번호<br>
				<p>와디즈 담당자와의 소통은 <br>프로젝트 번호로 진행됩니다.</p></td>
				<td id="fno">12314<br>dsnjklwlncnzjklnwulinailn</td>
			</tr>
			<tr>
				<td style="background:White">프로젝트 번호<br>
				<p>와디즈 담당자와의 소통은 <br>프로젝트 번호로 진행됩니다.</p></td>
				<td id="fno">12314<br>dsnjklwlncnzjklnwulinailn</td>
			</tr>
			<tr>
				<td style="background:White">프로젝트 번호<br>
				<p>와디즈 담당자와의 소통은 <br>프로젝트 번호로 진행됩니다.</p></td>
				<td id="fno">12314<br>dsnjklwlncnzjklnwulinailn</td>
			</tr>
		</table>
	</div>
</body>
</html>























