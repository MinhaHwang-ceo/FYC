<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">
<title>Insert title here</title>
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



출처: https://modakbull.tistory.com/8 [끄적끄적]
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

	      

		// input에 입력하는 값들을 뽑아서 변수에 저장

	      var m_title = $('#m_title').val();

	      

	      // encodeURIComponent로 인코딩 합시당. 

            // 이걸로 인코딩하는 이유는 배웠었는데 까먹었다.. 검색해봐야지.

	      m_title = encodeURIComponent(m_title);

	      	      

	      // 뒤에 코드가 길어지니까 그냥 한번 변수에 주소를 저장

	      googleQRUrl = "https://chart.googleapis.com/chart?chs=177x177&cht=qr&chl=";

	      

	      	 // 이미지가 나타날 영역에 원하는 내용을 넣은 QR code의 이미지를 출력합니다.

             // 여기 주소 부분을 변경해주면 원하는 값을 언제든 맘대로

	      	$('#qrcode').attr('src', googleQRUrl + "제목:" + m_title + "/ 감독:" + m_director

	        		 + "/ 장르:" + m_genre + "/ 출연:" + m_staring + "/ 개봉날짜:" + m_opening +'&choe=UTF-8');



	   });

	 

	});

</script>

</body>
</html>