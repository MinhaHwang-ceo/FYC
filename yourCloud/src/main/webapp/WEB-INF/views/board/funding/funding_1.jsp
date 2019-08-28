<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
    <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Gothic+A1&display=swap" rel="stylesheet">
<title>니가그린구름그림</title>
<style>
	.outer{
		padding-left:300px;
		font-family: 'Gothic A1', sans-serif;
	}
	
	#top{
		font-family: 'Gothic A1', sans-serif;
		background:#EAEAEA;
		color:#6C6C6C;
		height:100px;
		font-size:xx-large;
		text-align:center;
		padding-top:20px;
	}
	
	#a1{
		color:#2478FF;
	}
	
 	#div1{
		background:#EAEAEA;
		width:930px;
	} 
	
	.table1 tr td{
		padding:10px 30px;
	}
	
	.img2{
		width:600px;
		padding-left:100px;
	
	}
	
	.div2{
		margin-right:300px;
		text-align:center;
	
	}
	
	#btn1{
		width:300px;
	
	}

	.circle2{
	
		width:100px;
		height:100px;
		border-radius:50%;
		background:#1DE9B6;
		font-size:14px;
		text-align:center;
		line-height:100px;
	}
	
	.circle1{
	
		border:1px;
		width:100px;
		height:100px;
		border-radius:50%;
		background:#EEEEEE;
		font-size:14px;
		text-align:center;
		line-height:100px;
	}
	
	#step{
	
		margin-left:260px;
	}

</style>
</head>
<body>
<jsp:include page="../../common/customer_menubar.jsp"/><br><br>

<div id="top">프로젝트 이름입니다</div><br>

<div class="outer">

<div id="step">
<table>
	<tr>
		<td class="circle2"><b>리워드 선택</b></td>
		<td>&emsp;-&emsp;</td>
		<td class="circle1">결제예약</td>
		<td>&emsp;-&emsp;</td>
		<td class="circle1">소문내기</td>
	</tr>
</table>
</div>

<br><br>

<p>
	<b>리워드 선택 &nbsp;</b>펀딩해주시는 금액에 따라 감사의 의미로 리워드를 제공해드립니다.  &nbsp; 
	<a href="#" id="a1">펀딩하기는 쇼핑하기가 아닙니다! 자세히 알아보세요</a>
</p>

<br>

<div id="div1">
<br>
<table class="table1">
	<tr>
		<td></td>
		<td><input type="checkbox"></td>
		<td>100,000원 펀딩합니다</td>
	</tr>

	<tr>
		<td></td>
		<td></td>
		<td>[슈퍼얼리버드]상품명</td>
	</tr>
	
	<tr>
		<td></td>
		<td></td>
		<td>상세설명</td>
	</tr>
	
	<tr>
		<td></td>
		<td></td>
		<td>배송비 : 3000원 | 리워드 발송 예상일 : 2019년 초(1~10)일 예정</td>
	</tr>
</table>
<br>
</div>

<br><br>

<div>
	<form>
		<table>
			<tr>
				<td><b>공개여부(선택)</b></td>
				<td>&emsp;서포터 목록에 서포터 이름과 펀딩 금액이 공개됩니다. 조용히 펀딩하고 싶으시다면, 비공개로 선택해주세요.</td>
			</tr>
			
			<tr>
				<td></td>
				<td>&emsp;커뮤니티, 새소식 댓글 작성 시에는 비공개 여부와 상관없이 펀딩 참여자 표시가 노출됩니다.</td>
			</tr>
			
			<tr><td><br></td></tr>
			
			<tr>
				<td></td>
				<td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="checkbox" value="">&emsp;이름 비공개  
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
				    <input type="checkbox" value="">&emsp;펀딩금액 비공개</td>
			</tr>
			
			<tr>
				<td><br></td>
				<td><img alt="" src="/yc/resources/images/funding_1_1.PNG" class="img2"></td>
			</tr>
		</table>
	</form>
</div>

<br><br>

	<div class="div2">
		<h6>(프로젝트명)에 100,000을 펀딩합니다</h6>
		<br><br>
		<input type="button" onclick="location.href='${contextPath}/funding_2.bo'" value="다음 단계로  >" class="btn btn-info" id="btn1">
	</div>
<br>
</div>
<br><br>
<jsp:include page="../../common/customer_footer.jsp"/>
</body>
</html>