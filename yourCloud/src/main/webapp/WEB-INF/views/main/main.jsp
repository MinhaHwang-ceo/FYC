<%@page import="com.kh.yc.project.model.vo.Project"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	ArrayList<Project> list = (ArrayList) request.getAttribute("list");
%>
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css">
<link href="${pageContext.request.contextPath}/resources/css/main.css"
	rel="stylesheet" />

<title>more</title>
</head>
<body>
	<jsp:include page="../common/customer_menubar.jsp" />
	<jsp:include page="../common/customer_menuList.jsp" />
	<!--Section-1-->
	<input type="button" onclick="location.href='funding_2.bo'" />
	<section class="section-1">
		<div class="jumbotron d-flex align-items-center">
			<div class="gradient"></div>
			<div class="container-fluid content">
				<h1 data-aos="fade-up" data-aos-delay="100">영화 의상디자이너 조상경</h1>
				<h2 data-aos="fade-up" data-aos-delay="300">"늘 새로운 영화의 의상을 만들때
					제가 그곳에 살아있다는걸 느껴요"</h2>
				</br> </br> </br>
				<p data-aos="fade-up" data-aos-delay="700">
					<a href="about.html" class="btn btn-success">스토리 읽어보러 가기</a>
				</p>
			</div>
		</div>
	</section>
	<section class="section-2">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-sm-12 col-12 box-1">
					<div class="row box" data-aos="fade-left" data-aos-delay="300">
						<div class="col-lg-2 col-sm-12">
							<i class="fa fa-desktop" aria-hidden="true"></i>
						</div>
						<div class="col-lg-10 col-sm-12">
							<h3>
								<a href="services.html">디자인.</a>
							</h3>
							<p>어렵기만 했던 리워드 펀딩을 조금 더 감각적으로 디자인하세요.</p>
							<p>
								<a href="services.html"><img
									src="/yc/resources/images/plus.png" alt="plus"></a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-12 col-12 box-2">
					<div class="row box" data-aos="fade-left" data-aos-delay="500">
						<div class="col-lg-2 col-sm-12">
							<i class="fa fa-code" aria-hidden="true"></i>
						</div>
						<div class="col-lg-10 col-sm-12">
							<h3>
								<a href="services.html">메이커.</a>
							</h3>
							<p>투명한 과정 공개와 진솔한 스토리의 메이커를 만나 보다 가치있는 후원을 시작하세요.</p>
							<p>
								<a href="services.html"><img
									src="/yc/resources/images/plus.png" alt="plus"></a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-sm-12 col-12 box-3">
					<div class="row box" data-aos="fade-left" data-aos-delay="700">
						<div class="col-lg-2 col-sm-12">
							<i class="fa fa-comments-o" aria-hidden="true"></i>
						</div>
						<div class="col-lg-10 col-sm-12">
							<h3>
								<a href="services.html">모르겠다.</a>
							</h3>
							<p>뭘써야하냐....</p>
							<p>
								<a href="services.html"><img
									src="/yc/resources/images/plus.png" alt="plus"></a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<hr>
	<c:choose>
	<c:when test="${  sessionScope.loginUser.memberCategory eq 'NULL' }">
		<section class="section-4">
			<div class="container">
				<div class="row heading">
					<div class="col-sm-6 col-12">
						<h3>
							회원님께 추천하는 <span>프로젝트 입니다</span>
						</h3>
					</div>
					<div class="col-sm-6 col-12">
						<a href="category.bo" class="btn btn-success">더 많은 프로젝트 보러가기</a>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-sm-12 col-12 box-1" data-aos="fade-right"
						data-aos-delay="300">
						<figure class="figure">
							<a href="blog.html"><img src="/yc/resources/images/phan.PNG"
								class="figure-img img-fluid" alt="blog"></a>
							<figcaption class="figure-caption">
								<h2>
									<a href="blog.html"> <%=list.get(0).getProjectTitle()%>
									</a>
								</h2>
								<p><%=list.get(0).getSummary()%></p>
								<a href="blog_single.html" class="btn btn-success">+ more</a>
							</figcaption>
						</figure>
					</div>
					<div class="col-lg-8 col-sm-12 col-12" data-aos="fade-left"
						data-aos-delay="300">
						<div class="row">
							<div class="col-sm-6 col-12 box-2">
								<figure class="figure">
									<a href="blog.html"><img
										src="/y/resources/images/hwnag.PNG"
										class="figure-img img-fluid" alt="blog"></a>
								</figure>
							</div>
							<div class="col-sm-6 col-12 box-3">
								<h4>
									<a href="blog.html"><%=list.get(1).getProjectTitle()%></a>
								</h4>
								<h5><%=list.get(1).getSummary()%></h5>
								<a href="blog_single.html" class="btn btn-success">+ more</a>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 col-12 box-4">
								<figure class="figure">
									<a href="blog.html"><img
										src="/yc/resources/images/holding.PNG"
										class="figure-img img-fluid" alt="blog"></a>
								</figure>
							</div>
							<div class="col-sm-6 col-12 box-5">
								<h4>
									<a href="blog.html"><%=list.get(2).getProjectTitle()%></a>
								</h4>
								<h5><%=list.get(2).getSummary()%></h5>
								<a href="blog_single.html" class="btn btn-success">+ more</a>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 col-12 box-6">
								<figure class="figure">
									<a href="blog.html"><img src="/yc/resources/images/chi.PNG"
										class="figure-img img-fluid" alt="blog"></a>
								</figure>
							</div>
							<div class="col-sm-6 col-12 box-7">
								<h4>
									<a href="blog.html"><%=list.get(3).getProjectTitle()%></a>
								</h4>
								<h5><%=list.get(3).getSummary()%></h5>
								<a href="blog_single.html" class="btn btn-success">+ more</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</c:when>
	<c:otherwise>
		<script>
		$(function(){
			var category = '${sessionScope.loginUser.memberCategory}';
			$.ajax(){
				url:"memberCategory.ca",
				data:{"category":category},
				type:"GET",
				success:function(data){
					alert(data);
				}
			};
		});
		</script>
	</c:otherwise>
	</c:choose>
	<hr>
	<section class="section-4">
		<div class="container">
			<div class="row heading">
				<div class="col-sm-6 col-12">
					<h3>
						새롭게 찾아올<span> 오픈예정 프로젝트 입니다</span>
					</h3>
				</div>
				<div class="col-sm-6 col-12">
					<a href="blog.html" class="btn btn-success">더 많은 프로젝트 보러가기</a>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-sm-12 col-12 box-1" data-aos="fade-right"
					data-aos-delay="300">
					<figure class="figure">
						<a href="blog.html"><img
							src="/yc/resources/images/glasses.PNG"
							class="figure-img img-fluid" alt="blog"></a>
						<figcaption class="figure-caption">
							<h2>
								<a href="blog.html">*2차앵콜* 안경사가 직접 제작한 두랄루민 안경테 & 무도수 아이웨어렌즈</a>
							</h2>
							<p>가벼운 금속 뿔테 두랄루민소재의 안경테와 패션부터 기능성까지 다양한 무도수 아이웨어 렌즈로 눈
								보호하세요! 자외선차단, 블루라이트차단, 변색렌즈와 눈부심방지까지!</p>
							<a href="blog_single.html" class="btn btn-success">+ more</a>
						</figcaption>
					</figure>
				</div>
				<div class="col-lg-8 col-sm-12 col-12" data-aos="fade-left"
					data-aos-delay="300">
					<div class="row">
						<div class="col-sm-6 col-12 box-2">
							<figure class="figure">
								<a href="blog.html"><img
									src="/yc/resources/images/hwnag.PNG"
									class="figure-img img-fluid" alt="blog"></a>
							</figure>
						</div>
						<div class="col-sm-6 col-12 box-3">
							<h4>
								<a href="blog.html">추석, 특별한 감귤이 온다! #과즙의 여왕, 황금향</a>
							</h4>
							<h5>다가오는 추석, 귀한 선물로 마음을 전하세요. 제주의 여름 바람과 햇살을 담아 한층 더 달콤하고
								부드러운 고급 감귤 '황금향'을 와디즈에서 처음 선보입니다!</h5>
							<a href="blog_single.html" class="btn btn-success">+ more</a>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6 col-12 box-4">
							<figure class="figure">
								<a href="blog.html"><img
									src="/yc/resources/images/holding.PNG"
									class="figure-img img-fluid" alt="blog"></a>
							</figure>
						</div>
						<div class="col-sm-6 col-12 box-5">
							<h4>
								<a href="blog.html">하루 18시간 스마트폰, 컴퓨터에 손목은 골병듭니다.[홀딩미]</a>
							</h4>
							<h5>잠시도 쉴 틈없이 움직이고 있는 당신의 손! 과도한 사용으로 인한 손목의 부담! 이젠 모른척하지
								마세요. 홀딩미 저주파 마사지기가 당신에게 힘이 되어드리겠습니다.</h5>
							<a href="blog_single.html" class="btn btn-success">+ more</a>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6 col-12 box-6">
							<figure class="figure">
								<a href="blog.html"><img src="/yc/resources/images/chi.PNG"
									class="figure-img img-fluid" alt="blog"></a>
							</figure>
						</div>
						<div class="col-sm-6 col-12 box-7">
							<h4>
								<a href="blog.html">[호르노스] 잘 만든 치마바지</a>
							</h4>
							<h5>남녀 상관 없이 누구나 편하고 이쁘게 입을 수 있는 치마 바지를 개발</h5>
							<a href="blog_single.html" class="btn btn-success">+ more</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="section-6" data-aos="fade-up">
		<div class="container">
			<div class="row main" data-aos="fade-up" data-aos-delay="300">
				<div class="col-lg-6 col-sm-12 col1">
					<div class="heading"></div>
				</div>
				<div class="col-lg-6 col-sm-12 col1">
					<form>
						<div class="input-group"></div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="../common/customer_footer.jsp" />
</body>

</html>
