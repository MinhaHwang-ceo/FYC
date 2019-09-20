<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>나의 리워드</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="${contextPath }/resources/css/myPage.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" />
</head>

<body>
	<jsp:include page="../common/customer_menubar.jsp" />
	<jsp:include page="../common/myPage_menuList.jsp" />
	<br />
	
	<div id="outer">
		<div id="myReward">
			<h2><c:out value="${ loginUser.userName }"/>님의 리워드</h2>
			
			<hr />
			<br />
			<h4>펀딩내역</h4>
			<br />
			<c:forEach var="m" items="${ list }">
			<a href="showMyRewardDetail.me?rewardNo=${ m.rewardNo }">
			<div class="rewards">
				<div class="left">
					<p class="category"><c:out value="${ m.categoryDiv }"/></p>	
					<p class="status"><c:out value="${ m.endDate }"/> 종료</p>
					<br />
					<p class="projectTitle"><c:out value="${ m.projectTitle }"/></p>
					<p class="maker"><c:out value="${ m.companyName }"/></p>
					<p class="payStatus"><c:out value="${ m.payStatus }"/></p>
				</div>				
				<div class="right">
					<p><c:out value="${ m.fundDate }"/> 펀딩</p>	
					<br />
					<br />
					<label>메이커 만족도</label>
					<br />
					<label class="stars">★★★★☆</label>
					<br />
					<a href="showMyRewardDetail.me?rewardNo=${ m.rewardNo }">상세보기</a>
				</div>
			</div>
			</a>
			</c:forEach>
		</div>
		
	</div>
	<div id="paginArea" align="center">
			<c:if test="${ pi.currentPage <= 1 }">
				이전 &emsp;
			</c:if>
			<c:if test="${ pi.currentPage > 1 }">
				<c:url var="blistBack" value="myReward.me">
					<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
				</c:url>
				<a href="${ blistBack }">이전</a>&emsp;
			</c:if>
			
			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
				<c:if test="${ p eq pi.currentPage }">
					<font color="#6CC0FF" size="4"><b>[${ p }]</b></font>
				</c:if>
				<c:if test="${ p ne pi.currentPage }">
					<c:url var="blistCheck" value="myReward.me">
						<c:param name="currentPage" value="${ p }"/>
					</c:url>
					<a href="${ blistCheck }">${ p }</a>
				</c:if>
			</c:forEach>
			
			
			<c:if test="${ pi.currentPage < pi.maxPage }">
				<c:url var="blistEnd" value="openExpectation.bo">
					<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
				</c:url>
				<a href="${ blistEnd }">&emsp; 다음</a>
			</c:if>
			<c:if test="${ pi.currentPage >= pi.maxPage }">
				&emsp; 다음
			</c:if>
		</div>
	
	
	<jsp:include page="../common/customer_footer.jsp"/>
	<script>
		$(function(){
			$(".rewards").mouseover(function(){
				$(this).css({"border":"2px solid red", "cursor":"pointer"});
			}).mouseout(function(){
				$(this).css({"border":"1px solid black"});
			}).click(function(){
				location.href="showMyRewardDetail.me";
			});
		});
		function secession(){
			location.href="myReward.me";
		};
	</script>
</body>
</html>