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
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css">
<link href="${pageContext.request.contextPath}/resources/css/main.css"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Gothic+A1&display=swap"
	rel="stylesheet">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/payment.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<title>니가그린구름그림</title>
<style>
.outer {
	width: 900px;
	margin: auto;
	font-family: 'Gothic A1', sans-serif;
}

.circle2 {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	background: #1DE9B6;
	font-size: 14px;
	text-align: center;
	line-height: 100px;
}

.circle1 {
	border: 1px;
	width: 100px;
	height: 100px;
	border-radius: 50%;
	background: #EEEEEE;
	font-size: 14px;
	text-align: center;
	line-height: 100px;
}

#step {
	margin-left: 250px;
}

#p1 {
	float: left;
}

#p2 {
	float: right;
}

#div1 {
	color: #1DE9B6;
}

#table1 th {
	font-size: 20px;
}

#table1 tr td {
	padding: 10px 40px;
	background: #1DE9B6;
	border-radius: 10%;
}

#payBtn {
	margin-left: 300px;
	width: 300px;
}

#div2 {
	margin-left: 20px;
}

#text1 {
	width: 200px;
}

#zipAddr {
	width: 300px;
}

#text2 {
	width: 300px;
}

#btn2 {
	width: 90px;
	height: 25px;
	font-size: 12px;
	text-align: center;
	line-height: 1px;
}
</style>
</head>
<body>
	<jsp:include page="../../common/customer_menubar.jsp" />
	<jsp:include page="../../common/customer_menuList.jsp" /><br>
	<br>
	<div class="outer">

		<div id="step">
			<table>
				<tr>
					<td class="circle1">리워드 선택</td>
					<td>&emsp;-&emsp;</td>
					<td class="circle2"><b>결제예약</b></td>
					<td>&emsp;-&emsp;</td>
					<td class="circle1">소문내기</td>
				</tr>
			</table>
		</div>

		<br> <br>
		<hr>

		<div>
			<h6><c:out value="${ p.projectTitle }"/></h6>
			<p><c:out value="${ p.summary }"/></p>
			<p style="text-align: right">수량 : <c:out value="${f.rewardCount }"/>개 &emsp; <c:out value="${ f.fundMoney }"/>원</p>
			<hr>
			<p style="float: left;">배송비</p>
			<p style="float: right;">2500원</p>
			<br>
			<hr>
		</div>

		<br>

		<div id="div1">
			<p id="p1">
				<b>최종결제금액</b>
			</p>
			<p id="p2"><c:out value="${ f.fundMoney + 2500 }"/>원</p>
			<br> <br>
		</div>
		<br>

		<div id="div2">
			<table id="table1">
				<tr>
					<th>펀딩서포터</th>
					<th></th>
					<th>리워드배송지</th>
				</tr>
				<tr>
					<td class="td1"><b><br>이름</b><br> <c:out
							value="${ sessionScope.loginUser.userName }" /><br> <br>
						<b>이메일</b><br>
					<c:out value="${ sessionScope.loginUser.email }" /><br> <br>
						<input type="checkbox" required>&nbsp;(필수) 펀딩 진행에 대한 <br> 새소식 및 결제
						관련 안내를 받습니다.<br> <br> <br> <br> <br> <br>
						<br> <br></td>

					<td style="background: white">&emsp;</td>

					<td><input type="radio" id="origin" name="site"><label for="origin">최근 배송지</label><br> <label>최근 배송지가 없습니다.</label><br />
						<input type="radio" id="new" name="site"><label for="new">새로 입력</label><br> 이름 &emsp;<input type="text" id="userName" name="userName"><br> 
						연락처 <input type="text" id="phone" name="phone"><br> <br> 
						주소 <input type="button" onclick="fn_setAddr();" value="우편번호검색" class="btn btn-default" id="btn2"><br> 
						<input type="text" id="zipAddr" name="deliverySite"><br> 
						<input type="text" placeholder="상세주소" id="delivertSite2" name="delivertSite2"><br>
						<hr> 배송 시 요청사항(선택)<br> 
						<input type="text" placeholder="ex) 부재시 경비실에 보관해주세요" id="etc" name="etc"><br></td>
				</tr>
			</table>
		</div>
		<br> <br>
		<div>
			<br> <br> <b>약관동의</b>
			<div class="panel-group" id="accordion">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse1"><h6>제 3자에 대한 개인정보 제공 동의 &emsp; [보기]</h6></a>
						</h4>
					</div>
					<div id="collapse1" class="panel-collapse collapse in">
						<div class="panel-body">'펀딩하기'를 통한 결제 및 리워드 전달 서비스를 제공하기 위해,
							이용자의 사전 동의 아래 제3자(프로젝트 메이커)에게 제공합니다. 메이커에게 전달되는 개인 정보는 기재된 목적 달성
							후 파기에 대한 책임이 메이커에게 있으며, 파기하지 않아 생기는 문제에 대한 법적 책임은 메이커에게 있습니다. 아래
							내용에 대하여 동의를 거부하실 수 있으며, 거부 시 서비스 이용이 제한됩니다.</div>
					</div>
				</div>
				<input type="checkbox" required>약관에 동의합니다. <br> <br>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse2"><h6>책임 규정에 대한 동의 &emsp; [보기]</h6></a>
						</h4>
					</div>
					<div id="collapse2" class="panel-collapse collapse">
						<div class="panel-body">니가그린구름그림은(는) 플랫폼을 제공하는 중개자로 크라우드펀딩을
							받는 당사자가 아닙니다. 보상품 제공 등에 관한 지연, 제품의 하자 등으로 인한 일체의 법적책임은 펀딩을 받는
							프로젝트 개설자가 부담합니다. 하지만, 니가그린구름그림은 프로젝트 진행자와 후원자간의 원활한 의사소통을 위해 최선의
							노력을 다하고 있습니다.</div>
					</div>
				</div>
				<input type="checkbox" required>약관에 동의합니다. <br> <br>
			</div>
		</div>
		<input type="button" value="다음 단계로  >" class="btn btn-info"
			id="payBtn">
	</div>
	<script>
	
		$("#payBtn").click(function(){
			var userNo = '${ sessionScope.loginUser.userNo }';
			var email = '${ sessionScope.loginUser.email }';
			var merchantUid = "" + Math.floor(Math.random() * 100000) + 1;;
			var price = parseInt('${ f.fundMoney}');
			var userName = $("#userName").val();
			var phone = $("#phone").val();
			var site = $("#zipAddr").val();
			var site2 = $("#delivertSite2").val();
			var projectNo = '${ p.projectNo}';
			var etc = $("#etc").val();
			var deliverySite = site + " " + site2;
			var price2 = price + 2500;
			
			var rewardCount = '${ f.rewardCount }';
			
			var projectNo = '${ f.projectNo}';
			
			var rewardNo = '${f.rewardNo}';
			
			var IMP = window.IMP;
			IMP.init('imp24001024');
			
			IMP.request_pay({ // param
			    pay_method: "card", // "card"만 지원됩니다
			    merchant_uid: merchantUid, // 빌링키 발급용 주문번호
			    customer_uid: userNo, // 카드(빌링키)와 1:1로 대응하는 값
			    name: "최초인증결제",
			    amount: 0, // 0 으로 설정하여 빌링키 발급만 진행합니다.
			    buyer_email: email,
			    buyer_name: userName,
			    buyer_tel: "010-4242-4242",
			  }, function (rsp) { // callback
			    if (rsp.success) {
			    	 // jQuery로 HTTP 요청
			    	 jQuery.ajax({
				          url: "billingKey.fd", // 서비스 웹서버
				          method: "POST",
				          data: {
				        	  customer_uid:userNo,
				        	  price:price2,
				        	  phone:phone,
				        	  deliverySite:deliverySite,
				        	  etc:etc,
				        	  userName:userName,
				        	  userNo:userNo,
				        	  projectNo:projectNo,
				        	  rewardCount:rewardCount,
				        	  fundMoney:price2,
				        	  rewardNo:rewardNo,
				        	  projectNo:projectNo
				          }, success:function(data){
				        	  alert("결제가 예약되었습니다");
				        	  location.href="funding_3.bo";
				          }
			    	});
			    } else {
			    	
			    }
			  });
		});
	</script>
	<jsp:include page="../../common/customer_footer.jsp" />
	<script type="text/javascript">
	function fn_setAddr() {
		var width = 500;
		var height = 600;
		daum.postcode.load(function(){
			new daum.Postcode({
				oncomplete: function(data){
					$("#zipAddr").val(data.address);
				} 	
			}).open({
				left: (window.screen.width / 2) - (width / 2),
				top: (window.screen.height / 2) - (height / 2)
			});
		});
	}	
</script>
</body>
</html>