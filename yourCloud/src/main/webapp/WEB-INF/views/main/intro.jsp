<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">

<style>
.main{
width:1000px;
height:80%;
	margin:auto;

	font-family: 'Sunflower', sans-serif;

}

#label{

color:skyblue;
font-size:2em;
 font-style: italic;
text-align:center;
}


</style>
</head>
<body>
<jsp:include page="../common/customer_menubar.jsp"/>
	<jsp:include page="../common/customer_menuList.jsp" />
	
	<br><br><br><br><br>
	<div class="main">
	
<img src="/yc/resources/images/intro.jpg" width="1000px" heigh="500px">

	
	
	<br><br>
<label id="label">Brand Identity</label>

<p>
‘니가 그린 구름 그림’에 모이는 사업자와 투자자 여러분의 가치가 더 빛을 발하길 바랍니다.<br>
저희는 회원님들이 보다 편리하게 저희 사이트를 이용하기 위해 최선을 다하고 있습니다.<br>
자사와 사업자,투자자 모두가 행복한 이 곳, <br>
‘상생과 공존’이 저희의 지향점입니다.
	</p>
	
	
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
<br><br><br><br><br>

		<jsp:include page="../common/customer_footer.jsp"/>
	
	
</body>
</html>