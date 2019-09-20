<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩하기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">

<link rel="stylesheet" href="/yc/resources/css/animate.css">
<link href="/yc/resources/css/main.css" rel="stylesheet" />
<style>
</style>
</head>
<body>
	<jsp:include page="../common/customer_menubar.jsp" />
	<jsp:include page="../common/customer_menuList.jsp" />
	<div id="outer" style="width: 60%; margin: 0 auto;">
		<h2>니가 그린 구름 그림 리워드란?</h2>
		<h4>펀딩한 서포터에게 제품이나 서비스를 제공하는 서비스입니다.</h4>
		<h4>#현명한 창업가 #트렌디한 마케터 #슬기로운 디자이너</h4>
		<hr>
		<div>
			<div class="container">
				<h2>펀딩을 하는 이유는 무엇일까요?</h2>
				<p>제품 제작 비용을 미리 확보할 수 있습니다.</p>
				<p>내 브랜드를 사랑해줄 팬을 모을 수 있습니다.</p>
				<p>고객의 니즈를 일찍 파악할 수 있습니다.</p>
				<p>펀딩 후, 외부에서 연락이 많이 왔습니다.</p>

				<div class="row">
					<h3>펀딩 후기</h3>
					<br>
					<div class="col-md-4">
						<div class="thumbnail">
							<a href="/yc/resources/images/banner.png" target="_blank"> <img
								src="/yc/resources/images/banner.png" alt="Lights"
								style="width: 100%">
								<div class="caption">
									<p>
										제품 하나를 개발하는 데에 많은 시간과 <br> 비용이 들어요 초기 양산 비용을 확보 <br>
										하는데 구름 펀딩에게 큰 도울을 받았어요.
									</p>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-4">
						<div class="thumbnail">
							<a href="/yc/resources/images/banner.png" target="_blank"> <img
								src="/yc/resources/images/banner.png" alt="Nature"
								style="width: 100%">
								<div class="caption">
									<p>
										브랜드의 생각을 알리고, 공감해줄 분들을 만나고 싶었어요. 구름에서 만난 슈룹의 <br> 팬들이
										자연스레 우리의 생각,가치를 더 <br> 널리 알려주실거라 생각했습니다.
									</p>
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<a href="/yc/resources/images/banner.png" target="_blank"> <img
							src="/yc/resources/images/banner.png" alt="Fjords"
							style="width: 100%">
							<div class="caption">
								<p>
									본격적으로 생산에 돌입하기 전, 고객의 <br> 니즈를 파악하고, 데이터를 확보할 수 있다는게 구름펀딩의
									가장 큰 장점이에요.
								</p>
							</div>
						</a>
					</div>
				</div>
			</div>

			<div class="row">
				<h4>나도 할 수 있을까 고민이세요?</h4>
				<h3>&nbsp;&nbsp;구름 펀딩은 모두에게 열려있습니다~</h3>
				<h3>&nbsp;&nbsp;스타트업, 개인부터 기업까지</h3>
				<div class="col-md-4">
					<div class="thumbnail">
						<a href="/yc/resources/images/chi.PNG" target="_blank"> <img
							src="/yc/resources/images/chi.PNG" alt="Lights"
							style="width: 100%">
							<div class="caption">
								<h3>스타트업</h3>
								<p>제품을 대량 생산해낼 자금, 제품/서피스를 널리 알릴 홍보 네트워크, 매일같이 제품을 배송할 인력이
									부족한 스타트업에게 비용과 재고 부담없이 시작할 수 있는 구름 펀딩이 든든한 힘이 되어줄거예요</p>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-4">
					<div class="thumbnail">
						<a href="/yc/resources/images/chi.PNG" target="_blank"> <img
							src="/yc/resources/images/chi.PNG" alt="Nature"
							style="width: 100%">
							<div class="caption">
								<h3>개인 창작자</h3>
								<p>
									내가 만든 제품/콘텐츠를 더 많은 사람들에게 알리고, 자금을 모아 다음 작업을 이어 나갈 힘을 얻어보세요. <br>
									이곳엔 창작자님과 창작자님의 작품의 가치를 알아봐줄 서포터가 가득합니다.
								</p>
							</div>
						</a>
					</div>
				</div>
			</div>
			<a href="FundingOpen2.fd"><button onclick="btn_next();">펀딩
					시작하기</button></a>
		</div>
	</div>
</body>
</html>