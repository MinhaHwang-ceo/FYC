<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후원자 관리</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="${contextPath }/resources/css/myPage.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" />
</head>
<body>
	<jsp:include page="../common/customer_menubar.jsp" />
	<br />

	<div id="outer">
		<div class="tableDiv">
			<h2>후원자 관리</h2>
			<br />
			<div align="right">
				<select name="deliveryStatus" id="deliveryStatus">
					<option value="all">전체보기</option>
					<option value="before">발송상태-미발송</option>
					<option value="complete">발송상태-발송</option>
				</select>
				<select name="payStatus" id="payStatus">
					<option value="all">전체보기</option>
					<option value="before">결제상태-결제전</option>
					<option value="complete">결제상태-결제완료</option>
				</select>
				<select name="changeDeliveryStatus" id="changeDeliveryStatus">
					<option value="toBefore">미발송</option>
					<option value="toComplete">발송완료</option>
				</select>
			</div>
			<br />
			<table class="table" style="text-align:center;font-size: 0.9em;">
			    <thead>
			      <tr>
			      	<th></th>
			        <th>후원자 이름</th>
			        <th>리워드 이름</th>
			        <th>리워드수</th>
			        <th>배송지 정보</th>
			        <th>펀딩 참여일</th>
			        <th>결제 상황</th>
			        <th>발송 예정일</th>
			        <th>발송 상태</th>
			        <th>펀딩 금액</th>
			      </tr>
			    </thead>
			    <tbody>
			      	<tr>
			      		<td class="checkBoxTd"><input type="checkbox" class="check" /></td>
			      		<td>김진수</td>
			      		<td>구기자기자</td>
			      		<td>2</td>
			      		<td>충남 청양군 화성면 하매길 79-13</td>
			      		<td>2019-01-10</td>
			      		<td>결제 완료</td>
			      		<td>2020-01-01</td>
			      		<td>미발송</td>
			      		<td>890000</td>
			      	</tr>
			    </tbody>
  			</table>
  			<br />
  			<div id="btnDiv" align="right">
  				<button class="btn btn-success">배송지 관리</button>
  			</div>
		</div>
	</div>
	<script>
		$(".checkBoxTd").click(function(){
			$(this).children().prop("checked", function(){
				return !$(this).prop('checked');
			});
		});
	</script>
</body>
</html>