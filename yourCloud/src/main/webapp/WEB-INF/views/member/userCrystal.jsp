<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>니가그린구름그림</title>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
    <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Gothic+A1&display=swap" rel="stylesheet">

  <style>
  .outer{
  
  width:800px;
  margin:auto;
  font-family: 'Gothic A1', sans-serif;
  
  }
  
  #sumbmitbutton{
  
  	width:800px;
  }
  
  .td2{
  
  	width:400px;
  	margin-left:100px;
  
  }
  
  .td3{
  	
  	width:100px;
  	margin-left:30px;
  
  }
  
  #td4{
  	
  	padding-left:100px;
  
  }
  
  
  </style>
</head>
<body>
 <jsp:include page="../common/customer_menubar.jsp"/><jsp:include page="../common/customer_menuList.jsp"/><br><br>
<!-- 전체div -->
<div class="outer">



<div  id="checkcheck1">
<input type="hidden" value="1" id="check1">
</div>
<div  id="checkcheck2">
<input type="hidden"  value="1" id="check2">
</div>


  <h2><b>비밀번호 확인</b></h2>
  <br>
  <!-- 회원가입 폼 -->
  <div>
  <form action="joinInput.me" method="post">
  	<table>
  	  	
    	
  	
  		<tr><td><br></td></tr>
  	
  		<tr>
  			<td>*이름</td>
  			<td><input type="text" name="userName" class="td2" required></td>
  		</tr> 
  		
  		<tr><td><br></td></tr>
  			
   		<tr>
  			<td>*아이디</td>
  			<td><input type="text" name="userId" class="td2" id="userId" required></td>
  			<td><button onclick="return duplicationCheck();" class="btn btn-info" >중복</button></td>
  		</tr> 		
  		
  		<tr><td><br></td></tr>
  		
  		<tr>
  			<td>*비밀번호</td>
  			<td><input type="password" name="userPwd" id="pass1" class="td2" required></td>
  		</tr> 	
  		
  		<tr><td><br></td></tr>  		
		
  		<tr>
  			<td>*비밀번호 확인</td>
  			<td><input type="password" id="pass2" class="td2" required></td>
  		</tr>  		

   		<tr><td><br></td></tr>
  		
    	<tr>
  			<td>*이메일</td>
  			<td><input type="text" name="email" class="td2" id="inputEmail" required></td>
  			<td><button id="mailbtn" class="btn btn-info" onclick="return emailCheck();">인증요청</button></td>
  		</tr>   		

  		<tr><td><br></td></tr> 
  	
  		<tr>
  			<td>인증번호</td>
  			<td><input type="text" name="" class="td2" id="randomNum" required></td>
  			<td><button  class="btn btn-info"  id="pushNum" onclick="return confirm();">확인</button></td>
  		</tr>
  		
  		<tr><td><br></td></tr> 
  		<tr><td><br></td></tr> 
  				
  		
  		<tr>
  			<td>연령대</td>
  			<td id="td4">
  			<input type="checkbox" name="age"  value="10">20대 미만  &nbsp; <input type="checkbox" name="age" value="20">20대 이상 ~ 30대 미만 &nbsp; <input type="checkbox" name="age" value="30">30대 이상 ~ 40대 미만
  			<br>
  			<input type="checkbox" value="40" name="age">40대 이상 ~ 50대 미만  &nbsp; <input type="checkbox" value="50" name="age">50대 이상 ~ 60대 미만  &nbsp; <input type="checkbox" value="60" name="age">60대 이상  			
  			</td>
  		</tr>
  		
  		<tr><td><br></td></tr>  		
  		
  		<tr>
  			<td>성별</td>
  			<td id="td4">
  			<input type="checkbox" value="F"  name="gender">여성  &emsp;&emsp;&emsp;&emsp; <input type="checkbox" value="M" name="gender">남성
  			</td>
  		</tr>
  		
  		<tr><td><br></td></tr>
  		
  		<tr>
  			<td>관심<br>카테고리</td>
  			<td id="td4">
  			<input type="checkbox" value="1" name="memberCategory">테크,가전  &emsp;&emsp; <input type="checkbox" name="memberCategory" value="2">패션,잡화  &emsp;&emsp; <input type="checkbox" name="memberCategory" value="3">뷰티  &emsp;&emsp; <input type="checkbox"  name="memberCategory" value="4">도서   <br>
  			<input type="checkbox" name="memberCategory" value="5">푸드  &emsp;&emsp; <input type="checkbox"  name="memberCategory" value="6">홈리빙  &emsp;&emsp; <input type="checkbox"  name="memberCategory" value="7 ">키즈  <br>
  			<input type="checkbox" name="memberCategory" value="8">여행,레저 &emsp;&emsp; <input type="checkbox" name="memberCategory"  value="9">스포츠   &emsp;&emsp; <input type="checkbox"  name="memberCategory" value="10">반려동물  &emsp;&emsp;
  			</td>
  		</tr>
  		
  		<tr><td><br></td></tr>  		
  		
  		<tr>
  			<td>이메일<br>수신동의</td>
  			<td class="td4">
  			이메일을 통해 쿠폰 및 이벤트 정보를 받아보실  수 있습니다.
  			<br>
  			<input type="checkbox" name="emailAgree" value="Y">이메일 수신을 동의합니다
  			</td>
  		</tr>

  		<tr><td><br></td></tr>  
  		
  	</table>
  <button id="sumbmitbutton" class="btn btn-info" onclick="return finalcheck();">확인</button>
  </form>
  
  <br><br>
  
  </div>

  <br><br><br><br>

</div>    
	<script>
	   function emailCheck(){
		      var email = $("#inputEmail").val();
		      var userId=$("#userId").val();
		      console.log(email);
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
	   
	function finalcheck(){
		var check1=$("#check1").val();
		var check2=$("#check2").val();

		if(check1==0&&check2==0){
			alert('회원가입 완료!')
			document.getElementById('form').submit();


			
		}else{
			
			alert("중복확인이나 인증이 잘못되었습니다. 다시 확인 해주세요!");
			return false;
		}
		
		
		
		
		
	}
	
	
	$(function(){

		$("#pass2").keyup(function(){
			var password = $("#pass1").val();
			var password2 = $("#pass2").val();

			if(password == password2){
				console.log("같음!");
				$("#pass2").css("border-color", "transparent")
			}else{
				console.log("틀림!");
				$("#pass2").css("border-color", "red")
			}
		});
	});

	
	
	
	
	
	</script>
	
 <jsp:include page="../common/customer_footer.jsp"/>
</body>
</html>
