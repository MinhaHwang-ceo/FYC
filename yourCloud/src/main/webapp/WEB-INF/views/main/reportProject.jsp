<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리워드 신고하기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>

#outer{
	font-family: 'Sunflower', sans-serif;
	margin-left:80px;
}


</style>

</head>
<body>
<div id="outer">
<br><br>
<b style="font-size: 25px">프로젝트 신고하기</b> &emsp; <img src="/yc/resources/images/siren.png" style="width:30px; height: auto;">	

<br><br><br>

<div>
	<form  method="post" id="form1" name="form1">
		<table>
			<tr>
				<td>1. 신고 이유가 무엇인가요?</td>
				<td>&emsp;&emsp;&emsp;</td>
				<td>
					<input type="radio" id="reportCode" name="reportCode" value="100" checked="checked">스토리에 허위사실이 있습니다.<br>
					<input type="radio" id="reportCode" name="reportCode" value="101">지적 재산권을 침해하고 있습니다.<br>
					<input type="radio" id="reportCode" name="reportCode" value="102">다른 채널에서 판매되고 있는 제품입니다.<br>
					<input type="radio" id="reportCode" name="reportCode" value="103">메이커와 오랫동안 연락이 되지 않습니다.<br>
					<input type="radio" id="reportCode" name="reportCode" value="104">사회적 공익을 저해할 우려가 있습니다.<br>
					<input type="radio" id="reportCode" name="reportCode" value="105">기타<br>
				</td>
			</tr>
			
			<tr><td><br><br></td></tr>

			<tr>
				<td>2. 상세내용을 작성해주세요.</td>
				<td>&emsp;&emsp;&emsp;</td>
				<td>
					<textArea rows="5" cols="40" id="reportComment" name="reportComment" placeholder="상세내용을 자세히 적어주세요"></textArea>
				</td>
			</tr>		
		
		</table>	
		
		<input type="hidden" value="${ loginUser.userNo }" name="userNo">
		<input type="hidden" value="${ param.pNo }" name="projectNo">
		
		<br><br>
		
		<input type="button" value="닫기" onclick="self.close()" class="btn btn-default" style="width:500px; height:30px;"> <br><br>
		<input type="button" value="신고하기" class="btn btn-default" onclick="report()" style="width:500px; height:30px;">
		
	</form>
</div>

<script>
function report(){
	
	var formData = $("#form1").serializeArray();

	console.log(formData[3]);
	
	$.ajax({
		cache: false,
		url : "submitReport.ca",
		type : "POST",
		data : formData,
		success : function(data){
			alert("신고를 완료하였습니다!");
			window.close();
		},
		error : function(data){
			alert("!!ERROR!!");
		}
	});	
}
</script>


</div>

</body>
</html>