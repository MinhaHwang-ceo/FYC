<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">
<title>Insert title here</title>

<style>
.list{
	width:600px;
	height:60%;
	margin:auto;
	font-family: 'Sunflower', sans-serif;

}
.td{
	width:800px;
	height:60%;
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
	<jsp:include page="../common/customer_menuList.jsp" />
	
	<br><br><br><br><br>

<div class="list">

<table>
<tr>
<td class="td"><label>공지</label>
<h4>글제목입니다요</h4>
<label>2018.08.08</label></td>
<td>
<img src="/yc/resources/images/sample.JPG" width="150px" heigh="80px"></td>
</tr>
</table>

</div>
<div class="list">

<table>
<tr>
<td class="td"><label>공지</label>
<h4>글제목입니다요</h4>
<label>2018.08.08</label></td>
<td>
<img src="/yc/resources/images/sample.JPG" width="150px" heigh="80px"></td>
</tr>
</table>

</div>
<div class="list">

<table>
<tr>
<td class="td"><label>공지</label>
<h4>글제목입니다요</h4>
<label>2018.08.08</label></td>
<td>
<img src="/yc/resources/images/sample.JPG" width="150px" heigh="80px"></td>
</tr>
</table>

</div>

<br><br>
<c:if test="${loginUser.userId eq 'admin' }">
<div class="btn">
<button id="btn" onclick="location.href='noticeWrite.bo'" style="float: right;">글작성</button>

</div>
</c:if>

<br><br><br><br><br>

		<jsp:include page="../common/customer_footer.jsp"/>
	
	
	
	<script>
	
	$(function(){
	
		$(".list").click(function(){
			
			
			location.href="noticeOne.bo"
			
			
		});
		
		
		
	});
	
	
	
	</script>
		
</body>
</html>