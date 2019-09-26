<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>니가그린구름그림</title>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
   margin: 0 auto;
}
.projects {
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
.caption {
   text-align: left;
}
.col-md-4 {
   padding: 40px;
}
</style>



</head>
<body>
	<jsp:include page="../common/customer_menubar.jsp" />
	<jsp:include page="../common/customer_menuList.jsp" />

	<br>
	<br>
	<div id="includeCategory">
		<jsp:include page="../common/projectCategory.jsp" />
	</div>
	<br>
	<div style="text-align:center;">
		<!-- 검색 div  -->
		<div class="projectDiv">
		<hr>
		<table>
			<tr>
				<td class="title"><c:out value="전체"/></td>
			</tr>
			<tr>
				<td class="td2"><select name="">
						<option value="">최신순</option>
						<option value="">마감임박순</option>
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
<div class="row">
  <c:forEach var="p" items="${ list }">
    <div class="col-md-4">
      <div class="thumbnail">
         <input type="hidden" value='<c:out value="${ p.projectNo }"></c:out>'>
         <input type="hidden" value="${ sessionScope.loginUser }">
         
         <% int userNo = 123;%> 
         
          <c:if test="${loginUser.userNo eq null }">
             <a href="categoryOne.ca?projectNo=${ p.projectNo }&userNo=<%=userNo%>&endDate=${p.endDate}" >
               <img src="/yc/resources/uploadFiles/<c:out value="${p.newFileName}"/>"  style="width:100%; height:75%;"/>
                <div class="caption">
                  <h6>[<c:out value="${ p.projectNo }"/>]&emsp;<c:out value="${ p.projectTitle }"/></h6>
                  <p>목표금액 : <c:out value="${ p.money }"/>원 <br>이 리워드는 <c:out value="${ p.endDate }"/> 에 마감됩니다</p>
                </div>
              </a>      
         </c:if>
         
         <c:if test="${loginUser.userNo ne null }">
             <a href="categoryOne.ca?projectNo=${ p.projectNo }&userNo=${loginUser.userNo}&endDate=${p.endDate}" >
               <img src="/yc/resources/uploadFiles/<c:out value="${p.newFileName}"/>" style="width:100%; height:75%;">
                <div class="caption">
                  <h6>[<c:out value="${ p.projectNo }"/>]&emsp;<c:out value="${ p.projectTitle }"/></h6>
                     <p>목표금액 : <c:out value="${ p.money }"/>원 <br>이 리워드는 <c:out value="${ p.endDate }"/> 에 마감됩니다</p>
                  </div>
            </a>
         </c:if>
        
      </div>
    </div>
    </c:forEach>
  </div>
</div>

   <br><br><br>   
   <!-- 페이징 -->
   <div id="paginArea" align="center">
         <c:if test="${ pi.currentPage <= 1 }">
            이전 &emsp;
         </c:if>
         <c:if test="${ pi.currentPage > 1 }">
            <c:url var="blistBack" value="category.bo">
               <c:param name="currentPage" value="${ pi.currentPage - 1 }" />
            </c:url>
            <a href="${ blistBack }">이전</a>
            &emsp;
         </c:if>

         <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
            <c:if test="${ p eq pi.currentPage }">
               <font color="#6CC0FF" size="4"><b>[${ p }]</b></font>
            </c:if>
            <c:if test="${ p ne pi.currentPage }">
               <c:url var="blistCheck" value="category.bo">
                  <c:param name="currentPage" value="${ p }" />
               </c:url>
               <a href="${ blistCheck }">${ p }</a>
            </c:if>
         </c:forEach>

         <c:if test="${ pi.currentPage < pi.maxPage }">
            <c:url var="blistEnd" value="category.bo">
               <c:param name="currentPage" value="${ pi.currentPage + 1 }" />
            </c:url>
            <a href="${ blistEnd }">&emsp; 다음</a>
         </c:if>
         <c:if test="${ pi.currentPage >= pi.maxPage }">
            &emsp; 다음
         </c:if>
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