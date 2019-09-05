<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>니가그린구름그림</title>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
    <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Gothic+A1&display=swap" rel="stylesheet">
<style>
  .outer{

 	 width:500px;
 	 margin:auto;
 	 font-family: 'Gothic A1', sans-serif;
  }

	#td2{
	 width:230px;
  	 margin-left:50px;
		
	}

  #td3{
  	
  	width:100px;
  	margin-left:60px;
  
  }
  
    #sumbmitbutton{
  
  	width:500px;
  }
.email{
	 width:230px;
  	 margin-left:50px;
}

</style>

</head>
<body>
<jsp:include page="../common/customer_menubar.jsp"/><br><br>
<div class="outer">

<div  id="checkcheck1">
<input type="hidden" value="1" id="check1">
</div>

<h2><b>비밀번호 찾기</b></h2>
<br>
	<form action="resetPw.me" method="get" id="form">
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" id="td2" required></td>
		</tr>
		
		<tr><td><br></td></tr>
		
		<tr>
			<td>이메일</td>
			<td><input type="text" name="email" class="email" id="email" required></td>
			<td><button id="td3" class="btn btn-info" onclick="return emailCheck();">인증요청</button></td>
		</tr>
		
		<tr><td><br></td></tr>
		
		<tr>
			<td></td>
			<td><input type="text" id="td2"   class="num" placeholder="인증번호를 입력하세요"></td>
			<td><button id="td3" class="btn btn-info" onclick="return confirm();">확인</button></td>
		</tr>
	
		<tr><td><br></td></tr>
	
	</table>
</form>

  <button id="sumbmitbutton" onclick="return findPwd()" class="btn btn-info">비밀번호 찾기</button>
</div>






<script>
	var code;
	
	
	function emailCheck(){
		var email = $("#email").val();
	
		alert('인증번호를 전송했습니다!')
		$.ajax({
			url:"emailAuth.do",
			type:"post",
		    async:false,
			data:{email:email},
			success:function(data) {
				
				console.log(data);
				code= data.authNum;
				
			},
			error:function(err) {
				console.log("실패!");
			}
		});
		
		
		return false;
	}
	
	
	function confirm(){
		 var $divcheck=$("#checkcheck1");
			
		console.log(code);
		var num= $(".num").val();
	
		
		if(code==num){
			
			alert('인증이 완료되었습니다.');
			$divcheck.html("");
			 var $input=$("<input type='hidden'  id='check1' >");
			 $input.val("0");
				$divcheck.append($input);
			
			
		
		}else{
			alert('인증번호가 틀렸습니다. 다시 입력해 주세요');
			$divcheck.html("");
			 var $input=$("<input type='hidden'  id='check1' >");
			 $input.val("1");
				$divcheck.append($input);
			
		}
		
		return false;
	}


	
	function findPwd(){
		console.log("뀨");
		
		var email=$(".email").val();

		var check1=$("#check1").val();
		if(check1==0){
			document.getElementById('form').submit();

		
		}else{
			
			alert('인증 완료후 확인해주세요')
			return false;
		}
	}
	
</script>















<br><br>
<jsp:include page="../common/customer_footer.jsp"/>
</body>
</html>