<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>니가그린구름그림</title>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
    <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Gothic+A1&display=swap" rel="stylesheet">
    
    <style>
     .outer{

 	 width:500px;
 	 margin-left:280px;
 	 font-family: 'Gothic A1', sans-serif;
 	}
	.col-md-4{
	 padding:20px;
	}
	.caption{
		text-align:left;
	}
    
    </style>
</head>
<body>
<jsp:include page="../../common/customer_menubar.jsp"/>
<jsp:include page="../../common/customer_menuList.jsp"/>

<div class="container">
<br>
  <h2>오픈예정 둘러보기</h2>
  <br>
  <div class="row">
  <c:forEach var="p" items="${ openlist }">
    <div class="col-md-4">
      <div class="thumbnail">
      	<a href="openExpectationDetail.bo?projectNo=${ p.projectNo }">
          <img src="/yc/resources/uploadFiles/<c:out value="${p.newFileName}"/>.png" alt="Lights" style="width:100%; height:70%;">
          <div class="caption">
            <h6>&nbsp;[<c:out value="${ p.projectShortTitle }"/>]<c:out value="${ p.projectTitle }"/></h6>
            <p>&nbsp;<c:out value="${ p.categoryDiv}"/></p>
            <p>&nbsp;<c:out value="${ p.companyName }"/></p>
          </div>
        </a>
      </div>
    </div>
    </c:forEach>
  </div>
</div>
<br>
  <div id="paginArea" align="center">
			<c:if test="${ pi.currentPage <= 1 }">
				이전 &emsp;
			</c:if>
			<c:if test="${ pi.currentPage > 1 }">
				<c:url var="blistBack" value="openExpectation.bo">
					<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
				</c:url>
				<a href="${ blistBack }">이전</a>&emsp;
			</c:if>
			
			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
				<c:if test="${ p eq pi.currentPage }">
					<font color="#6CC0FF" size="4"><b>[${ p }]</b></font>
				</c:if>
				<c:if test="${ p ne pi.currentPage }">
					<c:url var="blistCheck" value="openExpectation.bo">
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

<br><br>
<jsp:include page="../../common/customer_footer.jsp"/>
</body>
</html>