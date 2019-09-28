<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 프로젝트</title>

<style>
.hidden {
	opacity: 0;
}
</style>



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="${contextPath }/resources/css/myPage.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css">
<link href="${pageContext.request.contextPath}/resources/css/main.css"
	rel="stylesheet" />
</head>
<body>

	<jsp:include page="../common/customer_menubar.jsp" />
	<jsp:include page="../common/myPage_menuList.jsp" />
	<br />
	<div id="myPageOuter">
		<div class="project">
			<h2 align="left">
				<c:out value="${ loginUser.userName }" />
				님의 프로젝트
			</h2>

			<br />

			<c:forEach var="b" items="${ list }">
				<c:if test="${loginUser.userNo==b.userNo  }">
					<table align="center" id="myProjectTable" class="whole">
					<input type="hidden"  value="${ b.judgeStatus }">
					<input type="hidden" value="${ b.progressStatus }">
					<input type="hidden" value="${ b.projectNo }">
					<input type="hidden" value="${ loginUser.userNo }">
					<input type="hidden" value="${ b.endDate }">
						<tr>
							<td class="projectImg"><img
								src="/yc/resources/uploadFiles/${b.newFileName}"
								style="width: 100%; height: 70%;" /></td>
						</tr>



						<tr>
							<td style="font-weight: bold"><c:out
									value="${ b.projectTitle }" /></td>
						</tr>
						<c:if test="${b.judgeStatus !='통과' }">
							<tr>
								<td>진행 상황 : <c:out value="${ b.judgeStatus }" />
								</td>
							</tr>
						</c:if>
						<c:if test="${b.judgeStatus =='통과' }">
							<tr>
								<td>진행 상황 : <c:out value="${ b.progressStatus }" /> <br />
									 <label hidden><c:out value="${ b.projectNo }" /></label>
								</td>
							</tr>
						</c:if>
						<c:if test="${b.judgeStatus =='서명대기중' }">
							<tr>
								<td>진행 상황 : <c:out value="${ b.progressStatus }" /> <br />
								<input type="button" class="btn btn-info signBtn" value="전자약정하기" />
								 <label hidden><c:out value="${ b.projectNo }" /></label>
								</td>
							</tr>
						</c:if>

						<tr>
							<td><c:out value="${ b.companyName }" /></td>
						</tr>
						<tr>
							<td><button class="modifyBtn">수정, 편집하기</button></td>
						</tr>
						<c:if test="${b.progressStatus=='성공'}">
							<tr>
								<td><input type="button" class="btn btn-info receipt"
									value="명세 정보 확인" />&nbsp; <input type="button"
									class="btn btn-info support" value="후원자 관리" /> <label hidden><c:out
											value="${ b.projectNo }" /></label></td>

							</tr>
						</c:if>
						<c:if test="${b.progressStatus!='성공'}">
							<tr>
								<td><input type="button" class="btn btn-info hidden"
									value="명세 정보 확인" />&nbsp; <input type="button"
									class="btn btn-info hidden" value="후원자 관리" /></td>
							</tr>
						</c:if>


					</table>
				</c:if>

			</c:forEach>

		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<div id="paginArea" align="center">
			<c:if test="${ pi.currentPage <= 1 }">
            [이전] &nbsp;
         </c:if>
			<c:if test="${ pi.currentPage > 1 }">
				<c:url var="blistBack" value="/selectList.bo">
					<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
				</c:url>
				<a href="${ blistBack }">[이전]</a>&nbsp;
         </c:if>

			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
				<c:if test="${ p eq pi.currentPage }">
					<font color="red" size="4"><b>[${ p }]</b></font>
				</c:if>
				<c:if test="${ p ne pi.currentPage }">
					<c:url var="blistCheck" value="selectList.bo">
						<c:param name="currentPage" value="${ p }" />
					</c:url>
					<a href="${ blistCheck }">${ p }</a>
				</c:if>
			</c:forEach>


			<c:if test="${ pi.currentPage < pi.maxPage }">
				<c:url var="blistEnd" value="selectList.bo">
					<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
				</c:url>
				<a href="${ blistEnd }">&nbsp; [다음]</a>
			</c:if>
			<c:if test="${ pi.currentPage >= pi.maxPage }">
            &nbsp; [다음]
         </c:if>
		</div>

	</div>
	<jsp:include page="../common/customer_footer.jsp" />




	<script>
	
	
	$('.whole').click(function(){
		var $target = $(this).children('input').eq(0).val();
		var $target2 = $(this).children('input').eq(1).val();
		var $bNum = $(this).children('input').eq(2).val();
		var $userNo = $(this).children('input').eq(3).val();
		var $endDate = $(this).children('input').eq(4).val();
		
		if($target =='통과'&& $target2=='오픈' || $target2=='성공' || $target2=='실패' ){

		location.href="categoryOne.ca?projectNo="+$bNum+"&userNo="+$userNo+"&endDate="+$endDate;
	}else if($target =='통과'&& $target2=='오픈예정'){
		location.href="openExpectationDetail.bo?projectNo="+$bNum;
	}
	});
	
	
		$(".support").click(function() {

			var bNum = $(this).siblings().eq(1).text();
			console.log(bNum);

			location.href = "supporterList.me?bNum=" + bNum;

		});

		$(".receipt").click(function() {

			var bNum = $(this).siblings().eq(1).text();
			console.log(bNum);

			location.href = "receiptInfo.me?bNum=" + bNum;

		});

		$(".signBtn").click(function() {
			var bNum = $(this).siblings().eq(1).text();
			var option = "width = 700px, height = 600px, top = 100, left = 200, location = no, scrollbars = no";

			window.open("signProject.fd?bNum=" + bNum, "전자서명", option);
			location.reload();
		});
	</script>

</body>
</html>