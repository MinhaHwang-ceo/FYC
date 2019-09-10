<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>니가그린구름그림</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>  
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.outer {
	width: 800px;
	
}

.circle {
	width: 60px;
	height: 60px;
	border-radius: 50%;
	background: black;
	font-size: 14px;
	text-align: center;
	line-height: 100px;
	border: 0;
	outline: 0;
	cursor: pointer;
}

.projectDiv {
   width: 70%;
   display: inline-block;
   margin-left: 300px;
}

.projects {
   margin: 50px 1%;
   width: 30%;
   display: inline-block;
}



.projects table {
	text-align: center;
	width: 100%;
	border: 1px solid white;
}

.table1 tr td {
	text-align: center;
	font-size: 12px;
}

td {
	padding: 0px 20px;
}

.td2 {
	padding: 0px 5px;
}

.projects table .projectTitles {
	font-size: 1.5em;
	font-weight: bold;
}

.projects table .projectCategories {
	text-align: left;
	color: gray;
}

.projects table img {
	width: 100%;
}

.title {
	font-size: 2.5em;
	font-weight: bold;
}

</style>



</head>
<body>
	<jsp:include page="../common/customer_menubar.jsp" />
	<jsp:include page="../common/customer_menuList.jsp" />
	
	<br><br>
	<div id="includeCategory">
	<jsp:include page="../common/projectCategory.jsp" />
	</div>
	<br>
	<div>

		<!-- 검색 div  -->
		<div class="projectDiv">
		<hr>
		<table>
			<tr>
				<td class="title"><c:out value="전체"/></td>
			</tr>
			<tr>
				<td class="td2"><select name="">
						<option value="pop">인기순</option>
						<option value="">마감임박순</option>
						<option value="">최신순</option>
						<option value="">펀딩액순</option>
				</select></td>
				<td class="td2"><select name="">
						<option value="pop">펀딩진행중</option>
						<option value="">펀딩종료</option>
						<option value="">오픈예정</option>
				</select></td>
			</tr>
		</table>
		<hr>
		<br>
	
		<!-- 프로젝트 출력 -->

	<table id="table1">
		<c:forEach var="p" items="${ list }">
			<tr>
				<td><c:out value="${ p.projectNo }"/></td>
				<td>&nbsp;</td>
				<td><a href="${contextPath}/openExpectationDetail.bo"><img alt="" src="/yc/resources/images/yc-logo3.png"></a></td>
				<td>&nbsp;</td>
				<td><c:out value="${ p.projectTitle }"/>
					<br>
					<c:out value="${ p.money }"/>원
				</td>
				<td><c:out value="${ p.companyName }"/></td>
				<td><c:out value="${ p.endDate }"/>에 마감</td>	
			</tr>
			
			<tr><td>&nbsp;</td></tr>
		</c:forEach>
	</table>
	
	
	
      <div class="projects">
         <table>
         <c:forEach var="p" items="${ list }">
            <tr>
               <td class="projectImgs"><a href="${ contextPath }/categoryOne.ca">
               <img src="${ contextPath }/resources/images/rank1.PNG" alt="" /></a>
               </td>
            </tr>
            
            <tr>
               <td class="projectTitles"><c:out value="${ p.projectNo }"/></td>
            </tr>
            
            <tr>
               <td class="projectCategories"><c:out value="gd" /></td>
            </tr>
            </c:forEach>
         </table>
      </div>
   
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	



	<br><br><br>	
	<!-- 페이징 -->
	<div id="paginArea" align="center">
			<c:if test="${ pi.currentPage <= 1 }">
				이전 &emsp;
			</c:if>
			<c:if test="${ pi.currentPage > 1 }">
				<c:url var="blistBack" value="category.bo">
					<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
				</c:url>
				<a href="${ blistBack }">이전</a>&emsp;
			</c:if>
			
			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
				<c:if test="${ p eq pi.currentPage }">
					<font color="#6CC0FF" size="4"><b>[${ p }]</b></font>
				</c:if>
				<c:if test="${ p ne pi.currentPage }">
					<c:url var="blistCheck" value="category.bo">
						<c:param name="currentPage" value="${ p }"/>
					</c:url>
					<a href="${ blistCheck }">${ p }</a>
				</c:if>
			</c:forEach>
			
			
			<c:if test="${ pi.currentPage < pi.maxPage }">
				<c:url var="blistEnd" value="category.bo">
					<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
				</c:url>
				<a href="${ blistEnd }">&emsp; 다음</a>
			</c:if>
			<c:if test="${ pi.currentPage >= pi.maxPage }">
				&emsp; 다음
			</c:if>
		</div>
		

		</div>
	
	
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="../common/customer_footer.jsp" />
</body>

</html>
