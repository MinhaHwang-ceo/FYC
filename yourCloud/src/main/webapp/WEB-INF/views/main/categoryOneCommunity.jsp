<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>	
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
.reward-header {
	text-align: center;
	border: 1px solid black;
	height: -1px;
	top: -20px;
	background-size: cover;
	background: #001328 !important;
	color: white;
}
/* div영역 넘으면 줄 바꿈  */
* {
	word-break: break-all;
}


.dd {
	width: 75%;
	margin: 0 auto;
}
/* 컨텐츠 영역  */
.content-news {
	float: left;
	margin-right: 40px;
	margin: 0 auto;
	margin-right: 18px;
}
.projectTitle {
	margin-bottom: 10px;
	font-weight: 500;
	font-size: 15px;
	color: #777;
}

.reward-list {
	position: relative;
	width: 100%;
	margin-bottom: 20px;
	/*  background: #d19cfa; */
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

/* 커뮤니티 영역  */
.faqMassageBox {
	padding-left: 36px;
	padding: 16px;
	line-height: 1.38;
	color: rgba(0, 0, 0, 0.54);
	background: #f2f3f4;
	width: 99.9%;
}
/* 글쓰기 버튼  */
.btn-writing {
	background-color: #90949c;
	color: #fff;
	border: 0;
	height: 48px;
	width: 37%;
}
/* 답글버튼 카운트 */
.answer {
	padding: 0 10px;
	height: 28px;
	font-size: 13px;
	border: 1px solid rgba(0,0,0,.15);
}
/* 댓글 폼  */
.comentReplyListController {
	padding-left: 52px;
	border:  1px solid red;
}
.commentReplyList {
	background: #f5f7fa;
	
	padding: 16px;
	border: 1px solid blue;
}
.commentReplyForm {
	padding-top: 16px;
	padding-bottom: 16px;
	/* height: 88%; */
	border: 3px solid purple;
}
.commentUserWrapper {
	position: relative;
	padding: 0 0 0 56px;
	border: 2px solid green;
}
.CommentUserWrapper_avatar .commentUserWrapper {
	position: absolute;
	top: 0;
	left: 0;
	
}
.CommentUserWrapper_avatar {
    box-sizing: border-box;
    position: absolute;
    margin-left: -45px;
   
}
.Avatar_wrap {
	display: inline-block;
	position: relative;
	border-radius: 50%;
	vertical-align: middle;
	
}
.Avatar_picture.Avatar_wrap {
	width: 100%;
	height: 100%;
	
	
}
/* text창 */
.CommentUserWrapper_main__3QYIJ .commentUserWrapper {
	position: relative;
	
	
}
.CommunityCommentReplyWriteForm_writeForm__31Tsw .commentReplyForm{
	position: relative;
	
}
/* form  */
.CommentForm_container__2p3PN .CommentForm_fold__2E1qU {
	height: 36px;
	
}
.CommentForm_container__2p3PN{
	display: block;
	position: relative;
	overflow: hidden;
	
}
.wz input {
	display: block;
	position: relative;
	font-size: 17px;
	border: 5px solid red;
}
.CommentForm_textarea__GNfAn {
	
}

/* 입력 첫음  */
.CommentForm_container__2p3PN.CommentForm_fold__2E1qU .CommentForm_textarea__GNfAn>textarea {
    padding: 8px 12px 0;
    height: 36px;
    overflow: hidden;
}
.CommunityCommentReplyWriteForm_container__1my83 .CommunityCommentReplyWriteForm_writeForm__31Tsw textarea {
    min-height: 36px;
}
.CommentForm_container__2p3PN .CommentForm_textarea__GNfAn>textarea {
	line-height: 20px;
    font-size: 15px;
    font-weight: 400;
}
/*  두번째 */
.CommunityCommentReplyWriteForm_container__1my83 .CommunityCommentReplyWriteForm_writeForm__31Tsw textarea {
    min-height: 36px;
}
.CommentForm_container__2p3PN .CommentForm_textarea__GNfAn>textarea {
    padding-bottom: 48px;
    line-height: 20px;
    font-size: 15px;
    font-weight: 400;
    }
.CommentForm_container__2p3PN .CommentForm_bottom__13mlK {
    position: absolute;
    right: 1px;
    bottom: 1px;
    left: 1px;
    background: #fff;
    text-align: right;
    pointer-events: none;
}

.CommentForm_container__2p3PN .CommentForm_bottom__13mlK .CommentForm_button__fIXjR, .CommentForm_container__2p3PN .CommentForm_bottom__13mlK .CommentForm_count__2PsDA {
    pointer-events: auto;
}
.CommentForm_container__2p3PN .CommentForm_bottom__13mlK .CommentForm_button__fIXjR {
    margin-right: -1px;
    margin-bottom: -1px;
}
.CommentForm_container__2p3PN .CommentForm_bottom__13mlK .CommentForm_button__fIXjR, .CommentForm_container__2p3PN .CommentForm_bottom__13mlK .CommentForm_count__2PsDA {
    pointer-events: auto;
}
.wz.button.primary {
    background-color: #00c4c4;
    color: #fff;
    border: 1px solid #00c4c4;
    margin-left: 451px;
}

.wz.button.dense {
    padding: 0 16px;
    height: 36px;
    line-height: 34px;
    font-size: 15px;
}
#btn1{
	border: none;
	background: none;	
}
</style>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>니가 그린 구름 그림</title>
</head>
<body>

	<script>
	$(function(){
		$("html").css({"background-image":"linear-gradient('')", "background":"white"});
		
	})
</script>

	<jsp:include page="../common/customer_menubar.jsp" />
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
			<li><a href="categoryOneFunding.ca?projectNo=${detail.projectNo}" class="tab-link">펀딩안내</a></li>
			<li><a href="categoryOneNews.ca?projectNo=${detail.projectNo }" class="tab-link">새소식</a></li>
			<li><a href="#" class="tab-link">커뮤니티</a></li>
			<li><a href="categoryOneSupporter.ca?projectNo=${detail.projectNo }" class="tab-link">서포터</a></li>
		</ul>
	</div><hr>
		<br><br>
		<div class="reward-body">
			<!-- 가운데 내용 -->
			<div class="dd">
				<div class="content-news">
					<div class="retingFaq">
						<!-- 최상위 div -->
						<div>
							<div class="wrapper">
								<div class="faqMassageBox">
									<div class="faqMassageTop">
										<h6>커뮤니티 이용 유의사항</h6>
									</div>
									<p style="color: rgba(0, 0, 0, 0.54);">본 프로젝트와 무관한 글, 광고성,
										욕설, 비방, 도배 등의 글은 예고없이 삭제 등 조치가 취해질 수 있으며, 해당 내용으로 인해 메이커, 서포터,
										제3자에게 피해가 발생되지 않도록 유의하시기 바랍니다. 악의적 댓글 작성자는 명예훼손, 모욕 등으로 법적 책임을
										부담하게 될 수 있습니다.</p>
								</div>
							</div>
							<br />
							<br>

	
<div class="container">
  <h5>니가 그린 구름 그림에서 펀딩하는 방법이 궁금하다면?</h5><br>
  <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h6 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">1. 펀딩 했어요. 결제는 언제, 어떻게 진행되나요? &emsp; + </a>
        </h6>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">펀딩기간 중에는 결제 예약 상태이며, 프로젝트 종료 후 다음 1 영업일 정해진 시간에 결제가 진행됩니다. 이때, 결제 실패된 건에 한하여 종료일+4영업일동안 매일 5시에 결제가 진행됩니다. (펀딩 종료일+4영업일 오후 5시 4차 최종 결제 진행).</div>
      </div>
    </div><br>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h6 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">2. 결제 실패 알림을 받았어요. 어떻게 해야하나요? &emsp; +</a>
        </h6>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body">카드 잔고 부족이나 한도 초과, 거래 정지된 카드인 경우 결제가 진행되지 않습니다. 최종 결제일 16시 30분 전까지 다른 카드로 결제 정보를 변경해주세요. 최종 결제일까지 매 영업일 5시마다 결제가 진행됩니다.
		・ 결제정보 변경은 로그인 - [나의 리워드] - [펀딩 내역] - [참여 프로젝트]에서 결제 정보를 변경할 수 있습니다.
		・ 반드시 참여한 프로젝트 펀딩 상세 내역 페이지에서 결제 정보를 변경해주세요. 나의 리워드 - 간편결제 정보 변경하면 해당 카드로 결제가 진행되지 않습니다!</div>
      </div><br>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h6 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">3. 카드 결제가 진행된 후, 다른 카드로 변경할 수 있나요? &emsp; +</a>
        </h6>
      </div>
      <div id="collapse3" class="panel-collapse collapse">
        <div class="panel-body">프로젝트 진행 중에는 [나의 리워드] - [펀딩내역]에서 직접 변경이 가능합니다.
			펀딩이 종료된 이후에는 직접 변경이 불가능하니, 메이커에게 문의하기를 통해 문의해주세요.</div>
      </div>
    </div>
  </div> 
</div>
    						<br />
							<br />

		<div>
			
			<h6>응원 또는 의견 남기기</h6><br>
			
			<c:if test="${ !empty sessionScope.loginUser }"> 
			<button type="button" class="btn btn-info" style="width:200px; margin:0 auto;"
			onclick="window.open('replyProject.ca?projectNo=${detail.projectNo}','_blank', 'width=550,height=580');return false;" 
			>댓글 남기기</button>
			</c:if>
			
			<c:if test="${ empty sessionScope.loginUser }">  
			<button type="button" class="btn btn-info" style="width:200px; margin:0 auto;" 
			onclick="return false;" 
			>댓글 남기기</button>
			</c:if>
		
		
		<br><br><br>	
		
  <div class="container">
  <input class="form-control" id="myInput" type="text" placeholder="검색 ">
  <br>
  <table class="table table-bordered">
    <thead>
      <tr>
        <th style="text-align:center;">NO</th>
        <th style="text-align:center;">이름</th>
        <th>의견 내용</th>
        <th></th>
        <th></th>
      </tr>
    </thead>
  <c:forEach var="reward" items="${reply}">
    <tbody id="myTable">
      <tr>
      	<c:if test="${loginUser.userNo eq reward.userNo }">
      	   	<td width="100"  style="text-align:center;"><c:out value="${reward.replyNo }"/></td>
       		<td width="150"><c:out value="${reward.userName }"></c:out></td>
       		<td width="700"><c:out value="${reward.replyComment }"/></td>    
       		<td><button id="btn1">수정</button></td>
        	<td><button id="btn1" class="replyNo" value="${reward.replyNo}" onclick="deleteReply();">삭제</button></td>
      	</c:if>
      	
      	<c:if test="${loginUser.userNo ne reward.userNo }">
      	    <td width="100"  style="text-align:center;"><c:out value="${reward.replyNo }"/></td>
       		<td width="150"><c:out value="${reward.userName }"></c:out></td>
       		<td width="700"><c:out value="${reward.replyComment }"/></td>    
       		<td></td>
       		<td></td>
      	</c:if>
    
      	
      </tr>
  </c:forEach>
    </tbody>
  </table>
</div>
</div>
<script>

function deleteReply(){
	
    var replyNo = $(".replyNo").val();
	console.log(replyNo);
	
	
	$.ajax({
		cache:false,
		url : "deleteReply.me",
		data : {replyNo : replyNo},
		success : function(data){
			alert("댓글이 삭제되었습니다");
			location.reload();
		},error : function(data){
			console.log(data);
			alert("댓글이 삭제되었습니다");
			location.reload();
		}
	})
	
	
}

</script>


<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});




</script>
		
		</div>						

			<br><br>
		</div>
	</div>

	
</div>

<div style="width: 100%; float: left;"><jsp:include page="../common/customer_footer.jsp" /></div>
</body>
</html>