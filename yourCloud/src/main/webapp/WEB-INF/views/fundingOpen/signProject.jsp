<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="${contextPath }/resources/css/myPage.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="outer" align="center">
		<div id="sign" align="left" style="width: 80%;">
			<h2 align="center"># 니가그린 구름그림 전자계약서</h2>
			<br /> <br />
			<p>
				<strong>ㅁ 1조 1항(프로젝트 오픈 후 수정 불가 관련)</strong>
			</p>
			<br /> 회사가 프로젝트를 최종 승인 후 개설자 이름, 개설자 법인명, 약정체결 이메일정보, 리워드 발송 예상
			변동기간, 리워드 발송 변동 예상 기간 이상 지연시 해결 방법, 교환/환불/AS 정책, 수수료 방식, 목표 금액, 마감일,
			프로젝트 기관이름, 보상품 관련 정보를 개설자가 수정한 경우 회사는 프로젝트 개설을 취소할 수 있으며 향후 프로젝트 진행 시
			발생하는 모든 법적 책임은 개설자가 부담한다. <br /> <br />
			<p>
				<strong>ㅁ 1조 2항(프로젝트 내용 중 허위, 기재 누락, 오기가 있는 경우)</strong>
			</p>
			<br /> 개설자가 등록한 프로젝트 내용에 허위, 기재 누락, 오기가 있어서는 안되며, 개설자가 이를 준수하지 않아
			발생한 불기익에 대해서는 개설자가 모든 책임을 부담하여야 한다. <br /> <br />
			<p>
				<strong>ㅁ 1조 2항(프로젝트 취소시)</strong>
			</p>
			개설자가 프로젝트를 취소 요청하는 경우, 회사와 개설자가 상호 합의시 개설자는 프로젝트 내 새소식을 통해 취소 사유에 대해
			기재하고 프로젝트 취소로 인한 위약별로 와디즈 위약금 정책에 따른 금액을 회사에 지급해야 한다. <br /> <br />
			<p>
				<strong>ㅁ 1조 3항(정산)</strong>
			</p>
			최종 정산금액의 80%(이하 "1차 정산"이라 한다)는 개설자가 회사에게 정산 시 필요한 적합산 서류를 제출하면 회사가
			개설자에게 서류 도착일로부터 5영업일 이내에 지급한다. 나머지 20% 정산금액(이하 "2차 정산"이라 한다)은 보증금의
			형태로 회사가 보관하고 개설자가 보상품을 후원자에게 정상적으로 지급 및 진행 완료한 내역과 자료를 프로젝트 내 새소식으로
			작성한 후 회사게 고지하면, 회사가 보상품 배송 여부를 확인 한 후 지급한다. <br /> <br />
			<p>
				<strong>ㅁ 1조 4항(신고)</strong>
			</p>
			저작권 침해, 유해물 등 법적 제재사항에 해당되는 프로젝트로 인해 신고 받은 경우, 개설자의 프로젝트는 무기한 중지되며 이미
			정산이 마친 프로젝트의 경우 개설자는 후원자들에게 개별 공지한 후 환불하여야 하며, 추후 1년간 프로젝트의 개설이 불가하다.
			<br /> <br /> 
			개설자 <strong><c:out value="${ sessionScope.loginUser.userId }" /></strong>
			은 위 조항에 대해 인지했으며 조항을 준수하고 위배에 따른 조치에 어떠한 불만을 지지 않을 것 입니다. <br /><br />
		</div>
		<div id="btn" class="btn btn-info">
			<button type="button" onclick="sign();">서명</button>
		</div>
	</div>
	<script>
		function sign() {
			var bNum = '${bNum}';
			var user = '${sessionScope.loginUser.userNo}';
			var option = "width = 500px, height = 500px, top = 100, left = 200, location = no, scrollbars = no";
			window.open("signiture.fd?bNum="+bNum+"&userNo="+user, "전자서명", option);
		}
	</script>
</body>
</html>