<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
	button {
		cursor: pointer;
	}
/* 탭 영역  */
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
/* 해더영역  */
.reward-header{
	text-align:center;
    border: 1px solid black;
    height:-1px;
    top: -20px;
    background-size: cover;
    background: #001328!important;
    color: white;
   }
/* div영역 넘으면 줄 바꿈  */
* {
	word-break: break-all;
}
/* 전체 div 영역  */
.reward-body {
	width: 100%;
}

.dd {
	border: 1px solid blue;
	width: 75%;
	margin: 0 auto;
}
/* 컨텐츠 영역  */
.content-supporter {
	float: left;
	border: 1px solid purple;
	width: 65%;
	margin-right: 40px;
	margin: 0 auto;
	margin-right: 18px;
}
/* 오른쪽 영역  */
.opener-info {
	float: left;
	border: 1px solid black;
	width: 24%;
}

.btn-funding {
	/*    border:1px solid #00c4c4; */
	border: 0;
	outline: 0;
	font-size: 17px;
	background: #00c4c4;
	padding: 1.19px 23.9999px 0px;
	color: white;
	width: 85%;
	height: 45px;
}

.btn-question, .btn-share {
	width: 28%;
	border: 1px solid skyblue;
	background: white;
	height: 35px;
}

.projectTitle{
	margin-bottom: 10px;
    font-weight: 500;
    font-size: 15px;
    color: #777;
}.reward-list{
	position: relative;
 
    width: 100%;
    margin-bottom: 20px;
   /*  background: #d19cfa; */
    border: 1px solid #eaeaea;
    text-align: left;
    background: white;
   
}
.reward-list .reward-qty em {
    padding: 2px 5px;
    font-weight: 500;
    background: #f6ecfe;
}
.reward-list .reward-soldcount {
    font-size: 13px;
    line-height: 21px;
    color: #00132C;
}
.reward-info .reward-qty {
    margin-bottom: 5px;
    font-size: 13px;
    line-height: 21px;
    color: #c88af9;
}


.avatar-wrap .RewardItem {
	position: absolute;
	background-repeat: no-repeat;
	background-size: cover;
	
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="../common/customer_menubar.jsp" />
	<jsp:include page="../common/customer_menuList.jsp" />
	
	<script type="text/javascript">

	$(function(){
		$("html").css({"background-image":"linear-gradient('')", "background":"white"});
		
	})
	</script>

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
	<!--------------->
	
	<br/>
	<%int userNo =123; %>

	<div class="tab-list">
		<ul class="tab-story">		
		<c:if test="${loginUser.userNo ne null}">		
			<li><a href="categoryOne.ca?projectNo=${ detail.projectNo }&userNo=${loginUser.userNo}&endDate=${detail.endDate}" class="tab-link">스토리</a></li>
		</c:if>	
		
		<c:if test="${loginUser.userNo eq null }">
			<li><a href="categoryOne.ca?projectNo=${ detail.projectNo }&userNo=<%=userNo%>&endDate=${detail.endDate}" class="tab-link">스토리</a></li>
		</c:if>			
			<li><a href="categoryOneFunding.ca?projectNo=${detail.projectNo}" class="tab-link">펀딩안내</a></li>
			<li><a href="#" class="tab-link">새소식</a></li>
			<li><a href="categoryOneCommunity.ca?projectNo=${detail.projectNo}" class="tab-link">커뮤니티</a></li>
			<li><a href="categoryOneSupporter.ca?projectNo=${detail.projectNo}" class="tab-link">서포터</a></li>
		</ul>
	</div>
	
	<hr/>

	이펀딩에 참여한 사람은 5명입니다<br>
	이펀딩에 참여한 사람은 5명입니다<br>
	이펀딩에 참여한 사람은 5명입니다<br>
	이펀딩에 참여한 사람은 5명입니다<br>
	이펀딩에 참여한 사람은 5명입니다<br>
	
	이펀딩에 참여한 사람은 5명입니다<br>
	이펀딩에 참여한 사람은 5명입니다<br>
	
		
	
	
	
	<br><br>	
		
	
	<div style="width:100%; float:left;"><jsp:include page="../common/customer_footer.jsp"/></div><br>
	</div>
</body>
</html>