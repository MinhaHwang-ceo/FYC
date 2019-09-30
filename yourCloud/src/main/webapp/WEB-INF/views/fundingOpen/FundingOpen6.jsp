<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩하기</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">
<script type="text/javascript"
	src="./resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<style>
#personal {
	color: White;
}

#textbox {
	font-size: 13px;
	color: red;
	border: 1px solid red;
}

#inputBox {
	width: 900px;
	height: 800px;
	position: relatve;
	z-index: 2;
	background: White;
	margin: 0 auto;
}

#inputBox2 {
	width: 800px;
	height: 80%;
	z-index: 1;
	margin: 0 auto;
	border: 1px solid lightgray;
}

input {
	width: 300px;
	height: 40px;
}

#browsers {
	width: 300px;
	height: 30px;
}

input[type="checkbox"] {
	display: none;
}

input[type="checkbox"]+label {
	font-size: 13px;
}

input[type="checkbox"]+label span {
	display: inline-block;
	width: 15px;
	height: 15px;
	margin: -2px 10px 0 0;
	vertical-align: middle;
	background:
		url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png)
		left top no-repeat;
	cursor: pointer;
}

input[type="checkbox"]:checked+label span {
	background:
		url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png)
		-19px top no-repeat;
}

#box1 {
	width: 500px;
}

.inputDiv {
	display: none;
}

#menu li {
	float: left;
	font-size: 25px;
	font-family: 'Sunflower', sans-serif;
	board-left:1px solid #d9d9de;
}

#menu a {
	display: block;
	height: 40px;
	line-height: 35px;
	padding: 0 35px;
}
#menu {
	border: 1px solid black;
}


#menu a:hover {
	cursor: pointer;
	background: lightgreen;
}

h4 {
	text-align: center;
	
}
</style>
</head>
<body>
	<script type="text/javascript">
		$(function() {
			//전역변수
			var obj = [];
			//스마트에디터 프레임생성
			nhn.husky.EZCreator.createInIFrame({
				oAppRef : obj,
				elPlaceHolder : "editor",
				sSkinURI : "./resources/editor/SmartEditor2Skin.html",
				htParams : {
					// 툴바 사용 여부
					bUseToolbar : true,
					// 입력창 크기 조절바 사용 여부
					bUseVerticalResizer : true,
					// 모드 탭(Editor | HTML | TEXT) 사용 여부
					bUseModeChanger : true,
				}
			});
			//전송버튼
			$("#next").click(function() {
				//id가 smarteditor인 textarea에 에디터에서 대입
				obj.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
			});
		});
	</script>
	<jsp:include page="../common/customer_menubar.jsp" />
	<jsp:include page="../common/customer_menuList.jsp"/>
	
<%-- <jsp:include page="../common/fundOpenMenu.jsp"/> --%>
	<div id="top" style="width: 100%;">
<br /><br /><br />
<div id="menu" style="width: 55%;height: 40px; margin: 0 auto;">
		<ul>
			<li><a onclick="basicInfo();" id="basic">기본정보</a></li>
			<li><a onclick="rewardList();" id="reward">리워드</a></li>
			<li><a onclick="rewardStory();" id="story">스토리</a></li>
			<li><a onclick="makerInfo();" id="aboutyou">메이커정보</a></li>
			<li><a id="cominhsoon">오픈예정</a></li>
			<li><a id="account">정산</a></li>
		</ul>
	</div>
</div>
<script>
	function basicInfo(){
		var projectNo = $("#projectNo").val();
		location.href = "baseInfoList.fd?projectNo=" + projectNo;
	}
	
	function rewardList(){
		var projectNo = $("#projectNo").val();
		location.href = "rewardList.fd?projectNo=" + projectNo;
	}
	function rewardStory(){
		var projectNo = $("#projectNo").val();
		location.href = "rewardStory.fd?projectNo=" + projectNo;
		
	} 
	function makerInfo() {
		var projectNo = $("#projectNo").val();
		location.href = "makerInfo.fd?projectNo=" + projectNo;
		
	}
</script>
	<hr />
	<br>
	
<div id="inputBox2" align="center" style="background:white; border: 3px solid white;"  >
		<br>
		<form action="FundingOpen7.fd" id="mainForm" method="POST"
			encType="multipart/form-data">
			<input type="hidden" id="projectNo" name="projectNo" value="${p.projectNo }" />
			<input type="hidden" id="rewardNo" name="rewardNo" value="${ RewardNo2 }"/>
			<table style="align: center; width: 100%;">
				<tr>
					<td><h5>프로젝트 요약</h5>- 서포터가 제품의 장점이나<br> 특징을 잘 이해할 수 있도록<br>
						간략하게 소개하세요.</td>
					<td><textarea rows="5" cols="40" id="summary" name="summary"
							style="width: 100%;">${p.summary}</textarea></td>
				</tr>
				<tr>
					<td colspan="2"><hr /></td>
				</tr>
				<tr>
					<td colspan="2"><h4>스토리</h4> 최초 승인 이후에는 스토리를 수정할 수 없습니다.</td>
				</tr>
				<tr>
					<td colspan="2"><textarea name="story" id="editor" style="width: 100%; height: 500px;">${p.story}</textarea></td>
					<textarea name="story" id="story" hidden></textarea>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2">리워드, 배송 등에 대한 이슈 발생 시 작성한 아래 정책에 따라 펀딩이
						진행되어야하니 신중하게 작성해주세요. <br />아래 입력한 모든 정보는 프로젝트 상세페이지 -펀딩 안내 탭에
						노출됩니다.
						<hr />
						<hr />
					</td>
				</tr>
				<tr>
					<th colspan="2"><h4>리워드 정보 제공 고시</h4></th>
				</tr>
				<tr>
					<td colspan="2">전자상거래 등에서의 상품 등의 정보제공에 관한 고시법에 따라 서포터에게 리워드를
						제공하기 위해서는 리워드 정보 제공 고시를 필수로 입력해야 합니다. 서포터에게 제공하는 리워드의 종류를
						선택하고, 해당하는 리워드 정보 제공 고시를 입력하세요. 여러 리워드를 제공하나 동일한 종류의 리워드인
						경우, 종류를 한가지만 선택하고 모든 리워드의 내용을 함께 작성하여도 무방합니다. 
						입력한 리워드 정보 제공 고시는 펀딩안내 하단에 노출됩니다.
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;"><select
						id="browsers" name="rewardCategory" onchange="onChange();">
							<option value="선택하세요">카테고리 선택하기</option>
							<option id="1" value="의류">의류</option>
							<option id="2" value="구두/신발">구두/신발</option>
							<option id="3" value="가방">가방</option>
							<option id="4" value="패션잡화">패션잡화</option>
							<option id="5" value="침구류/커튼">침구류/커튼</option>
							<option id="6" value="가구">가구</option>
							<option id="7" value="영상가전">영상가전</option>
							<option id="8" value="가정용 전기제품">가정용 전기제품</option>
							<option id="9" value="계절가전">계절가전</option>
							<option id="10" value="공학기기">공학기기</option>
							<option id="11" value="소형전자">소형전자</option>
							<option id="12" value="휴대폰">휴대폰</option>
							<option id="13" value="내비게이션">내비게이션</option>
							<option id="14" value="자동차용품">자동차용품</option>
							<option id="15" value="의료기기">의료기기</option>
							<option id="16" value="주방용품">주방용품</option>
							<option id="17" value="화장품">화장품</option>
							<option id="18" value="귀금속/보석/시계">귀금속/보석/시계</option>
							<option id="19" value="식품">식품</option>
							<option id="20" value="가공식품">가공식품</option>
							<option id="21" value="건강 기능 식품">건강 기능 식품</option>
							<option id="22" value="영유아 용품">영유아 용품</option>
							<option id="23" value="악기">악기</option>
							<option id="24" value="스포츠용품">스포츠용품</option>
							<option id="25" value="서적">서적</option>
							<option id="26" value="호텔/펜션 예약">호텔/펜션 예약</option>
							<option id="27" value="여행패키지">여행패키지</option>
							<option id="28" value="항공권">항공권</option>
							<option id="29" value="자동차 대여 서비스">자동차 대여 서비스</option>
							<option id="30" value="물품대여 서비스">물품대여 서비스</option>
							<option id="31" value="디지털 콘텐츠">디지털 콘텐츠</option>
							<option id="32" value="모바일 쿠폰">모바일 쿠폰</option>
							<option id="33" value="영화/공연">영화/공연</option>
							<option id="34" value="기타 용역">기타 용역</option>
							<option id="35" value="기타 재화">기타 재화</option>
					</select></td>
				</tr>
			</table>
			<script>
				$("#summary").click(function() {
					$(this).text("");
				});
			</script>
			<hr>
			<div class="inputBox">
				<div class="inputDiv">
					<h5>의류 리워드 정보 제공 고시 내용을 입력하세요</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1" name="">
							<td>
						</tr>
						<tr>
							<td>제품 소재</td>
							<td><input type="text" id="box1" name=""><br>섬유의 조성 또는
								혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력
							<td>
						</tr>
						<tr>
							<td>치수</td>
							<td><input type="text" id="box1" name="">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" id="box1" name="">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1" name="">
							<td>
						</tr>
						<tr>
							<td>세탁방법 및 취급시<br>주의사항
							</td>
							<td><input type="text" id="box1" name="">
							<td>
						</tr>
						<tr>
							<td>제조연월</td>
							<td><input type="text" id="box1" name="" placeholder="예) 2019년 10월">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S책임자 전화번호</td>
							<td><input type="text" id="box1" name=""><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>구두/신발 리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제품 소재</td>
							<td><input type="text" id="box1"><br>섬유의 조성 또는
								혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력
							<td>
						</tr>
						<tr>
							<td>색상</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>치수</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>세탁방법 및 취급시<br>주의사항
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조연월</td>
							<td><input type="text" id="box1" placeholder="예) 2019년 10월">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>가방 리워드 정보 제공 고시 내용을 입력하세요</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>종류</td>
							<td><input type="text" id="box1"
								placeholder="예) 숄더백, 백팩, 서류가방 등">
							<td>
						</tr>
						<tr>
							<td>소재</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>색상</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>크기</td>
							<td><input type="text" id="box1" placeholder="가로,세로,끈길이 등">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>취급시 주의사항</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>패션잡화(모자,벨트,액세서리) 리워드 정보 제공 고시 내용을 입력하세요</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" value="${rf.modelName}" name="modelName" id="box1">
							<td>
						</tr>
						<tr>
							<td>종류</td>
							<td><input type="text" value="${rf.modelType }" name="modelType" id="box1">
							<td>
						</tr>
						<tr>
							<td>소재</td>
							<td><input type="text" value="${rf.modelMat }" name="modelMat" id="box1">
							<td>
						</tr>
						<tr>
							<td>치수</td>
							<td><input type="text" value="${rf.modelSize }"  name="modelSize" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" value="${rf.manufacturer }" name="manufacturer" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" value="${rf.manufacturerNation }" name="manufacturerNation" id="box1">
							<td>
						</tr>
						<tr>
							<td>취급시 주의사항</td>
							<td><input type="text" value="${rf.modelNotice }" name="modelNotice" id="box1">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text"  value="${rf.modelWarranty }" id="box1" name="modelWarranty"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" value="${rf.modelAdmin}" name="modelAdmin" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>침구류/커튼 리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제품 소재</td>
							<td><input type="text" id="box1"><br>섬유의 조성 또는
								혼용률을 백분율로 입력 충전잴르 사용한<br>제품은 충전재를 함께 입력
							<td>
						</tr>
						<tr>
							<td>색상</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>치수</td>
							<td><input type="text" id="box1"
								placeholder="가로/세로/높이 입력(단위표시)">
							<td>
						</tr>
						<tr>
							<td>제품구성</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>세탁방법 및 취급시<br>주의사항
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>가구(침대,소파,싱크대,DIY제품)리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>KC인증 필 유무</td>
							<td><input type="text" id="box1"><br>품질경영 및 공산품
								안전과리법 상 안전.품질표시<br>대상 공산품에 한해 인증유무 입력
							<td>
						</tr>
						<tr>
							<td>색상</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>구성품</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>주요 소재</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" id="box1"
								placeholder=" 구성품 별 제조자가 다른 경우 각 구성품의 제조자, 수입자">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1"
								placeholder=" 구성품 별 제조국이 다른 경우 각 구성품의 제조국">
							<td>
						</tr>
						<tr>
							<td>세탁방법 및 취급시<br>주의사항
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>크기</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>배송.설치비용</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>영상가전(TV류) 리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>KC인증 필 유무</td>
							<td><input type="text" id="box1"><br>전기용품안전관리법
								상 안전인증대상전기용품,<br>공급자적합성확인대상전기용품에 한함
							<td>
						</tr>
						<tr>
							<td>정격전압,고비전력</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>에너지소비효율등급</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>동일모델의 출시년월</td>
							<td><input type="text" id="box1" placeholder="예) 2019년 10월">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>크기</td>
							<td><input type="text" id="box1"
								placeholder="가로/세로/높이 입력(단위표시)">
							<td>
						</tr>
						<tr>
							<td>화면사양</td>
							<td><input type="text" id="box1"
								placeholder="크기,해상도,화면비율 입력">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>가정용 전기제품(냉장고,세탁기,전자레인지)리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>KC인증 필 유무</td>
							<td><input type="text" id="box1"><br>전기용품안전관리법
								상 안전인증대상전기용품,<br>공급자적합성확인대상전기용품에 한함
							<td>
						</tr>
						<tr>
							<td>정격전압,고비전력</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>에너지소비효율등급</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>동일모델의 출시년월</td>
							<td><input type="text" id="box1" placeholder="예) 2019년 10월">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>크기</td>
							<td><input type="text" id="box1"
								placeholder="가로/세로/높이 입력(단위표시)">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>계절가전(에어컨,온풍기) 리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>KC인증 필 유무</td>
							<td><input type="text" id="box1"><br>전기용품안전관리법
								상 안전인증대상전기용품,<br>공급자적합성확인대상전기용품에 한함
							<td>
						</tr>
						<tr>
							<td>정격전압,고비전력</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>에너지소비효율등급</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>동일모델의 출시년월</td>
							<td><input type="text" id="box1" placeholder="예) 2019년 10월">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>크기</td>
							<td><input type="text" id="box1"
								placeholder="가로/세로/높이 입력(단위표시)">
							<td>
						</tr>
						<tr>
							<td>냉난방면적</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>추가설치비용</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>사무용기기(컴퓨터,노트북,프린터)리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>KC인증 필 유무</td>
							<td><input type="text" id="box1"><br>전파법 상
								인증대상상품에 한함, MIC 인증 필 혼용 가능
							<td>
						</tr>
						<tr>
							<td>정격전압,고비전력</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>에너지소비효율등급</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>동일모델의 출시년월</td>
							<td><input type="text" id="box1" placeholder="예) 2019년 10월">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>크기, 무게</td>
							<td><input type="text" id="box1"
								placeholder="가로/세로/높이 입력(단위표시),노트북인 경우 무게 입력">
							<td>
						</tr>
						<tr>
							<td>주요사양</td>
							<td><input type="text" id="box1"
								placeholder="컴퓨터와 노브북의 경우,성능/용량/운영체제 포함">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>공학기기(디지털카메라,캠코더) 리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>KC인증 필 유무</td>
							<td><input type="text" id="box1"><br>전파법 상
								인증대상상품에 한함,MIC 인증 필 혼용 가능
							<td>
						</tr>
						<tr>
							<td>동일모델의 출시년월</td>
							<td><input type="text" id="box1" placeholder="예) 2019년 10월">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>크기, 무게</td>
							<td><input type="text" id="box1"
								placeholder="예) 가로/세로/높이 및 무게 입력(단위표시)">
							<td>
						</tr>
						<tr>
							<td>주요 사양</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>소형전자(MP3,전자사전 등) 리워드 정보 제공 고시 내용을 입력하세요</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>KC인증 필 유무</td>
							<td><input type="text" id="box1"><br>전파법 상
								인증대상상품에 한함,MIC 인증 필 혼용 가능
							<td>
						</tr>
						<tr>
							<td>정격전압,고비전력</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>동일모델의 출시년월</td>
							<td><input type="text" id="box1" placeholder="예) 2019년 10월">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>크기, 무게</td>
							<td><input type="text" id="box1"
								placeholder="예) 가로/세로/높이 및 무게 입력(단위표시)">
							<td>
						</tr>
						<tr>
							<td>주요사양</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>휴대폰 리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>KC인증 필 유무</td>
							<td><input type="text" id="box1"><br>전파법 상
								인증대상상품에 한함,MIC 인증 필 혼용 가능
							<td>
						</tr>
						<tr>
							<td>동일모델의 출시년월</td>
							<td><input type="text" id="box1" placeholder="예) 2019년 10월">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>크기, 무게</td>
							<td><input type="text" id="box1"
								placeholder="예) 가로/세로/높이 및 무게 입력(단위표시)">
							<td>
						</tr>
						<tr>
							<td>이동통신사</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>가입절차</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>소비자의 추가적인<br>부담사항
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>주요사양</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>내비게이션</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>KC인증 필 유무</td>
							<td><input type="text" id="box1"><br>전파법 상
								인증대상상품에 한함,MIC 인증 필 혼용 가능
							<td>
						</tr>
						<tr>
							<td>정격전압,고비전력</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>동일모델의 출시년월</td>
							<td><input type="text" id="box1" placeholder="예) 2019년 10월">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>크기, 무게</td>
							<td><input type="text" id="box1"
								placeholder="예) 가로/세로/높이 및 무게 입력(단위표시)">
							<td>
						</tr>
						<tr>
							<td>주요사양</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>맵 업데이트 비용 및 <br>무상기간
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>자동차용품(자동차부품,기타 용품)리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>KC인증 필 유무</td>
							<td><input type="text" id="box1"><br>자동차관리법에 따른
								자기인증 대상 자동차부붐에 한함
							<td>
						</tr>
						<tr>
							<td>동일모델의 출시년월</td>
							<td><input type="text" id="box1" placeholder="예) 2019년 10월">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>크기</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>적용차종</td>
							<td><input type="text" id="box1"
								placeholder=" 전 차종 적용 가능한 경우,'전 차종'으로 입력">
							<td>
						</tr>
						<tr>
							<td>제품사용으로 인한 위험<br>및 유의사항
							</td>
							<td><input type="text" id="box1" placeholder="연료절감장치에 한함">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>의료기기 리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>의료기기법상 허가 신고<br>번호 및 광고사전심의 필 유무
							</td>
							<td><input type="text" id="box1"
								placeholder="예) 제허10-0001호/2019-199-11-9111"><br>의료기기법상
								허가.신고 번호는 허가.신고대상<br>의료기기에 한함 광고사전 심의필 완료
							<td>
						</tr>
						<tr>
							<td>색상</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>치수</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제품의 사용목적 및<br>사용방법
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>취급시 주의사항</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>주방용품 리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>재질</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>구성품</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>크기</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>동일모델의 출시년월</td>
							<td><input type="text" id="box1" placeholder="예) 2019년 10월">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>식품위생법에 따른 수입<br>기구.용기의 경우 식품<br>위생법에 따른 수입신고<br>를
								필함
							</td>
							<td><input type="text" id="box1"
								placeholder="수입품인 경우,식품의생법에 따른 수입신고를 필함">
							<td>
						</tr>
						<tr>
							<td>제조연월</td>
							<td><input type="text" id="box1" placeholder="예) 2019년 10월">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>화장품 리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>용량 또는 중량</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제품 주요 사양</td>
							<td><input type="text" id="box1" placeholder="피부타입,색상(호,번)등">
							<td>
						</tr>
						<tr>
							<td>사용기한 또는 <br>개봉후 사용기간
							</td>
							<td><input type="text" id="box1"
								placeholder="개봉 후 사용기간을 기재할 경우에는 제조연월일도 입력">
							<td>
						</tr>
						<tr>
							<td>사용방법</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조업자 및 책임(제조)<br>판매업자
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>화장품법에 따라 기재<br>표시하여야 하는 모든 성분
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>기능성 화장품의 경우 화장품법에 따른 식품의약 품안전처 심사 필 유무</td>
							<td><input type="text" id="box1"><br>
								<p>
									미백, 주름개선, 자외선차단 등 해당 해당사항 없는 경우,<br> 해당사항 없음 입력
								</p>
							<td>
						</tr>
						<tr>
							<td>사용시 주의사항</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>귀금속/보석/시계류 리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>소재/순도/밴드재질</td>
							<td><input type="text" id="box1"><br>밴드는 시계의
								경우만 입력
							<td>
						</tr>
						<tr>
							<td>중량</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>치수</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1"><br>원산지와 가공지
								등이 다를 경우 함께 입력
							<td>
						</tr>
						<tr>
							<td>착용 시 주의사항</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>귀금속 보석류 주요 사항</td>
							<td><input type="text" id="box1"><br>등급 등 입력
								해당사항 없는경우,해당사항 없음 입력
							<td>
						</tr>
						<tr>
							<td>시계 주요 사항</td>
							<td><input type="text" id="box1"><br>기능,방수 등 입력

							
							<td>
						</tr>
						<tr>
							<td>보증서 제공 여부</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>식품(농수산물) 리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>포장 단위별 용량(중량),<br>수량,크기
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>생산자</td>
							<td><input type="text" id="box1"><br>수입품인 경우,
								수입자를 함께 표기
							<td>
						</tr>
						<tr>
							<td>원산지</td>
							<td><input type="text" id="box1"><br>농수산물의 원산지
								표시에 관한 법률에 따른 원산지 표기
							<td>
						</tr>
						<tr>
							<td>제조연월(포장일 또는<br>생산연도),유통기한 또는<br>품질유지기한
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>관련 법상 표시 사항</td>
							<td><input type="text" id="box1"><br>농산물인 경우,
								농수산물품질관리법상 유전자변형농산물 표시,<br>지리적 표시 축산물인 경우, 축산법에 따른 등급 표시 <br>(쇠고기는
								이력관리에 따른 표시 유무) 수산물인 경우, 농수산물품질<br>관리법상 유전자변형수산물 표시, 지리적 표시
								수입식품인 경우,<br> "식품위생법에 따른 수입신고를 필함" 문구 입력
							<td>
						</tr>
						<tr>
							<td>상품 구성</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>보관방법 또는 취급방법</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>소비자상담 관련 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
						<tr>
							<td>메이커 소재지</td>
							<td><input type="text" id="box1"><br>원산지(제조사의
								소재지 등)과 별개로 메이커 본인의 실제 소재지 입력
							<td>
						</tr>
						<tr>
							<td>사업자등록번호</td>
							<td><input type="text" id="box1"><br>메이커 본인의
								사업자등록번호 입력
							<td>
						</tr>
						<tr>
							<td>사업자등록증 상의 업종</td>
							<td><input type="text" id="box1"><br>메이커 본인의
								사업자등록증 상의 업종 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>가공식품 리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>식품의 유형</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>생산자 및 소재지</td>
							<td><input type="text" id="box1"><br>수입품의 경우
								수입자를 함께 입력
							<td>
						</tr>
						<tr>
							<td>제조년월일,유통기한 <br>또는 품질유지기한
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>포장단위별 용량(중량)<br>,수량
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>원재료명 및 함량</td>
							<td><input type="text" id="box1"><br>농수산물의 원산지
								표시에 관한 법률에 따른 원산지 표시 포함
							<td>
						</tr>
						<tr>
							<td>영양성분</td>
							<td><input type="text" id="box1"><br>식품위생법에 따른
								영양성분 표시대상 식품에 한함
							<td>
						</tr>
						<tr>
							<td>유전자변형식품에<br>해당하는 경우의 표시
							</td>
							<td><input type="text" id="box1"><br>"식품위생법에 따른
								수입신고를 필함"혹은"유전자재조합식품"입력
							<td>
						</tr>
						<tr>
							<td>영유아식 또는 체중조절식품 등에 해당하는 경우 표시광고사전심의필 유무 및 부작용 <br>발생
								가능성
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>수입식품에 해당하는 경우 "식품위생법에 따른 수입신고를 필함"의 문구</td>
							<td><input type="text" id="box1"><br>수입 식품인
								경우에만 해당 문구 입력
							<td>
						</tr>
						<tr>
							<td>소비자상담 관련 전화번호</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>메이커 소재지</td>
							<td><input type="text" id="box1"><br>원산지(제조사의
								소재지 등)과 별개로 메이커 본인의 실제 소재지 입력
							<td>
						</tr>
						<tr>
							<td>사업자등록번호</td>
							<td><input type="text" id="box1"><br>메이커 본인의
								사업자등록번호 입력
							<td>
						</tr>
						<tr>
							<td>사업자등록증 상의 업종</td>
							<td><input type="text" id="box1"><br>메이커 본인의
								사업자등록증 상의 업종 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>건강 기능 식품 리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>식품의 유형</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>생산자 및 소재지</td>
							<td><input type="text" id="box1"><br>수입품의 경우
								수입업소명,제조업소명 및 수출국명 입력
							<td>
						</tr>
						<tr>
							<td>제조년월일,유통기한 <br>또는 품질유지기한
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>포장단위별 용량(중량)<br>,수량
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>원재료명 및 함량</td>
							<td><input type="text" id="box1"><br>농수산물의 원산지
								표시에 관한 법률에 따른 원산지 표시 포함
							<td>
						</tr>
						<tr>
							<td>영양정보</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>섭취량, 섭취방법 및 섭취 시 주의사항 및 부작용 가능성</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>질병의 예방 및 치료를 위한 의약품이 아니라는 내용의 표현</td>
							<td><input type="text" id="box1"
								placeholder="예) 본 제품은 질병의 예방 및 치료를 위한 의약품이 아닙니다.">
							<td>
						</tr>
						<tr>
							<td>유전자변형건강기능식품에 해당하는 경우의 표시</td>
							<td><input type="text" id="box1"><br>"해당사항 없음"
								혹은 "유전자재조합식품" 입력
							<td>
						</tr>
						<tr>
							<td>표시광고 사전심의필</td>
							<td><input type="text" id="box1"><br>심의번호 입력
							<td>
						</tr>
						<tr>
							<td>수입식품에 해당하는 경우 "건강기능식품에 관한 법률에 따른 수입신고를 필함"</td>
							<td><input type="text" id="box1"><br>수입 식품인
								경우에만 해당 문구 입력
							<td>
						</tr>
						<tr>
							<td>소비자상담 관련 전화번호</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>메이커 소재지</td>
							<td><input type="text" id="box1"><br>원산지(제조사의
								소재지 등)과 별개로 메이커 본인의 실제 소재지 입력
							<td>
						</tr>
						<tr>
							<td>사업자등록번호</td>
							<td><input type="text" id="box1"><br>메이커 본인의
								사업자등록번호 입력
							<td>
						</tr>
						<tr>
							<td>사업자등록증 상의 업종</td>
							<td><input type="text" id="box1"><br>메이커 본인의
								사업자등록증 상의 업종 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>영유아 용품 리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>KC인증 필 유무</td>
							<td><input type="text" id="box1"><br>어린이제품 안전
								특별법 상 안전인증대상어린이제품,<br>안전확인대상어린이제품에 한해 입력
							<td>
						</tr>
						<tr>
							<td>크기,중량</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>색상</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>재질</td>
							<td><input type="text" id="box1"><br>섬유의 경우 혼용률
								입력
							<td>
						</tr>
						<tr>
							<td>사용연령 또는 체중범위</td>
							<td><input type="text" id="box1"><br>어린이제품 안전
								특별법에 따라 표시해야 하는 사항은 반드시 입력
							<td>
						</tr>
						<tr>
							<td>동일모델의 출시년월</td>
							<td><input type="text" id="box1" placeholder="예) 2019년 10월">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>취급방법 및 취급시 <br>주의사항, 안전표시
							</td>
							<td><input type="text" id="box1"><br>주의, 경고 등
								입력
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>악기 리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>크기</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>색상</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>재질</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제품 구성</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>동일모델의 출시년월</td>
							<td><input type="text" id="box1" placeholder="예) 2019년 10월">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>상품별 세부 사항</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>스포츠용품 리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>크기, 중량</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>색상</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>재질</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제품 구성</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>동일모델의 출시년월</td>
							<td><input type="text" id="box1" placeholder="예) 2019년 10월">
							<td>
						</tr>
						<tr>
							<td>제조사(수입자)</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>상품별 세부 사항</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>품질보증기준</td>
							<td><input type="text" id="box1"
								placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름">
							<td>
						</tr>
						<tr>
							<td>A/S 책임자와 전화번호</td>
							<td><input type="text" id="box1"><br>담당자 이름 표기가
								어려울 경우,업체명 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>서적 리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>도서명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>저자, 출판사</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>크기</td>
							<td><input type="text" id="box1"><br>전자책의 경우
								파일의 용량 입력
							<td>
						</tr>
						<tr>
							<td>쪽수</td>
							<td><input type="text" id="box1"><br>전자책의 경우 제외

							
							<td>
						</tr>
						<tr>
							<td>제품 구성</td>
							<td><input type="text" id="box1"><br>전집 또는 세트일
								경우 낱권 구성, CD등 입력
							<td>
						</tr>
						<tr>
							<td>제조국</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>출간일</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>목차 또는 책소개</td>
							<td><input type="text" id="box1"><br>아동용 학습교재의
								경우 사용연령을 포함하여 입력
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>호텔/팬션 예약 리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>국가 또는 지역명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>숙소형태</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>등급, 객실타입</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>사용가능 인원,<br>인원추가시 비용
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>부대시설, 제공 <br>서비스 (조식 등)
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>취소 규정(환불, 위약금 등)</td>
							<td><input type="text" id="box1"><br>"펀딩안내 탭
								참조"로 입력
							<td>
						</tr>
						<tr>
							<td>예약담당 연락처</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>여행패키지 리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>여행사</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>이용항공편</td>
							<td><input type="text" id="box1"><br>항공사,항공기명
								입력
							<td>
						</tr>
						<tr>
							<td>여행기간 및 일정</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>총 예정 인원, <br>출발 가능 인원
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>숙박정보</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>여행상품 가격</td>
							<td><input type="text" id="box1"><br>유류할증료,
								공항이용료, 전쟁보험료, 관광진흥개발기금, 운송요금,<br>숙박요금, 식사요금, 가이드 경비,
								여행자보험료, 현지관광입장료 등<br>소비자가 특정 여행상품을 선택할 경우 부담해야하는 모든 경비가<br>
								포함되어야함. 다만, 가이드 경비를 현지에서 지불하여야하는 경우<br> 별도로 그 금액을 표시할 수
								있으며, 현지에서 별도로 지불해야 한다는<br> 점 입력
							<td>
						</tr>
						<tr>
							<td>선택 경비 유무 등</td>
							<td><input type="text" id="box1"><br>선택관광 경비 등
								현지에서 개별 구매자의 필요나 선택에 의하여 지출<br>하게 되는 경비가 있는지 여부 및 소비자의 선택에
								따라 자유롭게 지불<br>할 수 있다는 점을 함께 입력
							<td>
						</tr>
						<tr>
							<td>선택관광 및 대체일정</td>
							<td><input type="text" id="box1"><br>선택관광 경비의
								금액 및 선택관광을 선택하지 않을 경우의 대체 일정을<br> 함께 입력
							<td>
						</tr>
						<tr>
							<td>가이드 팁</td>
							<td><input type="text" id="box1"><br>가이드 팁에 대하여
								기재할 경우에는 가이드 경비와 구별하여 자유롭게<br>지불여부를 결정할 수 있음을 표시하여야함.
								다만,정액으로 지불을 권장<br>하는 등 소비자가 필수적으로 지불하여야 하는 경비인 것처럼 오인하지 <br>않도록
								표시하여야 함
							<td>
						</tr>
						<tr>
							<td>취소 규정(환불, 위약금 등)</td>
							<td><input type="text" id="box1"><br>"펀딩안내 탭
								참조"로 입력
							<td>
						</tr>
						<tr>
							<td>해외여행의 경우 외교부가 <br>지정하는 여행경보단계
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>예약담당 연락처</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>항공권, 리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>요금조건,왕복・편도 여부</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>유효기간</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>제한사항</td>
							<td><input type="text" id="box1"><br>출발일,귀국일 변경
								가능 여부 등 입력
							<td>
						</tr>
						<tr>
							<td>티켓 수령 방법</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>좌석종류</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>가격에 포함되지 않은<br> 내역 및 금액
							</td>
							<td><input type="text" id="box1"><br>유류할증료,공강이용료
								등 입력
							<td>
						</tr>
						<tr>
							<td>취소 규정 <br>(환불, 위약금 등)
							</td>
							<td><input type="text" id="box1"><br>"펀딩안내 탭
								참조"로 입력
							<td>
						</tr>
						<tr>
							<td>예약담당 연락처</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>자동차 대여 서비스 (렌터카)리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>차종</td>
							<td><input type="text" id="box1"
								placeholder="예) 대형/중형/소형/전기차 구분이 어려울 경우, 차량 모델명 입력">
							<td>
						</tr>
						<tr>
							<td>소유권 이전 조건</td>
							<td><input type="text" id="box1"><br>소유권이 이전되는
								경우에 한해 입력
							<td>
						</tr>
						<tr>
							<td>추가 선택 시 비용</td>
							<td><input type="text" id="box1"><br>자차면책제도,
								내비게이션 등 입력
							<td>
						</tr>
						<tr>
							<td>차량 반환 시 연료대금 <br>정산 방법
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>차량의 고장・훼손 시 <br>소비자 책임
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>예약 취소 또는 중도<br>해약 시 환불 기준
							</td>
							<td><input type="text" id="box1"><br>"펀딩안내 탭
								참조"로 입력
							<td>
						</tr>
						<tr>
							<td>소비자상담 관련 전화번호</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>물품대여 서비스 (정수기, 비데 등)리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>소유권 이전 조건</td>
							<td><input type="text" id="box1"><br>소유권이 이전되는
								경우에 한하여 입력(소유권 이전에 필요한 렌탈기간<br> 또는 총 렌탈금액 등 요건을 구체적으로 입력)
							<td>
						</tr>
						<tr>
							<td>유지보수 조건</td>
							<td><input type="text" id="box1"><br>점검・필터교환
								주기, 추가비용 등
							<td>
						</tr>
						<tr>
							<td>상품의 고장・분실・훼손<br> 시 소비자 책임
							</td>
							<td><input type="text" id="box1"><br>"관련법 및
								소비자분쟁 해결 기준에 따름" 입력
							<td>
						</tr>
						<tr>
							<td>중도 해약 시 환불 기준</td>
							<td><input type="text" id="box1"><br>"펀딩안내 탭
								참조"로 입력
							<td>
						</tr>
						<tr>
							<td>제품 사양</td>
							<td><input type="text" id="box1"><br>용량, 소비전력 등
								입력
							<td>
						</tr>
						<tr>
							<td>소비자상담 관련 전화번호</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>물품대여서비스 (서적, 유아용품 등)리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>품명 및 모델명</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>소유권 이전 조건</td>
							<td><input type="text" id="box1"><br>소유권이 이전되는
								경우에 한하여 입력(소유권 이전에 필요한 렌탈기간<br> 또는 총 렌탈금액 등 요건을 구체적으로 입력)
							<td>
						</tr>
						<tr>
							<td>상품의 고장・분실・훼손<br> 시 소비자 책임
							</td>
							<td><input type="text" id="box1"><br>"관련법 및
								소비자분쟁 해결 기준에 따름" 입력
							<td>
						</tr>
						<tr>
							<td>중도 해약 시 환불 기준</td>
							<td><input type="text" id="box1"><br>"펀딩안내 탭
								참조"로 입력
							<td>
						</tr>
						<tr>
							<td>소비자상담 관련 전화번호</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>디지털 콘텐츠(음원 ,게임 등)리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>제작자 또는 공급자</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>이용조건, 이용기간</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>상품 제공 방식</td>
							<td><input type="text" id="box1"><br>CD, 다운로드,
								실시간 스트리밍 등 입력
							<td>
						</tr>
						<tr>
							<td>최소 시스템 사양,<br>필수 소프트웨어
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>청약철회 또는 계약의 <br>해제・해지에 따른 효과
							</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>소비자상담 관련 전화번호</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>모바일 쿠폰리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>발생자</td>
							<td><input type="text" id="box1"><br>쿠폰 발행자 상호
								입력
							<td>
						</tr>
						<tr>
							<td>유효기간,이용조건</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>이용 가능 매장</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>환불조건 및 방법</td>
							<td><input type="text" id="box1"><br>"펀딩안내 탭
								참조"로 입력
							<td>
						</tr>
						<tr>
							<td>소비자상담 관련 전화번호</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
					</table>
				</div>
				<div class="inputDiv">
					<h5>영화・공연리워드 정보 제공 고시 내용을 입력하세요.</h5>
					<table>
						<tr>
							<td>주최 또는 기획</td>
							<td><input type="text" id="box1"><br>공연에 한함
							<td>
						</tr>
						<tr>
							<td>주연</td>
							<td><input type="text" id="box1"><br>공연에 한함
							<td>
						</tr>
						<tr>
							<td>관람등급</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>상영・공연시간</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
						<tr>
							<td>상영・공연장소</td>
							<td><input type="text" id="box1">
							<td>
						</tr>

						<tr>
							<td>취소 규정 <br>(환불, 위약금 등)
							</td>
							<td><input type="text" id="box1"><br>"펀딩안내 탭
								참조"로 입력
							<td>
						</tr>
						<tr>
							<td>소비자상담 관련 전화번호</td>
							<td><input type="text" id="box1">
							<td>
						</tr>
					</table>
				</div>
			</div>
			<hr>
			<div>
				<h4>리워드 발송 예상 변동 기간</h4>
				<p>혹시라도 리워드 발송이 약속한 리워드 발송 시작일보다 지연될 가능성이 있다면,<br />지연될 수 있는 최대 기간을
					선택해주세요.</p>
				<select id="browsers1" name="dd">
					<option value="선택하세요">예상 발송 변동 기간선택</option>
					<option value="14일">최대 14일</option>
					<option value="30일">최대 30일</option>
				</select>
				<p>약속한 최대 발송 예상 변동 기간까지 리워드 발송이 되지 않는 경우, 서포터에게 전액 환불해주어야하며 이와
					관련된 내용을 새소식을 작성하여 서포터에게 알려주어야합니다.</p>
				<h4>교환/환불/AS 정책</h4>
				<p>펀딩 마감 후의 환불 및 교환 요청은 메이커가 약속하는 정책에 따릅니다. 서포터에게 약속할 수 있는 정책을
					신중하고 명확하게 작성해주세요. 특히 환불은 단순 변심, 환불 조건 등의 다양한 상황을 고려해야 합니다.</p>
				<textarea id="rules" rows="18" name="rules"
					style="width: 100%; font-size: 14px; resize: none;">  
	- 제품 하자로 인한 교환/수리 시, 발생하는 비용은 전액 메이커가 부담합니다
	- 리워드 수령 **일 내 동일 증상으로 **번 이상 수리 시, 환불 가능합니다.
	- 리워드 수령 **일 이내 제품 하자로 인한 교환/수리 문의는 **** 로 신청 가능합니다.
	- 제품 하자가 아닌 서포터님 부주의로 인한 제품 손상은 유상수리해 드립니다.
	- 교환/환불/AS 요청자 정보와 서포터 정보의 일치 여부 확인 후, 진행됩니다.

※교환/환불/AS 불가능한 경우
	- 서포터의 책임 있는 사유로 리워드가 멸실/훼손된 경우 (단지 확인을 위한 포장 훼손 제외)
	- 서포터의 사용/소비에 의해 리워드의 가치가 감소한 경우
	- 시간 경과로 인해 재판매가 곤란할 정도로 리워드의 가치가 상실한 경우
	- 서포터의 단순 변심
	- 메이커를 통한 교환/환불/AS 접수 절차 없이 임의로 반송한 경우
	- 복제가 가능한 리워드의 포장을 훼손한 경우
	- 펀딩/판매/생산방식 특성상, 교환/반품 시, 메이커에게 회복할 수 없는 손해가 발생한 경우 (펀딩마감 후, 개별 생산, 맞춤 제작 등)
          </textarea>
			</div>
			<div>
				<button type="button">저장하기</button>
				<button id="next">다음으로 ></button>
			</div>
		</form>
	</div>

	<script>
		function submit() {
			$("#mainForm").submit();
		}

		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#image_section').attr('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}

		$("#imgInput").change(function() {
			readURL(this);
		});

		function onChange() {
			var gubun = document.getElementById("browsers").options[document
					.getElementById("browsers").selectedIndex].index;

			var divArr = $(".inputDiv");

			var idx = gubun - 1;

			for (var i = 0; i < divArr.length; i++) {
				if (i == idx) {
					$(".inputBox").children().eq(idx).css("display", "block");
					console.log("도착");
				} else {
					$(".inputBox").children().eq(i).css("display", "none");
				}
			}
		}
	</script>
	<jsp:include page="../common/customer_footer.jsp" />

</body>
</html>






















