<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 리워드 상세보기</title>
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
	<jsp:include page="../common/customer_menubar.jsp"/>
	<jsp:include page="../common/myPage_menuList.jsp" />
	<br />
	<div id="outer">
		<div id="myReward">
			<div>
				<h2><c:out value="${ loginUser.userName }"/>님의 리워드</h2>
				<hr />
				<br />
				<h4>펀딩내역</h4>
				<br /> 
				<div class="rewards">
					<div class="left">
						<p class="category"><c:out value="${ r.categoryDiv }"/></p>	
						<p class="status smallText"><c:out value="${ r.endDate }"/> 종료</p>
						<p class="projectTitle"><c:out value="${ r.projectTitle }"/></p>
						<p class="maker smallText" style="color:black"><c:out value="${ r.companyName }"/></p>
					</div>				
					<div class="right">
						<p><c:out value="${ r.fundDate }"/> 펀딩</p>	
					</div>
				</div>
				<div class="rewards">
					<div class="left">
						<p>펀딩 번호</p>
						<p>펀딩 날짜</p>
						<p>펀딩 마감일</p>
					</div>
					<div class="right">
						<p><c:out value="${ r.fundNo }"/></p>
						<p><c:out value="${ r.fundDate }"/></p>
						<p><c:out value="${ r.endDate }"/></p>
					</div>
				</div>
				<div class="payStatusForm rewards">
					<label style="color:lightgray" class="smallText">펀딩 상태</label>
					<p class="payStatus"><c:out value="${ r.payStatus  }"/>결제실패</p>
					<p class="smallNotice">프로젝트가 실패하여, 결제가 진행되지 않습니다.</p>
				</div>
				<p>&nbsp;</p>
				<p class="smallNotice">&nbsp;* 펀딩하기는 쇼핑하기가 아닙니다!</p>
				<div class="rewards">
					<div class="left">
						<p class="smallText">결제 내역</p>
						<p class="projectTitle">리워드 이름</p>
						<p>가격 | 수량</p>
						<p>발송 시작일 : yyyy년 mm월 dd일 예정</p>
						<p>옵션</p>
					</div>
					<div class="right">
						<p class="smallText">&nbsp;</p>
						<p class="projectTitle"><c:out value="${ r.projectTitle }"/></p>
						<p><c:out value="${ r.rewardMoney }"/> 원</p>
					</div>
				</div>
				<div class="rewards" style="background:#D4EAE5">
					<div class="left">
						<p>펀딩금액</p>
						<p>포인트 차감금액</p>
						<p>추가 후원금</p>
						<p>배송비</p>
						<hr />
						<p>펀딩 마감일</p>
					</div>
					<div class="right">
						<p><c:out value="${ r.rewardMoney }"/> 원</p>
						<p>- 0원</p>
						<p>0원</p>
						<p>0원</p>
						<hr />
						<p style="font-size:1.1em;font-weight:bold"><c:out value="${ r.rewardMoney }"/> 원</p>
					</div>
				</div>
				<div class="rewards">
					<div class="left">
						<p class="smallText">펀딩 상태</p>
						<p>결제 방법</p>
						<p>카드 번호</p>
					</div>
					<div class="right">
						<p>&nbsp;</p>
						<p>신한카드</p>
						<p><c:out value="${ r.account }"/></p>
					</div>					
				</div>
				<div class="rewards">
					<div class="left">
						<p class="smallText">배송지 정보</p>
						<p>사람 이름</p>
						<p>010-0000-0000</p>
						<p>서울시 관악구 행운동 행운 1가길</p>
						<p>12번지</p>
					</div>
				</div>
				<div class="rewards" style="background:lightgray">
					<p style="font-weight:bold">
						펀딩 종료 이 후에는 서포터의 배송지 정보가 프로젝트 메이커에게 전달되기 때문에, 종료 이 후 배송 정보 변경 등에 대한 문의는 메이커에게 직접하셔야 합니다.
					</p>
					<div id="requestHelp" style="background:white;width:98%;margin:0 auto;border-radius:10px;" align="center">
						<img src="${ contextPath }/resources/images/mail.PNG"/>메이커에게 문의하기
					</div>
				</div>
				<p>&nbsp;</p>
				<p align=right id="printBtn"><a href="" style="color:blue;text-decoration:underline;font-size:1.1em;">영수증 출력하기</a></p>
			</div>
		</div>
	</div>
	<script>
		$("#printBtn").mouseover(function(){
			$(this).css("cursor","pointer");
		});
	</script>
</body>
</html>