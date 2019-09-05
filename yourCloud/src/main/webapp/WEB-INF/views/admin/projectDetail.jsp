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
         var judgeStatus = "";
         $("#btnUpdate").click(function(){
               
            var projectNo = $("#projectNo").val();
            if(confirm("수정하시겠습니까?")){
            	judgeStatus = $("#judgeStatus").val();
               location.href = "projectUpdate.ad?projectNo="+projectNo+"&judgeStatus="+judgeStatus;
               
            }
            opener.parent.location.reload();
      	 	window.close();
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
  
  button {
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
  			<td><input type="hidden" id="projectNo" value="${ rpt.projectNo }" readonly="readonly"></td>
  		</tr> 
  		
		<tr>  	
  			<td  align="center">프로젝트명</td>
  			
  		</tr>
  		<tr>
  			<td><input type="text" value="${ rpt.projectShortTitle }" readonly="readonly"></td>
  		</tr> 
  		
  	
  		
  		<tr><td><br></td></tr>	
  		
  		<tr>
				<td align="center">
					<select id="judgeStatus">
				    <option value="통과">통과
					</option>
					<option value="심사중">심사중
					</option>
					<option value="반려">반려
					</option>
   					
					</select>
					<input type="button" value="수정" id="btnUpdate">
  					<input type="button" onclick="st_close();" value="닫기">
		</td>
		</tr>
  		
  		<tr><td><br></td></tr>	
  		
  		
  				
		</table>
  </form>
  
  <br><br>
  
  </div>
  

</div>    

</body>
</html>
