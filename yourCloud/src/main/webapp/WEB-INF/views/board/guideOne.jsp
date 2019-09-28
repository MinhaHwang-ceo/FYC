<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
.btn{
	width:1015px;
	height:80%;
align:center;
	margin:0 auto;
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
margin:5px;
  
}

</style>
</head>
<body>

<jsp:include page="../common/customer_menubar.jsp"/>
	<jsp:include page="../common/customer_menuList.jsp" />

<br><br><br><br><br>






<br><br>




<input type="hidden" value="${list.bNo }" id="bNo">

<div class="content">




<table>

<br>
<tr><h5>${list.bTitle }</h5></tr>
<br><br><br><br>
<c:if test="${list.newFileName !=null}">
<tr>
<img src="resources/uploadFiles/${list.newFileName}" width="500px" heigh="300px"></td>
</tr>
</c:if>
<br><br><br><br>

<tr><label>${list.bcontent}</label></tr>

</table>


</div>
<br><br><br><br>
<div class="btn">
		<c:if test="${loginUser.userId eq 'admin' }">

<button id="btn" class="delete"  style="float: right;">삭제</button>

<button id="btn"  class="update"  style="float: right;">수정</button>
</c:if>
</div>













<br><br><br><br><br>
	<jsp:include page="../common/customer_footer.jsp"/>
	



<script>



	
	$(".delete").click(function(){
		
		var bNo=$("#bNo").val();
		console.log(bNo)
			
			location.href='deleteGuide.bo?bNo='+bNo
		
		
	})


		$(".update").click(function(){
	var bNo=$("#bNo").val();

	console.log(bNo)
	
		
			
			location.href='updateGuide.bo?bNo='+bNo
		
	
})


</script>

</body>
</html>