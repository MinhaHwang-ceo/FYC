<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
#check{


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
<h4 id="title">이용가이드 </h4>

<br><br><br>
<c:forEach var="b" items="${ list }">
<div>
<input type="checkbox" id="check">
<div class="list">
<input type="hidden" value="${ b.bNo }">
<table>

<tr><td><img src="/yc/resources/images/notice.JPG" width="100px" heigh="100px"></td>
<td>

<h4><c:out value="${ b.bTitle }" /></h4>
<h5><c:out value="${ b.bcontent }" /></h5>

</td></tr>
</table>

</div>
</div>
</c:forEach>


<br><br>
<div class="btn">
		<c:if test="${loginUser.userId eq 'admin' }">
<button id="btn" onclick="location.href='guideWrite.bo'" style="float: right;">글작성</button>
</c:if>
</div>
<br><br><br><br><br>

		<jsp:include page="../common/customer_footer.jsp"/>
		
	<script>
	
	$(function(){
	
		$(".list").click(function(){
			var bNo =$(this).children('input').eq(0).val()
			console.log(bNo)
			
			
			location.href="guideOne.bo?bNo="+bNo
			
			
		});
		
		
		
	});
	
	
	
	</script>
	
</body>
</html>