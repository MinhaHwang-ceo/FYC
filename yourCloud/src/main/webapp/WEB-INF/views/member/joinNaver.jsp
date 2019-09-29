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


  <h2><b>회원가입</b></h2>
  <br>
  
  <!-- 약관 div -->
  <div class="panel-group" id="accordion">
    <div class="panel panel-default"> 
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">회원가입 약관</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">
        제1조 (목적)
	본 약관은 네가그린구름그림 주식회사(이하 회사)가 제공하는 크라우드펀딩 서비스 등 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.

	제2조 (정의)
	본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
	서비스 : 회원이 온라인 홈페이지를 통하여 본 약관에 따라 이용할 수 있는 회사가 제공하는 모든 서비스를 의미합니다.
	홈페이지 : 본 약관에 따라 회사가 제공하는 서비스가 구현되는 온라인상의 웹페이지를 말합니다.
	회원 : 본 약관에 따라 회사와 서비스이용계약을 체결하고 홈페이지를 통하여 서비스를 이용할 수 있는 자격을 부여받은 자를 말합니다.
	아이디(ID) : 회원의 식별과 서비스 이용을 위하여 회원이 정하고 회사가 승인하는 문자와 숫자의 조합을 의미합니다.
	비밀번호 : 회원이 부여 받은 아이디와 일치되는 회원임을 확인하고 비밀보호를 위해 회원 자신이 정한 문자 또는 숫자의 조합을 의미합니다.
	게시물 : 회원이 서비스를 이용함에 있어 홈페이지의 게시판에 게재한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다.
	제2장 서비스의 이용
	제3조 (서비스의 제공)
	회사가 본 약관에 따라 회원이 된 자는 다음 각 호의 서비스를 이용할 수 있습니다.
	투자형 크라우드 펀딩서비스 : 투자광고 게시, 게시판 운영관리 등
	a호 외 크라우드 펀딩 서비스 : 프로젝트 게시, 사이버거래장소 제공 등
	위 각 호 서비스 제공을 위해 필요하거나 이에 부수하는 서비스
	회원은 제1항 각 호 서비스와 관련된 개별 서비스를 이용하기 위하여 개별약관에 따른 새로운 약정을 회사와 체결하여야 할 수 있습니다. 이 경우 각 개별 서비스의 구체적인 내용은 서비스별 개별약관에서 정한 바에 따릅니다.
	서비스는 연중무휴, 1일 24시간 제공함을 원칙으로 합니다. 다만, 회사는 서비스를 일정범위로 분할하여 각 범위 별로 이용가능시간을 별도로 지정할 수 있으며 이러한 경우에는 그 내용을 사전에 공지합니다.
	회사는 컴퓨터 등 정보통신설비의 보수점검, 교체 및 고장, 통신두절 또는 운영상 상당한 이유가 있는 경우 서비스의 제공을 일시적으로 중단할 수 있습니다. 이 경우 회사는 회원에게 통지합니다. 다만, 
	회사가 사전에 통지할 수 없는 부득이한 사유가 있는 경우 사후에 통지할 수 있습니다.
	회사는 서비스의 제공에 필요한 경우 정기점검을 실시할 수 있으며, 정기점검시간은 서비스제공화면에 공지한 바에 따릅니다.
      
        </div>
      </div>
    </div>
    <input type="checkbox" required>약관에 동의합니다.
    <br><br>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">리워드 서비스 이용약관  / 개인정보취급방침</a>
        </h4>
      </div>
      <div id="collapse2" class="panel-collapse collapse">
        <div class="panel-body">
        제1조 (목적)
	본 약관은 네가그린구름그림 주식회사(이하 "회사")와 회사가 제공하는 크라우드펀딩 리워드서비스를 이용하는 회원 간의 서비스를 이용하는 회원(이하 “회원”) 간의 서비스 이용에 관한 권리·의무 관련 사항을 정함을 그 목적으로 합니다.
	제2조 (정의)
	본 약관에서 사용하는 용어의 정의는 다음 각 호와 같습니다.

	서비스 : 회원이 전자적 시스템에 접속하여 홈페이지에서 온라인상의 거래 등을 할 수 있게 본 약관에 따라 회사가 제공하는 서비스를 말합니다.
	홈페이지 : 본 약관에 따라 회사가 제공하는 서비스가 구현되는 온라인상의 웹페이지를 말합니다.
	메이커 : 회사의 네가그린구름그림 회원가입 기본약관(이하 “네가그린구름그림 기본약관”)에 따른 회원의 자격을 부여받은 자 중에서 회사와 별도의 약정을 체결하여 홈페이지에서 본 약관에 따른 프로젝트를 개설하여 서포터들로부터 후원을 받으려는 자를 말합니다.
	서포터 : 회사의 네가그린구름그림 기본약관에 따른 회원의 자격을 부여받은 자 중에서 메이커가 개설한 프로젝트에 후원을 하려는 자를 말합니다.
	프로젝트 : 메이커가 후원을 받기 위하여 홈페이지 페이지에 개설하여 게재한 후 회사의 승인을 받아 홈페이지에 게시된 사항으로서 후원의 대상을 말합니다.
	후원의 신청 : 서포터가 프로젝트의 내용에 따라 후원을 하기 위하여 본 약관에 따른 방법으로 후원의 의사표시를 하는 것을 말합니다.
	후원의 취소 : 서포터가 프로젝트의 펀딩기간 내에 후원의 의사표시를 철회하는 것을 말합니다.
	펀딩 달성률 : 서포터가 목표한 모집예정금액을 기준으로 후원의 신청 접수가 완료된 모집금액이 차지하는 비율을 말합니다.
	제2장 서비스의 이용
        </div>
      </div>
    </div>
    <input type="checkbox" required>약관에 동의합니다.
    <br><br>
  </div> 
  <br>
  <!-- 회원가입 폼 -->
  <div>
  <form action="naverJoinGo.ne" method="post">
  <input name="userId" type="text" value="${ naverLoginUser.userId}">
  <input name="email" type="text" value="${ naverLoginUser.email}">
  <input name="userName" type="text" value="${ naverLoginUser.userName }">
  <input name="age" type="text" value="${ naverLoginUser.age}">
  	<table>
  		<tr>
  			<td><b>+ 추가사항</b></td>
  			<td>(모두 입력시1000P 적립)</td>
  		</tr>
  		
  		<tr><td><br></td></tr>  		
  		
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
  			<input type="checkbox" value="A1" name="memberCategory">테크,가전  &emsp;&emsp; <input type="checkbox" name="memberCategory" value="A2">패션,잡화  &emsp;&emsp; <input type="checkbox" name="memberCategory" value="A3">뷰티  &emsp;&emsp; <input type="checkbox"  name="memberCategory" value="A4">도서   <br>
  			<input type="checkbox" name="memberCategory" value="A5">푸드  &emsp;&emsp; <input type="checkbox"  name="memberCategory" value="A6">홈리빙  &emsp;&emsp; <input type="checkbox"  name="memberCategory" value="A7">키즈  <br>
  			<input type="checkbox" name="memberCategory" value="A8">여행,레저 &emsp;&emsp; <input type="checkbox" name="memberCategory"  value="A9">스포츠   &emsp;&emsp; <input type="checkbox"  name="memberCategory" value="A10">반려동물  &emsp;&emsp;
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
  <button id="sumbmitbutton" class="btn btn-info" onclick="naverJoin();">확인</button>
  </form>
  
  <br><br>
  
  </div>

  <br><br><br><br>

</div>    
<script>
		function naverJoin(){
			location.href = "naverJoinGo.ne";
		}
</script>

 <jsp:include page="../common/customer_footer.jsp"/>
</body>
</html>
