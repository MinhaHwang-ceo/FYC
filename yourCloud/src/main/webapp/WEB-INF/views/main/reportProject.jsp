<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<form>
		<table>
			<tr>
				<td>1. 신고 이유가 무엇인가요?</td>
				<td>&emsp;&emsp;&emsp;</td>
				<td>
					<input type="radio" name="reportCode" value="100">스토리에 허위사실이 있습니다.<br>
					<input type="radio" name="reportCode" value="101">지적 재산권을 침해하고 있습니다.<br>
					<input type="radio" name="reportCode" value="102">다른 채널에서 판매되고 있는 제품입니다.<br>
					<input type="radio" name="reportCode" value="103">메이커와 오랫동안 연락이 되지 않습니다.<br>
					<input type="radio" name="reportCode" value="104">사회적 공익을 저해할 우려가 있습니다.<br>
					<input type="radio" name="reportCode" value="105">기타<br>
				</td>
			</tr>
			
			<tr><td><br><br></td></tr>

			<tr>
				<td>2. 상세내용을 작성해주세요.</td>
				<td>&emsp;&emsp;&emsp;</td>
				<td>
					<textArea rows="5" cols="40" name="reportReason"></textArea>
				</td>
			</tr>		
		
		</table>	
		<br><br>
		
		<input type="button" value="닫기" onclick="self.close()" class="btn btn-default" style="width:500px; height:30px;"> <br><br>
		<input type="submit" value="신고하기" class="btn btn-default" style="width:500px; height:30px;">

	</form>
</div>


</div>

</body>
</html>