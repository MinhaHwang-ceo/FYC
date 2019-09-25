<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap"
	rel="stylesheet">
<title>펀딩하기</title>
<style>
body {
	font-family: 'Sunflower', sans-serif;
}

#personal {
	color: White;
	font-family: 'Sunflower', sans-serif;
}

#textbox {
	font-size: 13px;
	color: red;
	border: 1px solid red;
	font-family: 'Sunflower', sans-serif;
}

#inputBox {
	width: 900px;
	height: 800px;
	position: relatve;
	z-index: 2;
	background: White;
	margin: 0 auto;
	font-family: 'Sunflower', sans-serif;
}

#inputBox2 {
	width: 800px;
	height: 80%;
	position: relatve;
	z-index: 1;
	background: rgb(246, 249, 249);
	margin: 0 auto;
	font-family: 'Sunflower', sans-serif;
}

#fno {
	text-align: center;
	font-family: 'Sunflower', sans-serif;
}

th, td {
	padding: 15px;
	font-family: 'Sunflower', sans-serif;
}

table {
	border-spacing: 10px;
	font-family: 'Sunflower', sans-serif;
}

input {
	background-color: Lightgray;
	width: 300px;
	height: 40px;
	font-family: 'Sunflower', sans-serif;
}

#browsers {
	width: 300px;
	height: 30px;
	font-family: 'Sunflower', sans-serif;
}

input[type="checkbox"] {
	display: none;
	font-family: 'Sunflower', sans-serif;
}

input[type="checkbox"]+label {
	font-size: 13px;
	font-family: 'Sunflower', sans-serif;
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
	font-family: 'Sunflower', sans-serif;
}

input[type="checkbox"]:checked+label span {
	background:
		url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png)
		-19px top no-repeat;
}
#menu li {
	float: left;
	font-size: 25px;
	font-family: 'Sunflower', sans-serif;
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
.tt{
	border: 1px solid white;
}

</style>


<script type="text/javascript">
$(document).ready(function(){
	var projectNo = parseInt($("#projectNo").val() || "0");
	
	var prme = {projectNo:projectNo} 
	$.ajax({
		url:"selectRewardAll.fd",
		type:"post",
		data:prme,
		success:function(data){
			console.log(data);
			
			if(data.r.length != 0){
			for(var i = 0; i < data.r.length; i++){
				var reward = data.r[i]; 
				console.log(reward);
				addTable(reward);
			}
			}else {
				addTable({});
			}
		},
		error:function(err){	
			console.log("조회 실패하셨씁니다");
		}
	
	});
	addTable();

});

var idx = 0;


function addTable(reward) {
	
	var html = "";
	
	html +='<table  class="tt" id="tableReward'+ idx + '" border="1">';
    html +='<tr>';
    html +='    <td>';
    html +='        <h6>금액</h6>';
    html +='    </td>';
    html +='    <td id="fno">&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" value="'+ (reward.rewardMoney || '')  +'" placeholder="12345" id="rewardMoney'+idx +'" name="rewardMoney" style="text-align: right;">원';
    html +='    </td>';
    html +='    <td><span>정렬 : </span>&nbsp;'; 
    html +='    <input type="number" name="sortNo" value="'+ (idx +1) +'" id="sortNo'+idx +'" min="0" maxlength="2" style="width: 50px;">';
    html +='    </td>';
    html +='	<td>';
  	html +='  		<a style="font-size: 23px; cursor:pointer" onclick="deleteReward('+idx+');"class="deletepoi">X</a>';
    html +='	</td>';
    html +='</tr>';
    html +='<tr>';
    html +='    <td>';
    html +='        <h4>리워드명</h4>';
    html +='    </td>';
    html +='    <td id="fno"><input type="text" value="'+ (reward.rewardName || '')  +'" placeholder="예)ㅇㄴㅇㄴㅇ" id="rewardName'+idx +'" name="rewardName"></td>';
    html +='</tr>';
    html +='<tr>';
    html +='    <td>';
    html +='        <h4>상세설명</h4>';
    html +='    </td>';
    html +='    <td><textarea id="rewardDetail'+idx +'" name="rewardDetail" placeholder="" rows="3" data-maxlength="400" style="overflow-y: auto; resize: none; width: 350px;">'+ (reward.rewardDetail || '')  +'</textarea>';
    html +='    </td>';
    html +='</tr>';
    html +='<tr>';
    html +='    <td>';
    html +='        <h4>옵션조건</h4>';
    html +='    </td>';
    
    html +='    <td id="fno"><ul><li><input type="radio"  class="option'+idx +'" name="option'+ idx +'" value="필요없음" style="width:14px;height:14px;/ checked>';
    	
    html +='        <label for="option"><span></span>옵션 입력이 필요없는 상품입니다.</label><br></li>';
    html +='        <li><input type="radio" class="option'+idx +'" name="option'+idx +'" value="선택옵션" style="width:14px;height:14px;/> <label for="option"><span></span>옵션 입력이 필요한 상품입니다.</label>&nbsp;&nbsp;&nbsp;<br>';
    html +='        <textarea rows="5" cols="40" style="width: 300px; height: 100px;"></textarea></li></ul>';
    html +='    </td>';
    html +='</tr>';
    html +='<tr>';
    html +='    <td>';
    html +='        <h4>배송조건</h4>';
    html +='    </td>';
    html +='    <td id="fno"><ul><li><input type="radio" class="deliveryRequest'+idx +'" name="deliveryRequest'+idx +'" value="Y" style="width:14px;height:14px;/>';
    html +='        <label for="deliveryRequest"><span></span>배송지 정보가 필요합니다.</label><br></li>';
    html +='        <input type="radio" class="deliveryRequest'+idx +'" name="deliveryRequest'+idx +'"  value="N" style="width:14px;height:14px;/> <label for="deliveryRequest"><span></span>배송지 정보가 필요하지 않습니다.</label><br></li></ul>';
    html +='    </td>';
    html +='</tr>';
    html +='<tr>';
    html +='    <td>';
    html +='        <h4>배송비</h4>';
    html +='    </td>';
    html +='    <td align="center"><input value="'+ (reward.deliveryMoney || '')  +'"  id="deliveryMoney'+idx +'" name="deliveryMoney" type="text" style="width: 300px; height: 40px; margin-left: 14px;" />원</td>';
    html +='</tr>';
    html +='<tr>';
    html +='    <td>';
    html +='        <h4>제한수량</h4>';
    html +='    </td>';
    html +='    <td id="fno" align="center"><input value="'+ (reward.limitCount || '')  +'" id="limitCount'+idx +'" name="limitCount" style="margin-left: 14px;" type="text">개</td>';
    html +='</tr>';
    html +='<tr>';
    html +='    <td>';
    html +='        <h4>발송시작일</h4>';
    html +='    </td>';
    html +='    <td id="fno" align="center"><input value="'+ (reward.startDate || '')  +'" id="startDate'+idx +'" name="startDate" type="date" min="2017-08-15"></td>';
    html +='</tr>';
    html +='<tr>';
    html +='    <td></td>';
    html +='    <td>';
    html +='        <button onclick="save_re('+ idx + ');">저장하기</button> <button id="nextProject" onclick="nextProject()">다음으로</button>';
    html += '        <button value="" onclick="addTable(reward)">만들기</button>';
    html += '    </td>';
    html += '</tr>';
    html += '</table>';
    html += '   <hr />';
    html += '<br />';	
	
	//alert(idx);
	idx++;
	$(".reward_SaveBtn").append(html);
	//alert(idx);
}

</script>

<script>
	
	var dataArr = {};
	
 	function nextProject(){
 		
	    location.href="FundingOpen6.fd?projectNo="+'${p.projectNo}';
	 }
 	
	 
	function save_re(idx){
		var idx = idx;
		var category = $("#category").val();
		var projectNo = parseInt($("#projectNo").val() || "0");
		var sortNo = $("#sortNo"+idx).val();
		var rewardMoney = parseInt($("#rewardMoney"+idx).val() || "0");
		var rewardName = $("#rewardName"+idx).val() || "";
		var rewardDetail = $("#rewardDetail"+idx).val() || "";
		var option = $(".option" + idx + ":checked").val();
		var deliveryRequest = $(".deliveryRequest" + idx + ":checked").val();
		//alert(option);
		var deliveryMoney = parseInt($("#deliveryMoney"+idx).val() || "0");
		//                  alert(deliveryRequest);
		var limitCount = parseInt($("#limitCount"+idx).val() || "0");
		var startDate = $("#startDate"+idx).val() || "";

		var rewardNo = parseInt($("#rewardNo").val() || "0");
		
		var param = {
			idx:idx,
			rewardNo:rewardNo,
			category:category,
			projectNo:projectNo,
			sortNo:sortNo,
			rewardMoney:rewardMoney,
		  	rewardName:rewardName,
		  	rewardDetail:rewardDetail,
		  	option:option,
		  	deliveryRequest:deliveryRequest,
		  	deliveryMoney:deliveryMoney,
		  	limitCount:limitCount,
		  	startDate:startDate
     	};
		
		console.log(param);
		
		if(dataArr[idx] == null) {
			
			$.ajax({
				url:"insertreReward.fd",
				type:"post",
				data : param,
				success:function(data){
					console.log(data);
				
					dataArr[idx] = data.r.rewardNo;
				},
				error:function(err) {
					console.log("실패!");
				}
			});
		} else {
			$.ajax({
				url:"updateReward.fd",
				type:"post",
				data : param,
				success:function(data){
					console.log(data);
					alert("업데이트해야함");
					//dataArr[idx] = data.r.rewardNo;
					
				},
				error:function(arr){
					console.log("업데이트 실패!");
				}
			});
		}
	}
	function deleteReward(idx) {
		var rewardNo = parseInt($("#rewardNo").val() || "0");
		var projectNo = parseInt($("#projectNo").val() || "0");
		
		var number = {
				rewardNo:rewardNo,
				projectNo:projectNo
		};
		
		$.ajax({	
			url:"deleteReward.fd",
			type:"post",
			data : number,
			success:function(data){
				console.log("성공");
				$("#tableReward"+idx).remove();
				
				/* if(	$(".tt").length == 0){
						addTable();
				} */
				
				
			},
			error:function(arr){
				console.log("삭제실패!")
			}
		});
	} 
</script>
</head>
<body>

	  <input type="hidden" value="${p.projectNo}"  id="projectNo" name="projectNo"/>       
	  <input type="hidden" value="${p.category}"  id="category" name="category"/>
	<%--  <input type="text" value="${r.rewardNo}"  id="rewardNo" name="rewardNo"/> --%>
	<jsp:include page="../common/customer_menubar.jsp" />
	<jsp:include page="../common/customer_menuList.jsp"/>
	

	<br>
	
		<br /><br /><br />
<div id="top" style="width: 100%;">
<%-- <jsp:include page="../common/fundOpenMenu.jsp"/> --%>
<br /><br /><br />
<div id="menu" style="width: 55%;height: 40px; margin: 0 auto;">
		<ul>
			<li><a onclick="basicInfo();" id="basic">기본정보</a></li>
			<li><a onclick="rewardList();" id="reward">리워드</a></li>
			<li><a id="story">스토리</a></li>
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
	function makerInfo() {
		var projectNo = $("#projectNo").val();
		location.href = "makerInfo.fd?projectNo=" + projectNo;
		
	}
	
</script>
	<br><br><br> 
		<div id="inputBox2" class="reward_SaveBtn" align="center">
			
	</div>
	
	
	<jsp:include page="../common/customer_footer.jsp"/>
</body>
</html>























