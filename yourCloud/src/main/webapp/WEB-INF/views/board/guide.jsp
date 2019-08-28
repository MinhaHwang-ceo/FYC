<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet"><title>Insert title here</title>
<style>
.list{
	width:500px;
	height:60%;
	margin:auto;
font-family: 'Sunflower', sans-serif;


}
#title{
text-align:center;
font-family: 'Sunflower', sans-serif;

}
.btn{
	width:1200px;
	height:60%;
font-family: 'Sunflower', sans-serif;

}


#btn{
  background:#1AAB8A;
  color:#fff;
  border:none;
  position:relative;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
font-family: 'Sunflower', sans-serif;
  
}
</style>

</head>
<body>
<jsp:include page="../common/customer_menubar.jsp"/>
	
	<br><br><br><br><br>
<tr><h4 id="title">이용가이드</h4></tr>

<br><br><br>

<div class="list">

<table>

<tr><td><img src="/yc/resources/images/notice.JPG" width="100px" heigh="100px"></td>
<td>
<h4>글제목</h4>
<h5>글내용</h5>
<label>작성자</label>
</td></tr>
</table>

</div>
<div class="list">

<table>

<tr><td><img src="/yc/resources/images/notice.JPG" width="100px" heigh="100px"></td>
<td>
<h4>글제목</h4>
<h5>글내용</h5>
<label>작성자</label>
</td></tr>
</table>

</div>
<div class="list">

<table>

<tr><td><img src="/yc/resources/images/notice.JPG" width="100px" heigh="100px"></td>
<td>
<h4>글제목</h4>
<h5>글내용</h5>
<label>작성자</label>
</td></tr>
</table>

</div>


<br><br>
<div class="btn">
<button id="btn" onclick="location.href='guideWrite.bo'" style="float: right;">글작성</button>

</div>
<br><br><br><br><br>

		<jsp:include page="../common/customer_footer.jsp"/>
		
	<script>
	
	$(function(){
	
		$(".list").click(function(){
			
			
			location.href="guideOne.bo"
			
			
		});
		
		
		
	});
	
	
	
	</script>
	
</body>
</html>