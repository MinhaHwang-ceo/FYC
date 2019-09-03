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
.reward-header{
	text-align:center;
    border: 1px solid black;
    height:-1px;
    top: -20px;
    background-size: cover;
    background: #001328!important;
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
.content-supporter {
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
	
	border:1px solid rgba(0, 0, 0, 0.15);
	border-radius: 3px;
	background-color: #fff;
	cursor: pointer;
	padding: 0 1.41176em;
	height: 48px;
 	vertical-align: middle;
 	line-height: 1;
 	color: rgba(0, 0, 0, 0.54);
 	font-size: 17px;
 	width:90%;
 	margin: 0 auto;
 	text-align: center;
	
}
.projectTitle{
	margin-bottom: 10px;
    font-weight: 500;
    font-size: 15px;
    color: #777;
}.reward-list{
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

.reward-header{
	text-align:center;
    border: 1px solid black;
    height:-1px;
    top: -20px;
    background-size: cover;
    background: #001328!important;
    color: white;
   }
.RewardItem {
	border-bottom: 1px solid #e6eaed;
	min-height: 46px;
}
.avatar-wrap .RewardItem {
	position: absolute;
	background-repeat: no-repeat;
	background-size: cover;
	
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">

	$(function(){
		$("html").css({"background-image":"linear-gradient('')", "background":"white"});
		
	})
	</script>

	<!-- 리워드 헤더 이미지  -->
	<div class="reward-header">
		
		<p class="title-info">
			<em style="color:#5cdede;">소셜.캠페인</em>
			<strong>#몰카탐지카드몰가가드</strong>
			프로젝트
		</p>
		<h2 class="title-header">
			[소셜캠페인 참여1위]불법촬영 두려워마세요! 간편한 몰카방지카드 몰카드
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
			<div class="content-supporter">
				<p style="font-size: 20px;">
					현재 이 프로젝트의 서포터즈 수는
					<br />
					<strong style="color: #00c4c4">178명</strong>
					입니다.
				</p>
				<br /><br /><br>
				<div class="rewardSupporterList">	
					<div class="RewardItem" style="">
					<table style="width: 100%;">
							<tr>
								<td align="center">
									<span>
										<img src="${ contextPath }/resources/images/tit.PNG" style="border-radius: 50%; width: 46px; height: 46px;"/>
									</span>
								</td>
								<td>
									<p>
										<strong>이건희님이  5,8500원 펀딩으로 참여 하셨습니다.</strong>
									</p>
								</td>
							</tr>
								
								<tr >
									<td style="border-bottom: 1px solid #e6eaed;" colspan="2"><hr /></td>
								</tr>
						</table>
					</div>
					
					<div class="RewardItem" style="">
					<table style="width: 100%;">
							<tr>
								<td align="center">
									<span>
										<img src="${ contextPath }/resources/images/tit.PNG" style="border-radius: 50%; width: 46px; height: 46px;"/>
									</span>
								</td>
								<td>
									<p>
										<strong>이건희님이  5,8500원 펀딩으로 참여 하셨습니다.</strong>
									</p>
								</td>
							</tr>
								
								<tr >
									<td style="border-bottom: 1px solid #e6eaed;" colspan="2"><hr /></td>
								</tr>
						</table>
					</div>
					
					<div class="RewardItem" style="">
					<table style="width: 100%;">
							<tr>
								<td align="center">
									<span>
										<img src="${ contextPath }/resources/images/tit.PNG" style="border-radius: 50%; width: 46px; height: 46px;"/>
									</span>
								</td>
								<td>
									<p>
										<strong>이건희님이  5,8500원 펀딩으로 참여 하셨습니다.</strong>
									</p>
								</td>
							</tr>
								
								<tr >
									<td style="border-bottom: 1px solid #e6eaed;" colspan="2"><hr /></td>
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
								<p style="font-size: 12x;">
									메이커 연락처 : 010-4231-5232
				
								</p>
								
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
										남성용 / 씬타입(단목) Thin. / 4켤레 (4가지 칼라. 각 1켤레씩)
										<br />
										[블랙&레드] , [화이트&블랙] , [블루&화이트] , [그레이&화이트]
									</p>
							<!-- 	</dd>
							</dl> -->
								<ul class="data-info">
									<li class="shipping">
										배송비
										<p>25,500원</p>
									</li>
									<li class="date">
										리워드 빌송 시작일
									<em>2019 10월 초 (1~10일) 예정</em>
									</li>
								</ul>
								<p class="reward-qty">
									제한수량
									<strong>12000</strong>
									개
									<em>현재 1144개 남음</em>
								</p>
								<p class="reward-soldcount">
									총
									<strong>76</strong>
									개 펀딩 완료
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
										남성용 / 씬타입(단목) Thin. / 4켤레 (4가지 칼라. 각 1켤레씩)
										<br />
										[블랙&레드] , [화이트&블랙] , [블루&화이트] , [그레이&화이트]
									</p>
							<!-- 	</dd>
							</dl> -->
								<ul class="data-info">
									<li class="shipping">
										배송비
										<p>25,500원</p>
									</li>
									<li class="date">
										리워드 빌송 시작일
									<em>2019 10월 초 (1~10일) 예정</em>
									</li>
								</ul>
								<p class="reward-qty">
									제한수량
									<strong>12000</strong>
									개
									<em>현재 1144개 남음</em>
								</p>
								<p class="reward-soldcount">
									총
									<strong>76</strong>
									개 펀딩 완료
								</p>
						</div>
					</button>
				</div>	
			</div>
			
			
			
			
			
			
			
			
			
			
			<!-- 신고 영역 -->
			<div style="border:1px solid blue; font-size: 14px;">
				<p class="">
					신고하기란?
				</p>
				<p>
					해당 프로젝트에 허위내용 및 지적재산권
					<br />
					을 침해하는 내용이 있다면 제보해주세요.
				</p>
				<button onclick="showLyPop()" class="btn-declaration"  >
					신고하러 가기
					
				</button>
			</div>
			
			












		
		</div>
		
		
		
	</div>

</body>
</html>