<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
<style>
button {
	cursor: pointer;
}
/* 탭 영역  */
body ul {
	margin: 0;
	padding: 0;
}

li {
	list-style-type: none;
}

a {
	text-decoration: none;
}

.tab-list1 {
	text-align: center;
}

.tab-list1 ul {
	display: inline-block;
	zoom: 1;
}

.tab-list1 ul li {
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

.title-header {
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
.funding-info {
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
</style>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<script>
	$(function(){
		$("html").css({"background-image":"linear-gradient('')", "background":"white"});
		
	})
</script>

<body>
	<jsp:include page="../common/customer_menubar.jsp"/>
	
	<div id="outer" style="background:white;">
	<!-- 리워드 헤더 이미지  -->
	<div class="reward-header">

		<p class="title-info">
			<em style="color: #5cdede;">소셜.캠페인</em> <strong>#몰카탐지카드몰가가드</strong>
			프로젝트
		</p>
		<h4 class="title-header">[소셜캠페인 참여1위]불법촬영 두려워마세요! 간편한 몰카방지카드 몰카드
		</h4>

	</div>
	<br />

	<div class="tab-list1">
		<ul class="tab-story">
			<li><a href="categoryOne.ca" class="tab-link">스토리</a></li>
			<li><a href="categoryOneFunding.ca" class="tab-link">펀딩안내</a></li>
			<li><a href="categoryOneNews.ca" class="tab-link">새소식</a></li>
			<li><a href="categoryOneCommunity.ca" class="tab-link">커뮤니티</a></li>
			<li><a href="categoryOneSupporter.ca" class="tab-link">서포터</a></li>
		</ul>
	</div>
	<hr />
	<div class="">
		
	</div>
	
	<div class="reward-body">
		<div class="dd">
		<div class="funding-info">
			<div >
				<h4>★반드시 확인하세요!</h4>
			</div>
			<div class="content" style="text-align: left;">
				<h4>
					리워드 발송이 <em style="color: #009595">2019.10.04</em> 까지 지연될 수 있습니다.
				</h4>

				<p style="color: rgba(0, 0, 0, .54);">펀딩 받은 후, 리워드를 제작할 수 있는
					크라우드펀딩의 특성과 생산 과정에서의 예상치 못한 상황으로 인하여 리워드 발송이 지연되거나 불가할 수 있습니다.</p>
				<h4>위 기간이 지나도 발송이 시작되지 않은 경우</h4>
				<p style="color: rgba(0, 0, 0, .54);">위 기간까지 배송 지연 시, '상세페이지 우측
					상단의 메이커 연락처/이메일주소'를 통해 메이커에게 환불 신청하실 수 있습니다. 펀딩금이 리워드 생산자금으로 사용되는
					크라우드펀딩 특성상 즉시 환불은 어려울 수 있으며 환불 일정 및 방법은 메이커가 새소식으로 공지드립니다.</p>
				<p>
					<strong style="color: red;">메이커와 연락이 되지 않는 경우 니가그린구름그림에
						문의해주세요!</strong>
				</p>
				<h4>이 프로젝트의 반품/환불 정책은 다음과 같습니다</h4>
				<p style="color: rgba(0, 0, 0, .54);">
					- 제품 하자로 인한 교환 / 수리시 발생 비용은 메이커 or 소비자 가 부담합니다.<br> - 리워드 수령
					n일 내 제품 하자로 인한 수리 문의는 makerEmail@mail.com으로 신청 가능합니다. (해당 기간이 경과했거나
					사용 흔적, 훼손에 대한 부분은 제외) <br>- 교환/환불/AS 요청자 정보와 서포터 정보의 일치 여부 확인
					후, 진행됩니다. <br> (확인 된 후 택배수거 접수가 됩니다) <br> <br> <strong
						style="color: red;">※교환/환불/AS 불가능한 경우 </strong><br> - 서포터의
					오더별 생산이 들어가므로 사이즈에 관련된 교환 불가 <br> - 서포터의 책임 있는 사유로 리워드가 멸실/훼손된
					경우 <br> (단지 확인을 위한 포장 훼손 제외) - 서포터의 사용/소비에 의해 리워드의 가치가 감소한 경우
					<br> - 시간 경과로 인해 재판매가 곤란할 정도로 리워드의 가치가 상실한 경우 <br> - 서포터의
					단순 변심 <br> - 메이커를 통한 교환/환불/AS 접수 절차 없이 임의로 반송한 경우 <br> -
					복제가 가능한 리워드의 포장을 훼손한 경우 <br> - 펀딩/판매/생산방식 특성상, 교환/반품 시, 메이커에게
					회복할 수 없는 손해가 <br> 발생한 경우 (펀딩마감 후, 개별 생산, 맞춤 제작 등)
				</p>
			</div>
			<br />
			<div class="content">
				<hr />
				<h4>펀딩 취소 및 리워드 옵션 변경, 배송지 변경 안내</h4>
				<p style="color: rgba(0, 0, 0, .54);">펀딩 결제는 예약 상태로 유지되다가, 펀딩
					마감일 다음 영업일 2020.01.01 17시에 모두 함께 진행됩니다. 결제 정보 변경은 결제가 진행되기 전까지 언제나
					가능합니다. 참여한 펀딩 정보 변경은 펀딩내역에서 진행해주세요. 마감일 이후에는 펀딩에 대한 리워드 제작 및 배송이
					시작되어, 취소와 더불어 배송지 및 리워드 옵션 변경은 2019.12.31 이후로는 불가합니다.</p>
				<br />
				<p></p>
				<hr />
			</div>
			<!-- 리워드 정보 제공 고시 -->
			<div>
				<h4>리워드 정보 제공 고시</h4>
				<!-- 테이블 div 영역 -->
				<div>
					<table border="1" style="text-align: center;">
						<tr>
							<td>리워드 상세정보</td>
							<td>식품</td>
						</tr>
						<tr>
							<td>식품의 유형</td>
							<td>차</td>
						</tr>
						<tr>
							<td>생산자 및 소재지</td>
							<td>충남 청야군 화성면 하메길 312-12번지</td>
						</tr>
						<tr>
							<td>제조 연월일,유툥기한 또는 품질 유지 기한</td>
							<td>출고일 당일제조, 냉장 5일, 냉동50일</td>
						</tr>
						<tr>
							<td>포장단위별 용량(중량),수량</td>
							<td>250g,500g 1.5g(각1개)</td>
						</tr>
						<tr>
							<td>원재료명 및 함량</td>
							<td>구기자 100%</td>
						</tr>
						<tr>
							<td>영양성분</td>
							<td>없음</td>
						</tr>
						<tr>
							<td>유전자변형식품에 해당하는 경우의 표시</td>
							<td>없음</td>
						</tr>
						<tr>
							<td>영유아식 또는 채중조절식품 등에 해당 하는 경유 표시광고 사전심의 필 유무 및 부작용 발생 가능성</td>
							<td>없음</td>
						</tr>
						<tr>
							<td>수입식품에 해당하는 경우"식품위생법에 따른 수입신고를 팔함"의 문구</td>
							<td>없음</td>
						</tr>
						<tr>
							<td>소비자상담 관련 전화번호</td>
							<td>1588-8282</td>
						</tr>

						<tr>
							<td>품명 및 모델명</td>
							<td>구기자기자</td>
						</tr>
						<tr>
							<td>메이커 소재지</td>
							<td>서울시 관악구 봉천동 행운1가길 21</td>
						</tr>
						<tr>
							<td>사업자등록번호</td>
							<td>123-45-67889</td>
						</tr>
						<tr>
							<td>사업자등록증 상의업종</td>
							<td>식가공</td>
						</tr>
						<tr>
							<td>
								<h4>↑ 리워드당 하나 나옴. 플젝 오픈시 1:1로 받아야 함</h4>
							</td>
						</tr>
					</table>
				</div>
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
				<h4>메이커 정보</h4>
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
					<h4 class="projectTitle">리워드 선택</h4>
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
								<li class="date">리워드 빌송 시작일 <em>2019 10월 초 (1~10일) 예정</em>
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
					<h4 class="projectTitle">리워드 선택</h4>
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
								<li class="date">리워드 빌송 시작일 <em>2019 10월 초 (1~10일) 예정</em>
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
					<h4 class="projectTitle">리워드 선택</h4>
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
								<li class="date">리워드 빌송 시작일 <em>2019 10월 초 (1~10일) 예정</em>
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
				<button onclick="showLyPop()" class="btn-declaration">신고하러
					가기</button>
			</div>
		</div>
		</div>
	
	<div style="width:100%; float:left;"><jsp:include page="../common/customer_footer.jsp"/></div>
	</div>
</body>
</html>