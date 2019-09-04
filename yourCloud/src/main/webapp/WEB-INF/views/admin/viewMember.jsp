<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="path" value="${ pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>회원 상세 페이지</title>
 <style>
  .outer{
  
  width:500px;
  margin:auto;
  font-family: 'Gothic A1', sans-serif;
  background:lightblue;
  
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
<!-- 전체div -->
<div class="outer">
<br>
  <!-- 회원정보 폼 -->
  <div align="center">
  <form>
  	<table>
  	  	
  		<tr><td><br></td></tr>
    		
   		<tr>
  			<td>회원번호</td>
  			<td><input type="text" value="${ dto.userNo }" readonly="readonly"></td>
  		</tr> 
  		
  	
  		<tr><td><br></td></tr>
  	
  		<tr>
  			<td>이름</td>
  			<td><input type="text" value="${ dto.userName }" readonly="readonly"></td>
  		</tr> 
  		
  		<tr><td><br></td></tr>
  			
   		<tr>
  			<td>아이디</td>
  			<td><input type="text" value="${ dto.userId }" readonly="readonly"></td>
  		</tr> 
  		
  		<tr><td><br></td></tr>
  		
  		<tr>
  			<td>이메일</td>
  			<td><input type="text" value="${ dto.email }" readonly="readonly"></td>
  		</tr> 
  		
  		<tr><td><br></td></tr>		
		
  		<tr>
  			<td>연령대</td>
  			<td><input type="text" value="${ dto.age }" readonly="readonly"></td>
  		</tr> 
  		
  		<tr><td><br></td></tr>
  		
    	<tr>
  			<td>성별</td>
  			<td><input type="text" value="${ dto.gender }" readonly="readonly"></td>
  		</tr> 
  		
  		<tr><td><br></td></tr>
  	
  		<tr>
  			<td>관심 카테고리</td>
  			<td><input type="text" value="${ dto.memberCategory }" readonly="readonly"></td>
  		</tr> 
  		
  		<tr><td><br></td></tr>
  	
  		<tr>
  			<td>이메일 수신</td>
  			<c:set value="${ dto.emailAgree }" var="emailAgree" scope="session"/>
                  		<c:choose>
                  			<c:when test="${ emailAgree eq 'Y' || '동의' }">
                  				<td><input type="text" value="동의" readonly="readonly"></td>
                  			</c:when>
                  			<c:otherwise>
                  				<td><input type="text" value="미동의" readonly="readonly"></td>
                  			</c:otherwise>
                 		</c:choose>
  		</tr> 
  		
  		<tr><td><br></td></tr>	
  		
  		<tr>
  			<td>포인트</td>
  			<td><input type="text" value="${ dto.point }" readonly="readonly"></td>
  		</tr> 
  		
  		<tr><td><br></td></tr>
  		
  		
  		
  	</table>
  <button onclick="st_close();">확인</button>
  </form>
  
  <br><br>
  
  </div>
  

</div>    
<script>
		function st_close(){
			self.close();
		}
	</script>
	
</body>
</html>
