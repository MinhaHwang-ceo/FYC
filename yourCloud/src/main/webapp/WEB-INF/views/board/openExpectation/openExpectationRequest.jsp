<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Gothic+A1&display=swap" rel="stylesheet">
<title>니가그린구름그림</title>
<style>
	.outer{
		padding-left:20px;
		font-family: 'Gothic A1', sans-serif;
	}
	
	#number{
	
		width:300px;
		height:40px;
	}
	
	h3{
		color:#2478FF;
	}
	
</style>
</head>
<body>
<div class="outer">
<br>
<h2>오픈알림을 <br> 신청하시겠습니까?</h2>
<p>오픈 알림과 펀딩 소식을 전해드립니다. <br>알림 받을 휴대폰 번호를 확인해주세요.</p>

<br><br>

<h3>* 핸드폰번호</h3>
<input type="text" id="memberPhone">

<br><br><br>

<input type="submit" value="알림신청" class="btn btn-default" id="submit">
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
<input type="button" value="닫기" onClick="window.close()" class="btn btn-default">
<input type="hidden" value="${loginUser.userNo }" id="userNo">
<input type="hidden" value="${loginUser.userNo }" id="userNo">

</div>
	<script>
	
	
	
	function searchParam(key) {
		  return new URLSearchParams(location.search).get(key);
		};
	
	var bNum= searchParam('bNum');
	
$('.btn-default').click(function(){
	var userNo= $("#userNo").val();
	var phone= $('#memberPhone').val()
	console.log("phone"+phone)
		console.log("userNo"+userNo)
	if(userNo==''){
		
		alert("로그인 후 이용해주세요")
	}else{
		console.log(bNum);
		console.log(phone);
		$.ajax({

							
			url: "joinAlram.bo",
			type : "post",
			data : {userNo : userNo,bNum:bNum,phone:phone},
			success : function(data){
				
				alert('알람 신청완료');
				window.close();
				
			}
		})
	}
	
	
	
	
	
	
});
	
	</script>


</body>
</html>











