<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<link
	href="https://fonts.googleapis.com/css?family=Gothic+A1&display=swap"
	rel="stylesheet">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<title>니가그린구름그림</title>
<style>
.outer {
	width: 100%;
	font-family: 'Gothic A1', sans-serif;
	text-align: center;
}

#top {
	font-family: 'Gothic A1', sans-serif;
	background: brown;
	height: 80px;
	font-size: xx-large;
	text-align: center;
	padding-top: 20px;
}

#a1 {
	color: #2478FF;
}

.div1 {
	background: #EAEAEA;
	width: 50%;
	margin: 0 auto;
}

.div2 {
	text-align: center;
}

#btn1 {
	width: 300px;
}

.circle2 {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	background: #1DE9B6;
	font-size: 14px;
	text-align: center;
}

.circle1 {
	border: 1px;
	width: 100px;
	height: 100px;
	border-radius: 50%;
	background: #EEEEEE;
	font-size: 14px;
	text-align: center;
}

#goBack:hover {
	pointer: cursor;
}
</style>
</head>
<body>
	<jsp:include page="../../common/customer_menubar.jsp" /><br>
	<br>
	<jsp:include page="../../common/customer_menuList.jsp" /><br>
	<div id="top" style="color: white;">
		<input type="button" id="goBack"
			style="background: brown; color: white; border: none; float: left; font-size: x-large;"
			value="< 뒤로가기 "> <label id="projectTitle" name="projectTitle"><c:out
				value="${ p.projectTitle }" /></label> <label style="font-size: 20px;">&nbsp;by&nbsp;
		</label> <label style="font-size: x-large;"><c:out
				value="${ maker.companyName }" /></label>
	</div>
	<br>

	<div class="outer">

		<div id="step">
			<table align="center">
				<tr>
					<td class="circle2"><b>리워드 선택</b></td>
					<td>&emsp;-&emsp;</td>
					<td class="circle1">결제예약</td>
					<td>&emsp;-&emsp;</td>
					<td class="circle1">소문내기</td>
				</tr>
			</table>
		</div>

		<br> <br>

		<p>
			<b>리워드 선택 &nbsp;</b>펀딩해주시는 금액에 따라 감사의 의미로 리워드를 제공해드립니다. &nbsp; <a
				href="guide.bo" id="a1">펀딩하기는 쇼핑하기가 아닙니다! 자세히 알아보세요</a>
		</p>

		<br>

		<c:forEach var="r" items="${ r }">
			<div class="div1" style="padding-left: 50px;">
				<table class="rewardInfo" style="width: 100%; text-align: left;">
					<tr style="border-top: 1px solid lightgray;">
						<td rowspan="6" style="width: 100px;"><input type="checkbox"
							class="check"> <input type="hidden" class="rewardNo"
							name="rewardNo" value="${ r.rewardNo }" />
							<input type="hidden" class="rewardPrice" value="${r.rewardMoney }" />	
							</td>
						<td><label><fmt:formatNumber

									value="${ r.rewardMoney }" /></label>원 펀딩합니다</td>
					</tr>
					<tr>
						<td><h3>
								<c:out value="${r.rewardName }" />
							</h3></td>
					</tr>
					<tr>
						<td><c:out value="${r.rewardDetail }" /></td>
					</tr>
					<tr>
						<td>배송비 : <label class="deliveryMoney"><c:out
									value="${ r.deliveryMoney }" /></label>&nbsp;&nbsp;&nbsp;&nbsp; <c:out
								value="발송 예정일 : ${ r.startDate }" /></td>
					</tr>
					<tr class="hidden">
						<td>수량</td>
					</tr>
					<tr class="hidden">
						<td><input type='number' class="rewardNumber"
							name='rewardNumber' /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
				</table>
			</div>
		</c:forEach>

		<br> <br>

		<div>
			<table align="center" style="border: 1px solid red">
				<tr>
					<td rowspan="4"><b>공개여부(선택)</b></td>
					<td colspan="2" style="text-align: left;">&emsp;서포터 목록에 서포터
						이름과 펀딩 금액이 공개됩니다. 조용히 펀딩하고 싶으시다면, 비공개로 선택해주세요.</td>
				</tr>

				<tr>
					<td colspan="2" style="text-align: left;">&emsp;커뮤니티, 새소식 댓글
						작성 시에는 비공개 여부와 상관없이 펀딩 참여자 표시가 노출됩니다.</td>
				</tr>

				<tr>
					<td><input type="checkbox" id="name" name="blind" value="name"><label
						for="name">이름 비공개</label></td>
					<td><input type="checkbox" id="money" name="blind"
						value="money"><label for="blind">펀딩금액 비공개</label></td>
				</tr>

				<tr>
					<td colspan="2"><img alt=""
						src="/yc/resources/images/funding_1_1.PNG" class="img2"></td>
				</tr>
			</table>
		</div>
		<br> <br>

		<div class="div2">
			<h6>
				<label name="projectTitle"></label>
				<c:out value="${ p.projectTitle }" />
				에 <label id="price" name="price"></label> 원을 펀딩합니다
			</h6>
			<br> <br> <input type="button" value="다음 단계로  >"
				class="btn btn-info" id="btn1">
		</div>
		<br>
	</div>
	<br>
	<br>
	<jsp:include page="../../common/customer_footer.jsp" />

	<script>
		$(function(){
			
		var price = 0;
		$(".rewardNumber").keyup(function(){
			var cnt = $(this).val();
			
			var target = $(this).parent();
		});
		});
		
		$("#goBack").click(function() {
			if (confirm("뒤로 가시겠습니까? 내용은 저장되지 않습니다.")) {
				history.go(-1);
			}
		});
		$("#projectTitle").click(
				function() {
					var projectNo = '${p.projectNo}';
					var userNo = '${ sessionScope.loginUser.userNo}';
					location.href = "categoryOne.ca?projectNo=" + projectNo + "&userNo=" + userNo;
				});
		$("#projectTitle").mouseover(function() {
			$(this).css("cursor", "pointer");
		});
		$(".div1").mouseover(function(){
			$(this).css({"cursor":"pointer","background":"#1DE9B6"});
		}).mouseout(function(){
			$(this).css("background","#EAEAEA");
		});
		$(function(){
			$(".div1").click(function(){
				var table = $(this).children().eq(0);
				
				var target = table.children().eq(0).children().eq(0).children().eq(0).children().eq(0);
				var target1 = table.children().eq(0).children().eq(4);
				var target2 = table.children().eq(0).children().eq(5);
				
				var a = $(table).children().eq(0);
				
				if(target.prop("checked", function(){
					return !$(this).prop('checked');
				}));
			});

		});
		
		$("#btn1").click(function(){
			var target ="";
			var targetCnt = "";
			
			var userNo = '${ m.userNo}';
		/*
			
			$(".check:checked").each(function(){
				target +=  $(this).siblings().eq(0).val();
				target += "$";
				
				targetCnt = $(this).parent().parent().siblings().eq(4).children().eq(0).children().eq(0).val();
				targetCnt += "$";
			});
			
			$.ajax({
				url: "funding_2.bo",
				type: "POST",
				data:{"projectNo":projectNo, "userNo":userNo, "target":target, "targetCnt":targetCnt},
				success:function(data){
					
				}
			});
			
		*/
			var price = "";
			var projectNo = '${p.projectNo}';
			var target = "";
			var targetCnt = "";
			var price = "";
			$(".check:checked").each(function(){
				target += $(this).siblings().eq(0).val();
				target += "$";
				targetCnt += $(this).parent().parent().siblings().eq(4).children().eq(0).children().eq(0).val();
				targetCnt += "$";
				price += $(this).siblings().eq(1).val();
				price += "$";
			});
			console.log(target);
			console.log(targetCnt);
			console.log(price);
			location.href="funding_2.bo?projectNo="+projectNo+"&target="+target+"&targetCnt="+targetCnt+"&price="+price+"&userNo="+userNo;
		});
		
	</script>

</body>
</html>