<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet">
<link rel="stylesheet" href="${contextPath }/resources/css/myPage.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
<script src="${contextPath}/resources/js/board.js"></script>
<title>사용후기</title>
</head>
<body>
	<c:set var="loginUser" value="${sessionScope.loginUser }"/>
	<jsp:include page="../common/customer_menubar.jsp" />
	<br />
	<jsp:include page="../common/customer_menuList.jsp" />
	<div id="reviewOuter">
		<h2 style="text-align: left">사용후기 게시판</h2>
		<hr />
		<table id="reviewTable" align="center" style="min-height: 500px">
			<tr style="height:10%;">
				<th style="width:10%;">글번호</th>
				<th style="width:10%;">작성자</th>
				<th style="width:50%;">제목</th>
				<th style="width:20%;">작성일</th>
				<th style="width:10%;">조회수</th>
			</tr>
			<c:forEach var="b" items="${ list }">
				<tr class="tr">
					<td class="boardInfo"><c:out value="${ b.bNo }" /></td>
					<td class="boardInfo"><c:out value="${ b.writer }" /></td>
					<td class="boardInfo"><c:out value="${ b.bTitle }" /></td>
					<td class="boardInfo"><c:out value="${ b.createDate }" /></td>
					<td class="boardInfo"><c:out value="${ b.bCount }" /></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="5" style="height:10%;">		
					<div id="pagingArea" align="center">
						<c:if test="${ pi.currentPage <= 1 }">
							[이   전] &nbsp;
						</c:if>
						<c:if test="${ pi.currentPage > 1 }">
							<c:url var="blistBack" value="/selectList.bo">
								<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
							</c:url>
							<a href="${ blistBack }">[이   전]</a> &nbsp;
						</c:if>
						<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
							<c:if test="${ p eq pi.currentPage }">
								<font color="red" size="4"><b>[  ${ p }  ]</b></font>
							</c:if>
							<c:if test="${ p ne pi.currentPage }">
								<c:url var="blistCheck" value="/selectList.bo">
									<c:param name="currentPage" value="${ p }"/>
								</c:url>
								<a href="${ blistCheck }">${ p }</a>
							</c:if>
						</c:forEach>
				
						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="blistEnd" value="/selectList.bo">
								<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
							</c:url>
							<a href="${ blistEnd }">[다   음]</a>
						</c:if>
						<c:if test="${ pi.currentPage >= pi.maxPage}">
							[다   음]
						</c:if>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="3"><input type="search" id="searchArea" style="width: 400px" /> 
				<select name="searchCondition" id="searchCondition">
						<option value="writer">작성자</option>
						<option value="title">제목</option>
						<option value="content">내용</option>
				</select></td>
				<td><button type="button" onclick="search();" class="btn">검색하기</button>
				</td>
				<td><button type="button" onclick="goWrite();" class="btn">글 작성</button>
				</td>
			</tr>
		</table>
	</div>
	<jsp:include page="../common/customer_footer.jsp"/>
	<script>
		function goWrite(){
			var id = '${sessionScope.loginUser.userId}'+"";
			if(id==""){
				alert("로그인이 필요한 기능힙니다.");
				$("html").scrollTop(0);
			} else {
				location.href="goInsertBoard.bo?userId="+id;
			}
		}
		
		$('.tr').click(function(){
			var $target = $(this).children().eq(0).text();
			
			location.href="selectBoardOne.bo?target="+$target;
		});
	</script>
</body>
</html>