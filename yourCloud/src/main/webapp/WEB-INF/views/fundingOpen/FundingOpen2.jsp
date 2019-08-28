<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩하기</title>
<style>
	#browsers {
		width:500px;
		height:50px;
		font-weight:bolder;
		font-size: 20px; 
	}
	#funding2 {
		margin: 0px auto;
		margin-top: 5%;
	}
	#next {
		width:300px;
		height:40px;
		margin-left: 35%; 
	} 
</style>
</head>
<body>
	<jsp:include page="../common/customer_menubar.jsp"/>
	<div id="funding2">
	<h1 align="center">어떤 분야의 프로젝트를 진행할 예정인가요?</h1>
	<h4 align="center">진행하려는 프로젝트에 적합하거나 가장 유사한 카테고리를 선택하세요.<br>
	나중에 수정할 수 있습니다.</h4>
	<br>
	<div align="center">   c  
	<select id="browsers" name="browsers">
	    <option value="카테고리 선택하기">카테고리 선택하기</option>
	    <option value="테크-가전">테크-가전</option>
	    <option value="패션-잡화">패션-잡화</option>
	    <option value="뷰티">뷰티</option>
	    <option value="푸드">푸드</option>
	    <option value="홈리빙">홈리빙</option>
	    <option value="키즈">키즈</option>
	    <option value="여행-레저">여행-레저</option>
	    <option value="스포츠">스포츠</option>
	    <option value="반려동물">반려동물</option>
	    <option value="도서">도서</option>
	</select>
	</div>
	<hr>
	<a href="${ contextPath }/FundingOpen3.me"><button id="next">다음으로</button></a>
	</div>
	<jsp:include page="../common/customer_footer.jsp"/>
</body>
</html>