<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

#menu li {
	float: left;
	font-size: 25px;
	font-family: 'Sunflower', sans-serif;
}

#menu a {
	display: block;
	height: 40px;
	line-height: 35px;
	padding: 0 35px;
}
#menu {
	border: 1px solid black;
}


#menu a:hover {
	cursor: pointer;
	background: lightgreen;
}
</style>
</head>
<body>
<br /><br /><br />
	<div id="menu" style="width: 55%;height: 40px; margin: 0 auto;">
		<ul>
			<li><a href="#" id="basic">기본정보</a></li>
			<li><a id="reward">리워드</a></li>
			<li><a id="story">스토리</a></li>
			<li><a id="aboutyou">메이커정보</a></li>
			<li><a id="cominhsoon">오픈예정</a></li>
			<li><a id="account">정산</a></li>
		</ul>
	</div>
</body>
</html>