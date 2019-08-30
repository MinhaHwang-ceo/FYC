<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩하기</title>
<style>
	#menu {
	}
	li {
		list-style-type:none;
	}
	a {
		text-decoration:none;
		color:inherit;
	}
	#menu li {
		float:left;
		font-size: 10px; 
		background-color: White;
	}
	#menu a {
		display:block;
		height:35px;
		line-height:35px;
		padding:0 35px; 
		border: 1px solid rgb(246, 249, 249);
	}
	#personal {
		color:White;
	}
	#textbox {
		font-size:13px;
		color:red;
		border:1px solid red;
	}
	#inputBox {
		width:900px;
		height:800px;
		position:relatve;
		z-index:2;
		background:White;
		margin:0 auto;
	}
	#inputBox2 {
		width:800px;
		height:80%; 
		position:relatve;
		z-index:1;
		background:rgb(246, 249, 249);
		margin:0 auto;
		
	}
	#fno { 
		text-align:center;
	}
	th, td {
		padding:15px; 
	}
	table {
		border-spacing: 5px;
	}
	input {
		background-color:Lightgray;
		width:300px;
		height:40px; 
	}
	#browsers {
		width:300px;
		height:30px; 
	}
	input[type="checkbox"] {
    display:none;
}

input[type="checkbox"] + label {
    font-size:13px;
}

input[type="checkbox"] + label span {
    display:inline-block;
    width:15px;
    height:15px;
    margin:-2px 10px 0 0;
    vertical-align:middle;
    background:url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png) left top no-repeat;
    cursor:pointer;
}

input[type="checkbox"]:checked + label span {
    background:url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png) -19px top no-repeat;
}
#box1 {
	width:500px;
}
</style>
</head>
<body>
	<jsp:include page="../common/customer_menubar.jsp"/>
	<br>
	<div id="menu">
	<ul>
		<li>
			<a id="basic">기본정보</a>
		</li>
		<li>
			<a id="reward">리워드</a>
		</li>
		<li>
			<a id="story">스토리</a>
		</li>
		<li>
			<a id="aboutyou">메이커정보</a>
		</li>
		<li>
			<a id="cominhsoon">오픈예쩡</a>
		</li>
		<li>
			<a id="account">정산</a>
		</li>
		<li style="margin-left:20px;">
			<a id="preview">미리보기</a>
		</li>
		<li style="margin-left:20px;">
			<a id="personal" class="menu8" style="background-color: lightgreen">검토 요청하기</a>
		</li>
	</ul>
	</div>
	<br><br><br> 
		<div id="inputBox2" align="center">
		<br>
		<table style="align:center">
			<tr>
				<td><h5>소개 사진 등록하기</h5>
				- 프로젝트 상단에 올라갈 사진을<br> 올려주세요<br>
				여러 장 등록도 가능합니다.</td>
				<td id="fno">
					<img id="image_section" src="#" alt="your image"/><br>
					<form id="form" runat="server" style="background:Lightgray">
					<input type='file' id="imgInput"/>
					</form>
				</td>
			</tr>
			<tr>
				<td><h5>프로젝트 요약</h5>
				- 펀딩을 통해 무엇을 만들고 싶은지,<br>이루고 싶은 목표가 무엇인지 알려주세요.<br>
				- 서포터가 제품의 장점이나<br>
				특징을 잘 이해할 수 있도록<br>
				간략하게 소개하세요.</td>
				<td id="fno">
					<textarea rows="5" cols="40" style="width:300px; height:150px;">내용을 입력해주세요.</textarea> 
				</td>
			</tr>
			</table>
			
			<hr>
			
			<table>
			<tr>
				<td><h4>스토리</h4>
				<p style="color: red;">최초 승인 이후에는 스토리를 수정할 수 없습니다.</p></td>
			</tr>
			<tr>
				<td id="fno"><div style="width:400px; height:200px; overflow:scroll; padding:10px; border-style:solid; border-color:Lightgray;"></div></td>
				<td id="fno"><h5>스토리 가독성을 높이려면?</h5><br>
				<p>- 스토리는 이미지로 디자인하지 않고 <br>직접 텍스트를 작성하세요.
				<h5>최초 승인 이후에는 새소식을<br> 작성하세요.</h5>
				최초 승인 이후 스토리 수정은 불가하나,<br> 새소식은 자유롭게 작성할 수 있습니다.<br></td>
			</tr>
			</table>
			<hr>
			<p>리워드, 배송 등에 대한 이슈 발생 시 직접 작성한 아래 정책에 따라 펀딩이 진행되어야하니 신중하게<br>
			작성해주세요. 아래 입력한 모든 정보는 프로젝트 상세페이지 -펀딩 안내 탭에 노출됩니다.</p>
			<br>
			<h4>리워드 정보 제공 고시</h4>
			<p>전자상거래 등에서의 상품 등의 정보제공에 관한 고시법에 따라 서포터에게 리워드를 제공하기 위<br>
			해서는 리워드 정보 제공 고시를 필수로 입력해야 합낟.<br>
			서포터에게 제공하는 리워드의 종류를 선택하고, 해당하는 리워드 정보 제공 고시를 입력하세요.<br>
			여러 리워드를 제공하나 동일한 종류의 리워드인 경우, 종류를 한가지만 선택하고 모든 리워드의<br>
			내용을 함께 작성하여도 무방합니다.<br>
			입력한 리워드 정보 제공 고시는 펀딩안내 하단에 노출됩니다.</p>
			<div align="center">
			<select id="browsers" name="browsers" onchange="onChange();">
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
			</select>
			</div>
			<hr>
			<div class="inputBox">
				<div class="outer">
				<h5>의류 리워드 정보 제공 고시 내용을 입력하세요</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>구두/신발 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>가방 리워드 정보 제공 고시 내용을 입력하세요</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>종류</td>
						<td><input type="text" id="box1" placeholder="예) 숄더백, 백팩, 서류가방 등"><td>
					</tr>
					<tr>
						<td>소재</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>크기</td>
						<td><input type="text" id="box1" placeholder="가로,세로,끈길이 등"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>취급시 주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>패션잡화(모자,벨트,액세서리) 리워드 정보 제공 고시 내용을 입력하세요</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>종류</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>소재</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>취급시 주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>침구류/커튼 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 충전잴르 사용한<br>제품은 충전재를 함께 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1" placeholder="가로/세로/높이 입력(단위표시)"><td>
					</tr>
					<tr>
						<td>제품구성</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>가구(침대,소파,싱크대,DIY제품)리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>KC인증 필 유무</td>
						<td><input type="text" id="box1"><br>품질경영 및 공산품 안전과리법 상 안전.품질표시<br>대상 공산품에 한해 인증유무 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>구성품</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>주요 소재</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1" placeholder=" 구성품 별 제조자가 다른 경우 각 구성품의 제조자, 수입자"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1" placeholder=" 구성품 별 제조국이 다른 경우 각 구성품의 제조국"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>크기</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>배송.설치비용</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>영상가전(TV류) 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>KC인증 필 유무</td>
						<td><input type="text" id="box1"><br>전기용품안전관리법 상 안전인증대상전기용품,<br>공급자적합성확인대상전기용품에 한함<td>
					</tr>
					<tr>
						<td>정격전압,고비전력</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>에너지소비효율등급</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>동일모델의 출시년월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>크기</td>
						<td><input type="text" id="box1" placeholder="가로/세로/높이 입력(단위표시)"><td>
					</tr>
					<tr>
						<td>화면사양</td>
						<td><input type="text" id="box1" placeholder="크기,해상도,화면비율 입력"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>가정용 전기제품(냉장고,세탁기,전자레인지)리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>KC인증 필 유무</td>
						<td><input type="text" id="box1"><br>전기용품안전관리법 상 안전인증대상전기용품,<br>공급자적합성확인대상전기용품에 한함<td>
					</tr>
					<tr>
						<td>정격전압,고비전력</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>에너지소비효율등급</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>동일모델의 출시년월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>크기</td>
						<td><input type="text" id="box1" placeholder="가로/세로/높이 입력(단위표시)"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>계절가전(에어컨,온풍기) 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>KC인증 필 유무</td>
						<td><input type="text" id="box1"><br>전기용품안전관리법 상 안전인증대상전기용품,<br>공급자적합성확인대상전기용품에 한함<td>
					</tr>
					<tr>
						<td>정격전압,고비전력</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>에너지소비효율등급</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>동일모델의 출시년월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>크기</td>
						<td><input type="text" id="box1" placeholder="가로/세로/높이 입력(단위표시)"><td>
					</tr>
					<tr>
						<td>냉난방면적</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>추가설치비용</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>사무용기기(컴퓨터,노트북,프린터)리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>KC인증 필 유무</td>
						<td><input type="text" id="box1"><br>전파법 상 인증대상상품에 한함, MIC 인증 필 혼용 가능<td>
					</tr>
					<tr>
						<td>정격전압,고비전력</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>에너지소비효율등급</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>동일모델의 출시년월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>크기, 무게</td>
						<td><input type="text" id="box1" placeholder="가로/세로/높이 입력(단위표시),노트북인 경우 무게 입력"><td>
					</tr>
					<tr>
						<td>주요사양</td>
						<td><input type="text" id="box1" placeholder="컴퓨터와 노브북의 경우,성능/용량/운영체제 포함"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>공학기기(디지털카메라,캠코더) 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>KC인증 필 유무</td>
						<td><input type="text" id="box1"><br>전파법 상 인증대상상품에 한함,MIC 인증 필 혼용 가능<td>
					</tr>
					<tr>
						<td>동일모델의 출시년월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>크기, 무게</td>
						<td><input type="text" id="box1" placeholder="예) 가로/세로/높이 및 무게 입력(단위표시)"><td>
					</tr>
					<tr>
						<td>주요 사양</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>소형전자(MP3,전자사전 등) 리워드 정보 제공 고시 내용을 입력하세요</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>KC인증 필 유무</td>
						<td><input type="text" id="box1"><br>전파법 상 인증대상상품에 한함,MIC 인증 필 혼용 가능<td>
					</tr>
					<tr>
						<td>정격전압,고비전력</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>동일모델의 출시년월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>크기, 무게</td>
						<td><input type="text" id="box1" placeholder="예) 가로/세로/높이 및 무게 입력(단위표시)"><td>
					</tr>
					<tr>
						<td>주요사양</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>휴대폰 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>KC인증 필 유무</td>
						<td><input type="text" id="box1"><br>전파법 상 인증대상상품에 한함,MIC 인증 필 혼용 가능<td>
					</tr>
					<tr>
						<td>동일모델의 출시년월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>크기, 무게</td>
						<td><input type="text" id="box1" placeholder="예) 가로/세로/높이 및 무게 입력(단위표시)"><td>
					</tr>
					<tr>
						<td>이동통신사</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>가입절차</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>소비자의 추가적인<br>부담사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>주요사양</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>내비게이션</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>KC인증 필 유무</td>
						<td><input type="text" id="box1"><br>전파법 상 인증대상상품에 한함,MIC 인증 필 혼용 가능<td>
					</tr>
					<tr>
						<td>정격전압,고비전력</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>동일모델의 출시년월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>크기, 무게</td>
						<td><input type="text" id="box1" placeholder="예) 가로/세로/높이 및 무게 입력(단위표시)"><td>
					</tr>
					<tr>
						<td>주요사양</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>맵 업데이트 비용 및 <br>무상기간</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>자동차용품(자동차부품,기타 용품)리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>KC인증 필 유무</td>
						<td><input type="text" id="box1"><br>자동차관리법에 따른 자기인증 대상 자동차부붐에 한함<td>
					</tr>
					<tr>
						<td>동일모델의 출시년월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>크기</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>적용차종</td>
						<td><input type="text" id="box1" placeholder=" 전 차종 적용 가능한 경우,'전 차종'으로 입력"><td>
					</tr>
					<tr>
						<td>제품사용으로 인한 위험<br>및 유의사항</td>
						<td><input type="text" id="box1" placeholder="연료절감장치에 한함"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>의료기기 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>의료기기법상 허가 신고<br>번호 및 광고사전심의 필 유무</td>
						<td><input type="text" id="box1" placeholder="예) 제허10-0001호/2019-199-11-9111"><br>의료기기법상 허가.신고 번호는 허가.신고대상<br>의료기기에 한함 광고사전 심의필 완료<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>구두/신발 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>구두/신발 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>구두/신발 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>구두/신발 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>구두/신발 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>구두/신발 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>구두/신발 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>구두/신발 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>구두/신발 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>구두/신발 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>구두/신발 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>구두/신발 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>구두/신발 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>구두/신발 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>구두/신발 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>구두/신발 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>구두/신발 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
			<div class="outer">
				<h5>구두/신발 리워드 정보 제공 고시 내용을 입력하세요.</h5>
				<table>
					<tr>
						<td>품명 및 모델명</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제품 소재</td>
						<td><input type="text" id="box1"><br>섬유의 조성 또는 혼용률을 백분율로 입력 기능성인 경우 성적서 또는<br>허가서 내용 입력<td>
					</tr>
					<tr>
						<td>색상</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>치수</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조사(수입자)</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조국</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>세탁방법 및 취급시<br>주의사항</td>
						<td><input type="text" id="box1"><td>
					</tr>
					<tr>
						<td>제조연월</td>
						<td><input type="text" id="box1" placeholder="예) 2019년 10월"><td>
					</tr>
					<tr>
						<td>품질보증기준</td>
						<td><input type="text" id="box1" placeholder="예) 관련법 및 소비자분쟁해결 기준에 따름"><td>
					</tr>
					<tr>
						<td>A/S 책임자와 전화번호</td>
						<td><input type="text" id="box1" placeholder="담당자 이름 표기가 어려울 경우, 업체명 입력"><td>
					</tr>
				</table>
			</div>
		</div>
	</div>
		<script>
		function readURL(input) {
			 if (input.files && input.files[0]) {
			  var reader = new FileReader();
			  
			  reader.onload = function (e) {
			   $('#image_section').attr('src', e.target.result);  
			  }
			  
			  reader.readAsDataURL(input.files[0]);
			  }
			}
			  
			$("#imgInput").change(function(){
			   readURL(this);
			});
			
			function onChange() {
		         var gubun = document.getElementById("browsers").options[document
		               .getElementById("browsers").selectedIndex].index;

		         var divArr = $(".outer");

		         var idx = gubun - 1;
		         
		         for (var i = 0; i < divArr.length; i++) {
		            if (i == idx) {
		               $("#inputBox").children().eq(idx).css("display", "block");
		               console.log("도착");
		            } else {
		               $("#inputBox").children().eq(i).css("display", "none");
		            }
		         }
		      }
	</script>
	<jsp:include page="../common/customer_footer.jsp"/>

</body>
</html>






















