<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>	
<style>
body, ul {
	margin: 0;
	padding: 0;
}

li {
	list-style-type: none;
}

a {
	text-decoration: none;
}

.tab-list {
	text-align: center;
}

.tab-list ul {
	display: inline-block;
	*display: inline;
	zoom: 1;
}

.tab-list ul li {
	float: left;
	margin-left: -1px;
	z-index: 1;
}

.tab-story a {
	height: 40px;
	padding: 0 30px;
	line-height: 30px;
}

* {
	word-break: break-all;
}

/* 해더영역  */
.reward-header {
	text-align: center;
	border: 1px solid black;
	height: -1px;
	top: -20px;
	background-size: cover;
	background: #001328 !important;
	color: white;
}

.title-header {
	color: white;
}
/* div영역 넘으면 줄 바꿈  */
* {
	word-break: break-all;
}

</style>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>	
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../common/customer_menubar.jsp"/>
	<jsp:include page="../common/customer_menuList.jsp" />
	

	<div id="outer" style="background:white;">
<!-- 리워드 헤더 이미지  -->
	<div class="reward-header">
		<p class="title-info">
			<h6 style="color:#5cdede;">
				<c:choose>
					<c:when test="${detail.category eq 'A1' }"> 테크,가전</c:when>
					<c:when test="${detail.category eq 'A2' }"> 패션,잡화</c:when>
					<c:when test="${detail.category eq 'A3' }"> 키즈</c:when>
					<c:when test="${detail.category eq 'A4' }"> 여행,레저</c:when>
					<c:when test="${detail.category eq 'A5' }"> 뷰티</c:when>
					<c:when test="${detail.category eq 'A6' }"> 도서</c:when>
					<c:when test="${detail.category eq 'A7' }"> 반려동물</c:when>
					<c:when test="${detail.category eq 'A8' }"> 스포츠</c:when>
					<c:when test="${detail.category eq 'A9' }"> 푸드</c:when>
					<c:when test="${detail.category eq 'A10' }"> 홈리빙</c:when>
					<c:otherwise>카테고리 미정</c:otherwise>
				</c:choose> &emsp;
			<strong style="color:white">${ detail.projectShortTitle }</strong>
			</h6> 
		<h2 class="title-header" style="color: white;"> ${ detail.projectTitle } </h2>
		</p>
	</div>

<br>
	<%int userNo =123; %>
	<div class="tab-list">
		<ul class="tab-story">		
		<c:if test="${loginUser.userNo ne null}">		
			<li><a href="categoryOne.ca?projectNo=${ detail.projectNo }&userNo=${loginUser.userNo}&endDate=${detail.endDate}" class="tab-link">스토리</a></li>
		</c:if>	
		<c:if test="${loginUser.userNo eq null }">
			<li><a href="categoryOne.ca?projectNo=${ detail.projectNo }&userNo=<%=userNo%>&endDate=${detail.endDate}" class="tab-link">스토리</a></li>
		</c:if>
			<li><a href="#" class="tab-link">펀딩안내</a></li>
			<li><a href="categoryOneNews.ca?projectNo=${detail.projectNo}" class="tab-link">새소식</a></li>
			<li><a href="categoryOneCommunity.ca?projectNo=${detail.projectNo}" class="tab-link">커뮤니티</a></li>
			<li><a href="categoryOneSupporter.ca?projectNo=${detail.projectNo}" class="tab-link">서포터</a></li>
		</ul>
	</div>


	<hr><br><br>
		
  <div class="container">
  <h2>리워드 정보 제공 고시</h2>
  <br>
  <table class="table table-hover">
    <thead>
      <tr>
        <th>리워드 상세정보</th>
        <th>패션 잡화</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>모델명</td>
        <td>${reward.modelName}</td>
      </tr>
      <tr>
        <td>종류</td>
        <td>${reward.modelType}</td>
      </tr>
      <tr>
        <td>소재</td>
        <td>${reward.modelMat}</td>
      </tr>
       <tr>
        <td>치수</td>
        <td>${reward.modelSize}</td>
      </tr>
       <tr>
        <td>제조사</td>
        <td>${reward.manufacturer}</td>
      </tr>
       <tr>
        <td>제조국</td>
        <td>${reward.manufacturerNation}</td>
      </tr>
       <tr>
        <td>주의사항</td>
        <td>${reward.modelNotice}</td>
      </tr>
       <tr>
      <td>문의 이메일</td>
        <td>${detail.email}</td>
      </tr>
      <tr>
        <td>문의 전화번호</td>
        <td>${detail.phone}</td>
      </tr>
      
      
    </tbody>
  </table>
</div>

<br><br>
		
	<div style="width:100%; float:left;"><jsp:include page="../common/customer_footer.jsp"/></div>
	</div>
</body>
</html>