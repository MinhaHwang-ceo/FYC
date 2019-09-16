<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펀딩하기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">
<style>
	body {
		background-color: rgb(246, 249, 249);
		font-family: 'Sunflower', sans-serif;
	}
	#menu {
	font-family: 'Sunflower', sans-serif;
	}
	li {
		list-style-type:none;
		font-family: 'Sunflower', sans-serif;
	}
	a {
		text-decoration:none;
		color:inherit;
		font-family: 'Sunflower', sans-serif;
	}
	#menu li {
		float:left;
		font-size: 10px; 
		background-color: White;
		font-family: 'Sunflower', sans-serif;
	}
	#menu a {
		display:block;
		height:35px;
		line-height:35px;
		padding:0 35px;
		border: 1px solid rgb(246, 249, 249);
		font-family: 'Sunflower', sans-serif;
	}
	#personal {
		color:White;
		font-family: 'Sunflower', sans-serif;
	}
	#textbox {
		font-size:13px;
		color:red;
		border:1px solid red;
		font-family: 'Sunflower', sans-serif;
	}
	#inputBox {
		width:900px;
		position:relatve;
		z-index:2;
		background:White;
		margin:0 auto;
		font-family: 'Sunflower', sans-serif;
	}
	#fno {
		width:400px;
		height:100px; 
		
		font-family: 'Sunflower', sans-serif;
	}
	table {
		border-spacing:50px;
		margin-left:20px; 
		font-family: 'Sunflower', sans-serif;

	}
	input {
		background-color:Lightgray;
		width:300px;
		height:50px; 
		font-family: 'Sunflower', sans-serif;
	}
	#browsers {
		width:300px;
		height:30px; 
		font-family: 'Sunflower', sans-serif;
	}
	input[type="checkbox"] {
    display:none;
    font-family: 'Sunflower', sans-serif;
}

input[type="checkbox"] + label {
    font-size:13px;
    font-family: 'Sunflower', sans-serif;
}

input[type="checkbox"] + label span {
    display:inline-block;
    width:15px;
    height:15px;
    margin:-2px 10px 0 0;
    vertical-align:middle;
    background:url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png) left top no-repeat;
    cursor:pointer;
    font-family: 'Sunflower', sans-serif;
}

input[type="checkbox"]:checked + label span {
    background:url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png) -19px top no-repeat;
}
td {
		padding:10px;
		padding-left:20px;
		font-family: 'Sunflower', sans-serif;
	}
	tr{
		padding:10px;
		padding-right: 20px;
		font-family: 'Sunflower', sans-serif;
	}
	#contentImgArea1 {
		width:150px;
		height:100px;
		border:2px dashed darkgray;
		text-align:center;
		display:table-cell;
		vertical-align:middle;
	}
	#contentImgArea1:hover{
		cursor:pointer;
	}
	#c2 {
		
	}
</style>
</head>
	<jsp:include page="../common/customer_menuList.jsp"/>
	<br>
	<div>
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
	<br><br>
	<div id="textbox" align="center">
		<p>알림 | 30분 동안 입력 또는 작성 단계별 저장이 진행되지 않으면 자동으로 로그아웃 되며, 저장하지 않은 입력값은 반영 되지 않으니 주의하시기 바랍니다.</p>
	</div>
	<br> 
	
	<div id="inputBox" align="center">
		<form id="saveForm" action="FundingOpen4.fd" method="post" enctype="multipart/form-data">
	<input type="hidden" id="projectNo" value="${p.projectNo}" name="projectNo" />
	<input type="hidden" id="userNo" value="${p.userNo}" name="userNo" />
		<div id="inputBox2" align="center">
		<table>
			<tr>
				<td style="background:White"><h3>프로젝트 번호</h3>
				<p>구름펀딩 담당자와의 소통은<br>프로젝트 번호로 진행됩니다.</p></td>
				<td id="fno"><input readonly="readonly" type="text" value="${p.projectNo}"></td>
			</tr>
			<tr>
				<td style="background:White"><h3>연락처</h3>
				<p>주요 안내를 받으실 이메일<br>과 휴대폰 번호를 등록해 주세요<br>정보 변경은 회원정보설정에서<br> 가능합니다.</p></td>
				<td id="fno">
					<input type="text" placeholder="연락처" id="phone" name="phone"> 
					<br><br> 
					<input type="email" value="${ loginUser.email }" id="email" readonly="readonly">
				</td>
			</tr>
			<tr>
				<td style="background:White"><h3>프로젝트 제목</h3>
				<p>프로젝트 성격과 리워드를 짐작<br>할 수 있게 간결하고 직관적으로<br> 작성 해주세요.</p></td>
				<td id="fno"><input type="text" placeholder="예)더 가벼워진 권석이,동양 무술의 신비" name="projectTitle"></td>
			</tr>
			<tr>
				<td style="background:White"><h3>짧은 제목</h3>
				<p>검색, 알림 등에 사용되는 짧은<br>제목도 함께 작성해주세요.<br></p></td>
				<td id="fno"><input type="text" placeholder="예)#무술의 신비" name="projectShortTitle"></td>
			</tr>
			<tr>
				<td style="background:White"><h3>목표 금액</h3>
				<p>마감일 자정 기준 목표금액 <br>미달성 시,펀딩은 취소됩니다.<br>(평균 목표금액 : 300만원)</p></td>
				<td id="fno"><input type="text" placeholder="0" name="money" style="text-align: right;">
				<em>원</em>
				</td>
			</tr>
			<tr>
				<td style="background:White"><h3>대표 이미지</h3>
				<p>메이커와 리워드가 함께<br>있거나,프로젝트의 성격이<br>한눈에 드러나는 사진이 좋습니다.</p></td>
				<td id="fno">
				<div id="contentImgArea1">
					<img id="contentImg1" width="302" height="160" name="">
				</div>
					<!-- <form id="form" runat="server" style="background:Lightgray">
					   <img id="image_section" src="#" alt="your image"/>
					   <input type='file' id="imgInput"/>
					</form> -->
				</td>
			</tr>
			<tr>
				<td>
					<div id="fileArea">
						<input type="file" id="photo" name="photo" onchange="loadImg(this, 1)">
					</div>
					<br />
				</td>
			</tr>
			<tr>
				<td style="background:White"><h3>리워드 필수 인증서류</h3>
				<p>서포터에게 제공할 리워드<br>(제품/서비스)의 생산 및 유통시,<br>필요한 인증서류를 첨부해주세요.</p></td>
				<td id="fno" style="background:Lightgray; height:300px;">
					<h4>서포터에게 제공하는 리워드 종류 선택</h4>
				<select id="browsers" name="category">
					<option value="">카테고리 선택하기</option>
					<option value="A1">테크-가전</option>
					<option value="A2">패션-잡화</option>
					<option value="A3">키즈</option>
					<option value="A4">여행-레저</option>
					<option value="A5">뷰티</option>
					<option value="A6">도서</option>
					<option value="A7">반려동물</option>
					<option value="A8">스포츠</option>
					<option value="A9">푸드</option>
					<option value="A10">홈리빙</option>	   
				</select>
					<hr>
					<h5>리워드 종류에 맞는 최소한의 인증 서류를 <br>받고 있습니다.</h5>
					<script>
						function openTextarea(check){
							$("#c2").click(function(){
								if(check.checked == true) {
									myDiv.style.display = '';
									
								}else{
									myDiv.style.display = 'none'
								}
							});
							
						}
					</script>
					<input type="checkbox" id="c1" name="cc1" />
   					 <label for="c1"><span></span>제공할 리워드에 맞는 서류를 확인하고,<br>
   					서뷰를 메일로 전송하셨나여?</label><br><br>
   					<input type="checkbox" onclick="openTextarea(this);"  id="c2" name="cc2" />
   					<label for="c2"><span></span>서류를 첨부하지 않겠습니다.</label>
   					<div id="myDiv" style="border: 1px solid red; margin-left:23px; display:none">
   						<input name="park"  type="radio" style="width:14px;height:14px;">
   						<label style="font-size: 10px;">상단의 첨부 서류 알아 서류를 제출 제출하지 않아도 되는  리워드입니다.</label>
   						<br />
   						<input name="park" type="radio" style="width:14px;height:14px;">
   						<label style="font-size: 10px;">(해당되는 경우에만) 프로젝트 종료 전까지 서류를 제출해도 되는 리워드입니다.</label>
   						<br>
   						<input name="park" type="radio" style="width:14px;height:14px;">
   						<label style="font-size: 10px;">(해당되는 경우에만) 리워드 발송 전까지 서류를 제출해도 되는 리워드입니다</label>
   						
   					</div>
				</td>	
			</tr>
			<tr>
				<td>
					<br />
				</td>
			</tr>
			<tr>
				<td style="background:White;"><h3>리워드 필수 확인사항</h3>
				<p>답변이 미흡할 경우, 심사 시<br>재요청 드리며 심사 기간이<br>늘어날 수 있습니다.</p>
				</td>
				<td id="fno" style="background:Lightgray; height:300px; "><h4>Q1.리워드가 타 크라우드펀딩사 및 온라인커머스,자사 홈페이지 등 다른 판매처에 유통된 적이 있거나 현재 유통중인가요?</h4>
				<p>선택하신 답변이 사실과 다를 경우 약정서에 근거하여 프로젝트 취소 및 위약벌금이 부과될 수 있습니다</p>
				<input type="checkbox" id="c3" name="cc" />
   					 <label for="c3"><span></span>아니요,다른곳에서 유통한 적이 없으며 구름펀딩을 통해 처음 선보이는 제품입니다.</label><br><br>
   				<input type="checkbox" id="c4" name="cc" />
   					 <label for="c4"><span></span>예, 다른 곳에서 유통한 적이 있습니다. 또는 현재 유통 중입니다.</label>
   				<br><br>
   				<h4>Q2.현재 진행된 리워드의 상태 및 앞으로의 진행계획을 일정과 함께 구체적으로 <br>설명해주세요.</h4>
   				<!-- <input type="text" placeholder="ex)현재 금형 제작 진행 중 / 2018.03.30" style="background:white; height:80px;"> -->
   				<textarea class="wz-textarea large" name="progress" placeholder="ex) 현재 금형 제작 진행 중 / 2018.03.30 샘플 완료 예정, 2018.04.15 테스트 진행 예정, 2018.04.18 본품 생산 완료 예정" rows="3" data-maxlength="400" style="overflow-y: auto; resize: none; width: 350px;"></textarea>
   				<h4>Q3.리워드의 배송 계획을 알려주세요.</h4>
   				<p>1)리워드의 전달방법(택배 or SMS)을 이용<br>
				2)택배의 경우 이용 예정인 발송 업체 및 일일 최대 발송 가능량을 입력해주세요.</p> 
				<textarea class="wz-textarea large" name="delivery" placeholder="ex) 택배를 이용하여 리워드를 전달할 예정 / OOO택배사 / 일일 최대 OOO개 발송 가능" rows="3" data-maxlength="400" style="overflow-y: auto; resize: none; width: 350px;"></textarea>
				</td>
			</tr>
			<tr>
				<td style="background:White"><h3>프로젝트 종료일</h3>
				<p>프로젝트 진행 기간은 평균<br>30일 입니다.</p></td>
				<td id="fno"><input type="date" min="2017-08-15" name="endDate">
				<script>
				let today = new Date().toISOString().substr(0, 10);
				document.querySelector("#today").value = today;

				document.querySelector("#today2").valueAsDate = new Date();
				</script></td>
			</tr>
			
			<tr>
				<td style="background:White"><h3>19세 이상(선택)</h3>
				<p>제공할 리워드가 19세 이상 <br>이용가능한 제품/서비스(주류, 티켓)<br>인 경우, 체크해주세요.</p></td>
				<td id="fno" style="background:Lightgray;">
				<input type="checkbox" id="adult" name="adult" value="Y"/>
   				<label for="adult"><span></span> 19세 이상 펀딩 가능한 리워드입니다.</label>
   					<script>

					/* $("#adult").change(function() {
					alert($(this).val());
					
					});

					$('#btn_save').click(function() {
					
					$("#adult").val();
			

					}); */
					
					function save(){
						$("#saveForm").submit();
					//$("input:checkbox[id=adult]:checked").val() || "N"; 
						
					}
					</script>
				</td>
			</tr>
		
			<tr>
				<td style="background:White"><h3>오픈예정 신청</h3>
				<p>오픈 예정 진행여부를 선택해 주세요.</p></td>
				<td id="fno" style="background:Lightgray;">
				<input type="checkbox" id="ovenComing" name="ovenComing" value="Y"/>
   				<label for="ovenComing"><span></span>오픈예정 ok</label><br>
   				<input type="checkbox" id="ovenComing" name="ovenComing" value="N"/> 
   				<label for="ovenComing"><span></span>오픈예정 no</label>
   				<p>오픈예정 7~15일 진행 후, 프로젝트 오픈 추가 플랫폼 수수료 : 3%(VAT별도)</p>
   				</td>
			</tr>
			<tr>
			<td></td>
				<td>
				<button id="btn_save" type="button" onclick="save();">저장하기</button>
				<button id="next">다음으로 ></button>
				</td>
			</tr>
		</table>
	</div>
	</form>
	</div>
	
	</div>
	<script>
	/* 	function readURL(input) {
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
		}); */
			
		$(function(){
			$("#fileArea")
				
			$("#contentImgArea1").click(function(){
				$("#photo").click();
			});
			
		});
		
		function loadImg(value, num) {
			if(value.files && value,files[0]){
				var reader = new FileReader();
				
				reader.onload = function(e){
					switch(num){
					case 1 : $("#contentImg1").attr("src", e.target.result); break;
					}
				}
				reader.readAsDataURL(value.files[0]);
			}
		}
		
		
	</script>
	
	
	<jsp:include page="../common/customer_footer.jsp"/>
</body>
</html>























