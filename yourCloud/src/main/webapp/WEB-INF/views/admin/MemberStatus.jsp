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

<script>
      $(document).ready(function(){
         var option = "";
         $("#btnUpdate").click(function(){
               
            var userNo = $("#userNo").val();
            if(confirm("수정하시겠습니까?")){
            status = $("#status").val();
               location.href = "memberUpdate.ad?userNo="+userNo+"&status="+status;
               
            }
            opener.parent.location.reload();
         });
      });
      function st_close(){
    	  opener.parent.location.reload();
      	  window.close();
      }
</script>
	
	
 <style>

  .outer{
  
  width:350px;
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
  <!-- 회원상태 폼 -->
  <div align="center">
 	 <form name="form1" method="post">
  			<table>
  	  	
  		<tr><td><br></td></tr>
    		
   		<tr>
  			<td><input type="hidden" id="userNo" value="${ dto.userNo }" readonly="readonly"></td>
  		</tr> 
  		
		<tr>  	
  			<td  align="center">회원명</td>
  		</tr>
  		<tr>
  			<td><input type="text" value="${ dto.userName }" readonly="readonly"></td>
  		</tr> 
  		
  			
   		<tr>
  			<td><input type="hidden" value="${ dto.userId }" readonly="readonly"></td>
  			<td><input type="hidden" value="${ dto.userPwd }" readonly="readonly"></td>
  		</tr> 
  		
  		
  		<tr>
  			<td><input type="hidden" value="${ dto.email }" readonly="readonly"></td>
  			<td><input type="hidden" value="${ dto.ssn }" readonly="readonly"></td>
  			<td><input type="hidden" value="${ dto.companyName }" readonly="readonly"></td>
  			<td><input type="hidden" value="${ dto.account }" readonly="readonly"></td>
  		</tr> 
  		
		
  		<tr>
  			<td><input type="hidden" value="${ dto.age }" readonly="readonly"></td>
  		</tr> 
  		
  		
    	<tr>
  			<td><input type="hidden" value="${ dto.gender }" readonly="readonly"></td>
  		</tr> 
  		
  	
  		<tr>
  			<td><input type="hidden" value="${ dto.memberCategory }" readonly="readonly"></td>
  		</tr> 
  		
  	
  		<tr>
  			<c:set value="${ dto.emailAgree }" var="emailAgree" scope="session"/>
                  		<c:choose>
                  			<c:when test="${ emailAgree eq 'Y' || '동의' }">
                  				<td><input type="hidden" value="동의" readonly="readonly"></td>
                  			</c:when>
                  			<c:otherwise>
                  				<td><input type="hidden" value="미동의" readonly="readonly"></td>
                  			</c:otherwise>
                 		</c:choose>
  		</tr> 
  		
  		<tr><td><br></td></tr>	
  		
  		<tr>
				<td align="center">

					<select id="status">

				    <option value="N">정상
					</option>
					<option value="Y">정지
					</option>
   					
					</select>
					<input type="button" value="수정" id="btnUpdate">
  					<input type="button" onclick="st_close();" value="닫기">
		</td>
		</tr>
  		
  		<tr><td><br></td></tr>	
  		
  		<tr>
  			<td><input type="hidden" value="${ dto.point }" readonly="readonly"></td>
  		</tr> 
  		
  		<tr><td><br></td></tr>
  		
  				
		</table>
  </form>
  
  <br><br>
  
  </div>
  

</div>    

</body>
</html>
