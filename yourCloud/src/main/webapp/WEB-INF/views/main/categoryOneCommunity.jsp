<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
.content-news {
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
	width: 32%;
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

.btn-like {
	width: 28%;
	border: 1px solid skyblue;
	background: white;
	height: 34.6px;
}

.btn-meker-question {
	border: 1px solid rgba(0, 0, 0, 0.15);
	border-radius: 3px;
	background-color: #fff;
	cursor: pointer;
	padding: 0 1.41176em;
	height: 48px;
	vertical-align: middle;
	line-height: 1;
	color: rgba(0, 0, 0, 0.54);
	font-size: 17px;
	width: 90%;
	margin: 0 auto;
	text-align: center;
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

.btn-declaration {
	width: 100%;
	height: 40px;
	background: rgb(231, 76, 60);
	border: 0;
	color: white;
}

.reward-header {
	text-align: center;
	border: 1px solid black;
	height: -1px;
	top: -20px;
	background-size: cover;
	background: #001328 !important;
	color: white;
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
.CommentUserWrapper_avatar.commentUserWrapper {
	position: absolute;
	top: 0;
	left: 0;
	
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
}
.wz.button.primary, .wz.button.primary-outline {
    border-color: #00c4c4;
}
.wz.button.dense {
    padding: 0 16px;
    height: 36px;
    line-height: 34px;
    font-size: 15px;
}
.wz.button {
    display: inline-block;
    padding-top: .07em;
    text-decoration: none;
}

</style>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<script>
	$(function(){
		$("html").css({"background-image":"linear-gradient('')", "background":"white"});
		
	})
</script>

	<jsp:include page="../common/customer_menubar.jsp" />

	<div id="outer" style="background: white;">
		<!-- 리워드 헤더 이미지  -->
		<div class="reward-header">

			<p class="title-info">
				<em style="color: #5cdede;">소셜.캠페인</em> <strong>#몰카탐지카드몰가가드</strong>
				프로젝트
			</p>
			<h2 class="title-header">[소셜캠페인 참여1위]불법촬영 두려워마세요! 간편한 몰카방지카드 몰카드
			</h2>

		</div>
		<br />

		<div class="tab-list">
			<ul class="tab-story">
				<li><a href="categoryOne.ca" class="tab-link">스토리</a></li>
				<li><a href="categoryOneFunding.ca" class="tab-link">펀딩안내</a></li>
				<li><a href="categoryOneNews.ca" class="tab-link">새소식</a></li>
				<li><a href="categoryOneCommunity.ca" class="tab-link">커뮤니티</a></li>
				<li><a href="categoryOneSupporter.ca" class="tab-link">서포터</a></li>
			</ul>
		</div>
		<hr />
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

							<div class="funding-FAQ">
								<form action="">
									<div>
										<h4>잠깐! 아직도 펀딩하는 법을 모르시나요?</h4>
									</div>
									<br />
									<table align="center" style="width: 99.8%; text-align: center;"
										border="1">
										<tr>
											<th>FAQ</th>
										</tr>
										<tr>
											<td>펀딩 했는데 결제가 진행되지 않아요!</td>
										</tr>
										<tr>
											<td>결제 실패 알림을 받았어요. 어떻게 해야하나요?</td>
										</tr>
										<tr>
											<td>신청한 카드가 아닌 다른 카드로 결제하고 싶어요.</td>
										</tr>
										<tr>
											<td>배송지, 리워드를 변경하고 싶어요!.</td>
										</tr>
									</table>
								</form>
							</div>
							<hr />

							<br />
							<br />

							<!-- 리워드 배송등 펀딩ㅇ -->
							<div class="CommentTitle">
								<div>
									<h4>응원 * 의견</h4>
								</div>

								<h6>펀딩 종료 전 남긴 응원, 의견 글입니다.</h6>
								<br />
								<div>
									<button class="btn-writing">글 남기기</button>
								</div>

								<br>
								<div class="community-list">
									<div class="commentUserWrapper">
										<div class="user-profile">
											<span> <a href=""><img src="${ contextPath }/resources/images/tit.PNG" style="border-radius: 50%; width: 46px; height: 46px;" /></a>
											<strong>서무권</strong>
											</span>
											
											<span>
												작성일 | 2019.07.12
											</span>
											<!-- 댓글 내용 -->
											<br /><br />
											<div>
												<div style="padding-left: 47px;">
													딸과 함꼐 해보고 싶어 펀딩했는데 벌써부터 기다려집니다 주신 힌트도 기다리면서 <br>딸과 함게 풀어보려합니다 딸과 돈독해질 보낼시간을 고대하며 지지서명합니다.
												</div>
											</div>
										</div>
										<!-- 답글 버튼 카운트 -->
										<br />
										<div align="right" style="">
											<button class="answer">답글 남기기 <span></span></button>
										</div>
										<div class="comentReplyListController">
											<div class="commentReplyList">
												<div class="commentReplyForm">
													<div class="commentUserWrapper">
														<table>
														<tr>
															<td colspan="4">
																
															<div class="CommentUserWrapper_avatar">
															
																<a href="">
																	<span class="Avatar_wrap" style="width: 36ppx; height: 36px;">
																		<span class="Avatar_picture">
																			<img  class="Avatar_picture" style="border-radius: 50%; width: 36px; height: 36px;" src="${ contextPath }/resources/images/tit.PNG" alt="" />
																		</span>
																	</span>
																</a>
															</div>
															</td>
															
															<td>
														<div class="CommentUserWrapper_main__3QYIJ">
															<div class="CommunityCommentReplyWriteForm_writeForm__31Tsw">
																<form action="CommentForm_container__2p3PN CommentForm_fold__2E1qU">
																		<div class="wz input CommentForm_textarea__GNfAn">
																			<textarea placeholder="답글을 입력하세요"
																				maxlength="2000" maxheight="400" style="overflow-y: hidden; resize: nono; height: 102px; width: 86%;">
																				
																				
																			</textarea>
																			
																		</div>
																		<div class="CommentForm_bottom__13mlK">
																			<!-- 댓글카운터  -->
																			<span class="CommentForm_count__2PsDA">
																			
																			</span>
																				<button class="wz button CommentForm_button__fIXjR dense primary">등록</button>
																				
																				
																		</div>
																</form>
															</div>
														</div>
																
															</td>
															
														
														<!-- text창 -->
														</tr>
														</table>
													</div>
													
												</div>
												
												
												
											</div>
										</div>
									</div>
								</div>


							</div>
							<!-- 최상위 div -->

						</div>


					</div>
				</div>

				<!-- 오른쪽 영역 -->
				<div class="opener-info">
					<div class=state-box>
						<p class="remin-day" style="font-size: 28px;">26일 남음</p>
						<hr />
						<strong style="font-size: 24px;">100</strong> %달성
						<p class="total-money" style="font-size: 24px;">
							<strong>100,000,000</strong> 원 펀딩
						</p>
						<p class="total-supporter" style="font-size: 24px;">
							<strong>619</strong> 명의 서포터
						</p>
					</div>
					<div class="">
						<button onclick="backMoney" class="btn-funding">펀딩하기</button>
					</div>
					<br />
					<div class=btn-wrap>
						<div class="btn-wrap-flex">
							<button class="btn-like">
								<i></i> 100
							</button>
							<button class="btn-question">문의</button>

							<button class="btn-share">공유하기</button>
						</div>
					</div>
					<hr />
					<div class="project-meker-info">
						<h3>메이커 정보</h3>
						<div class="maker-box">
							<table style="border: 1px solid black; width: 100%;">
								<tr>
									<td><button
											style="border: 1px solid black; border-radius: 50%; background: white; width: 100px; height: 100px; margin-left: 10px;"></button></td>
									<td style="">진수네 농산</td>
								</tr>
								<tr>
									<td><br /></td>
								</tr>
								<tr>
									<td colspan="2">메이커 평점 : 4.7
										<hr />
									</td>
								</tr>

								<tr>
									<td colspan="2" align="center">
										<button class="btn-meker-question">메이커에게 문의하기</button>
									</td>
								</tr>
								<tr>
									<td><br /></td>
								</tr>

								<tr>
									<td colspan="2">
										<p style="font-size: 12x;">메이커 연락처 : 010-4231-5232</p>

									</td>
								</tr>

							</table>
						</div>
					</div>
					<br />
					<div class="moveRewards">
						<div class="wd-gift" style="border: 1px solid red;">
							<h3 class="projectTitle">리워드 선택</h3>
							<button class="reward-list">
								<div class="reward-info">
									<!-- 	<dl>
								<dt>
									 78,200원 펀딩
								</dt>
								<dd > -->
									<p>[슈퍼얼리버드] 싱글팩 (30% 혜택)</p>
									<p>
										남성용 / 씬타입(단목) Thin. / 4켤레 (4가지 칼라. 각 1켤레씩) <br /> [블랙&레드] ,
										[화이트&블랙] , [블루&화이트] , [그레이&화이트]
									</p>
									<!-- 	</dd>
							</dl> -->
									<ul class="data-info">
										<li class="shipping">배송비
											<p>25,500원</p>
										</li>
										<li class="date">리워드 빌송 시작일 <em>2019 10월 초 (1~10일)
												예정</em>
										</li>
									</ul>
									<p class="reward-qty">
										제한수량 <strong>12000</strong> 개 <em>현재 1144개 남음</em>
									</p>
									<p class="reward-soldcount">
										총 <strong>76</strong> 개 펀딩 완료
									</p>
								</div>
							</button>
						</div>
					</div>
					<div class="moveRewards">
						<div class="wd-gift" style="border: 1px solid red;">
							<h3 class="projectTitle">리워드 선택</h3>
							<button class="reward-list">
								<div class="reward-info">
									<!-- 	<dl>
								<dt>
									 78,200원 펀딩
								</dt>
								<dd > -->
									<p>[슈퍼얼리버드] 싱글팩 (30% 혜택)</p>
									<p>
										남성용 / 씬타입(단목) Thin. / 4켤레 (4가지 칼라. 각 1켤레씩) <br /> [블랙&레드] ,
										[화이트&블랙] , [블루&화이트] , [그레이&화이트]
									</p>
									<!-- 	</dd>
							</dl> -->
									<ul class="data-info">
										<li class="shipping">배송비
											<p>25,500원</p>
										</li>
										<li class="date">리워드 빌송 시작일 <em>2019 10월 초 (1~10일)
												예정</em>
										</li>
									</ul>
									<p class="reward-qty">
										제한수량 <strong>12000</strong> 개 <em>현재 1144개 남음</em>
									</p>
									<p class="reward-soldcount">
										총 <strong>76</strong> 개 펀딩 완료
									</p>
								</div>
							</button>
						</div>
					</div>

					<!-- 신고 영역 -->
					<div style="border: 1px solid blue; font-size: 14px;">
						<p class="">신고하기란?</p>
						<p>
							해당 프로젝트에 허위내용 및 지적재산권 <br /> 을 침해하는 내용이 있다면 제보해주세요.
						</p>
						<button onclick="showLyPop()" class="btn-declaration">
							신고하러 가기</button>
					</div>
				</div>
			</div>

			<div style="width: 100%; float: left;"><jsp:include
					page="../common/customer_footer.jsp" /></div>
		</div>
	</div>


</body>
</html>