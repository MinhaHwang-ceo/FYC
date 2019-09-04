<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">
<title>Insert title here</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>

<style>
.content{
	width:800px;
	height:80%;
	margin:auto;
	font-family: 'Sunflower', sans-serif;
}

</style>
</head>
<body>


<jsp:include page="../common/customer_menubar.jsp"/>
<br><br><br><br><br>



<div class="content">

<table>
<tr><h3>공지사항</h3></tr>
<br>

	<div><button id="createBtn">QR생성테스트</button></div>

	

	<div>

	<img id="qrcode" src='' />

	</div>


<tr><h5>글제목</h5></tr>
<br><br><br><br>
<tr>
<img src="/yc/resources/images/sample.JPG" width="700px" heigh="700px"></td>
</tr>

<tr><label>글내용입니다아아앙</label></tr>

</table>


</div>

<br><br><br><br><br>
<%-- 	<jsp:include page="../common/customer_footer.jsp"/>
 --%>

<script type="text/javascript">

   $(document).ready(function(){

	   $('#createBtn').click(function(){


	      googleQRUrl = "https://chart.googleapis.com/chart?chs=177x177&cht=qr&chl="+"http://192.168.120.5:8001/yc/noticeOne.bo";

	      

	      	 // 이미지가 나타날 영역에 원하는 내용을 넣은 QR code의 이미지를 출력합니다.

             // 여기 주소 부분을 변경해주면 원하는 값을 언제든 맘대로

	      	$('#qrcode').attr('src', googleQRUrl +'&choe=UTF-8');



	   });

	 

	});

</script>

</body>
</html>