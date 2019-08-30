<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
  
  width:800px;
  margin-left:500px;
  font-family: 'Gothic A1', sans-serif;
  }
  
  #btn{
     width:300px;
     margin-left:80px ;
  }
  
  #td2{
     width:300px ;
     margin-left:80px;
  }
  
  #td4{
     padding-left:140px;
  
  }
  
  </style>
 
</head>
<body>
<jsp:include page="../common/customer_menubar.jsp"/>
<br><br>
<section class="section-1">

<div class="outer">
<h2><b>로그인</b></h2>
<br>
	<form action="login.me" method="post">
   <table>
      <tr>
         <td>아이디</td>
         <td><input type="text" id="td2"  name="userId"></td>
      </tr>
      
      <tr><td><br></td></tr>
      
      <tr>
         <td>비밀번호</td>
         <td><input type="password" id="td2" name="userPwd" ></td>
      </tr>
      
      <tr><td><br></td></tr>
      
      <tr>
         <td></td>
         <td>
         <button id="btn" class="btn btn-info" >로그인</button>
         </td>
      </tr>
      
      <tr><td><br></td></tr>
      
      </table>
      </form>
      
      
      
      
      <table>
      <tr>
         <td></td>
         <td id="td4">&emsp;&emsp;&emsp;&emsp;&emsp;또는</td>
      </tr>
      
      <tr><td><br></td></tr>
      
      <tr>
         <td></td>
         <td><input type="button" id="btn" class="btn btn-success" value="네이버로 로그인"></td>
      </tr>
      
      <tr><td><br></td></tr>
      
      <tr>   
         <td></td>
         <td id="td4">
            <a href="${contextPath}/findId.me">아이디찾기</a> &emsp;
            <a href="${contextPath}/findPw.me">비밀번호찾기</a>
         </td>
      </tr>

      <tr><td><br></td></tr>
      
   </table>


<br>
</div>
</section>
<jsp:include page="../common/customer_footer.jsp"/>

</body>
</html>