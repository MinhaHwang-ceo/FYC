<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 커뮤니티 댓글작성</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
#outer{
	padding-left:40px;	
	padding-right:40px;	
}

</style>
</head>
<body>

<div id="outer">
	<br>
	<h2 style="color:#DA81F5;"><b>의견 남기기</b></h2>
	<p>응원 혹은 의견의 글을 남겨주세요. <br>메이커의 답변이 필요한 문의 글은 ‘메이커에게 문의하기’를 이용해야 답변을 받을 수 있습니다.</p><br>

	<form id="form1">
		<table>
			<tr>
				<td>
					<textArea rows="15" cols="70" id="replyComment" name="replyComment" placeholder="메이커에게 응원의 글을 남겨주세요"></textArea>
				</td>
			</tr>
			
			<tr><td><br></td></tr>
		</table>
		<input type="button" value="글남기기" class="btn btn-default" onclick="reply()" style="width:514px; height:30px;">
		<input type="hidden" value="${ loginUser.userNo }" name="userNo">
		<input type="hidden" value="${ param.projectNo }" name="projectNo">
	</form>
	
	<br><br>
	
	<p style="font-size:0.8em; color:#9F81F7">
		최근 메이커 또는 제3자에 대한 허위사실 유포, 비방 목적의 댓글로 인해 당사자간 법적분쟁이 발생한 사례가 증가하고 있습니다. 악의적 댓글 작성자는 명예훼손, 모욕 등으로 법적 책임을 부담하게 될 수 있다는 점을 유의하여 주시기 바랍니다.
	</p>

<script>
	function reply(){
		
		var formData = $("#form1").serializeArray();
		
		console.log(formData);
		
		$.ajax({
			cache:false,
			url : "submitReply.ca",
			type : "POST",
			data : formData,
			success : function(data){
				alert("댓글 남기기를 완료하셨습니다!");
				window.close();
			},error : function(data){
				alert("에러발생");
			} 
		});
	}
</script>

</div>

</body>
</html>