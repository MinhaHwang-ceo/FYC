<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후원자 관리</title>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<link rel="stylesheet" href="${contextPath }/resources/css/myPage.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" />
</head>
<body>

   <jsp:include page="../common/customer_menubar.jsp" />
      <jsp:include page="../common/customer_menuList.jsp" />
   <br />

       
   <div id="outer">
      <div class="tableDiv">
         <h2>후원자 관리</h2>
         <br />
         <div align="right">
            <select name="deliveryStatus" id="deliveryStatus">
               <option value="all">전체보기</option>
               <option value="before">발송상태-미발송</option>
               <option value="complete">발송상태-발송</option>
            </select>
            <select name="payStatus" id="payStatus">
               <option value="all">전체보기</option>
               <option value="before">결제상태-결제전</option>
               <option value="complete">결제상태-결제완료</option>
            </select>
       
         </div>
         <br />

         <table class="table" style="text-align:center;font-size: 0.9em;">
             <thead>
               <tr>
  
                 <th>후원자 이름</th>
                 <th>리워드 이름</th>
                 <th>리워드수</th>
                 <th>배송지 정보</th>
                 <th>연락처</th>
                 <th>펀딩 참여일</th>
                 <th>결제 상황</th>
                 <th>발송 예정일</th>
                 <th>발송 상태</th>
                 <th>펀딩 금액</th>
               </tr>
             </thead>
             <tbody id="order">
                  <c:forEach var="b" items="${ list }">
                  <tr>
                    
                     <td> <c:out value="${ b.memberName }"/></td>
                     <td> <c:out value="${ b.rewardName }"/></td>
                     <td> <c:out value="${ b.rewardNumber }"/></td>
                     <td> <c:out value="${ b.deliverySite }"/></td>
                     <td> <c:out value="${ b.phone }"/></td>
                     <td> <c:out value="${ b.fundDate }"/></td>
                     <td> <c:out value="${ b.payState }"/></td>
                     <td> <c:out value="${ b.startDate }"/></td>
                     
                     
                      	<c:if test="${b.status =='배송전' }">
                     <td>배송전</td>
                     </c:if>
                     
                      	<c:if test="${b.status =='배송완료' }">
                     <td><c:out value="${ b.status }"/>(<c:out value="${ b.invoiceNum }"/>)</td>
                     </c:if>
                     
                     
                     
                     <td> <c:out value="${ b.fundMoney }"/></td>
                  </tr>
                  <input type="hidden" value="${b.projectNo}" id="projectNo" > 
                     </c:forEach>
             </tbody>
           </table>
           <br />
           <div id="btnDiv" align="right">
              <button class="btn btn-success">배송지 관리</button>
           </div>
      </div>
   </div>

   <script>
   var bNum=$("#projectNo").val();
      
      
      $("#deliveryStatus").change(function(){
    	  var standard=$("#deliveryStatus").val();
    	
    
    	  console.log(standard);
    	  console.log(bNum);
     	$.ajax({
    		
    		url:"supporterList2.me",
    		data:{bNum:bNum,standard:standard},
    		type:"get",
    		 dataType:"json",
    		success:function(data){
				console.log(data.list);
				
				var $div =$("#order");
				
				$div.html("");
		/* 		var $tbody=$("<tbody>");
				$div.append($tbody); */
				
				for(var i=0;i<=data.list.length-1;i++){
					console.log(data.list.length);
					
		
				var $tr=$("<tr>");
				
				var $td1=$("<td>");
				var $td2=$("<td>");
				var $td3=$("<td>");
				var $td4=$("<td>");
				var $td5=$("<td>");
				var $td6=$("<td>");
				var $td7=$("<td>");
				var $td8=$("<td>");
				var $td9=$("<td>");
				var $td10=$("<td>");
				var $td11=$("<td>");
				
				$td1.text(data.list[i].memberName);
				$td2.text(data.list[i].rewardName);
				$td3.text(data.list[i].rewardNumber);
				$td4.text(data.list[i].deliverySite);
				$td5.text(data.list[i].phone);
				$td6.text(data.list[i].fundDate);
				$td7.text(data.list[i].payState);
				$td8.text(data.list[i].startDate);
				if(data.list[i].invoiceNum!=""){
				$td9.text(data.list[i].status+"("+data.list[i].invoiceNum+")");
				}else{
					$td9.text(data.list[i].status);
				}
				$td10.text(data.list[i].fundMoney);
				
				
				$tr.append($td1,$td2,$td3,$td4,$td5,$td6,$td7,$td8,$td9
						,$td10);
				
				
				
				$div.append($tr);
				}
				
				
				
				
    		}
    		
    	}); 
 	  
    	  
    	  
      });
      
      
      
      
      $("#payStatus").change(function(){
    	  var standard=$("#payStatus").val();
    	
    
    	  console.log(standard);
    	  console.log(bNum);
     	$.ajax({
    		
    		url:"supporterList3.me",
    		data:{bNum:bNum,standard:standard},
    		type:"get",
    		 dataType:"json",
    		success:function(data){
				console.log(data.list);
				
				var $div =$("#order");
				
				$div.html("");

				
				for(var i=0;i<=data.list.length-1;i++){
					console.log(data.list.length);
					
		
				var $tr=$("<tr>");
				
				var $td1=$("<td>");
				var $td2=$("<td>");
				var $td3=$("<td>");
				var $td4=$("<td>");
				var $td5=$("<td>");
				var $td6=$("<td>");
				var $td7=$("<td>");
				var $td8=$("<td>");
				var $td9=$("<td>");
				var $td10=$("<td>");
				var $td11=$("<td>");
				
				$td1.text(data.list[i].memberName);
				$td2.text(data.list[i].rewardName);
				$td3.text(data.list[i].rewardNumber);
				$td4.text(data.list[i].deliverySite);
				$td5.text(data.list[i].phone);
				$td6.text(data.list[i].fundDate);
				$td7.text(data.list[i].payState);
				$td8.text(data.list[i].startDate);
				if(data.list[i].invoiceNum!=""){
				$td9.text(data.list[i].status+"("+data.list[i].invoiceNum+")");
				}else{
					$td9.text(data.list[i].status);
				}
				$td10.text(data.list[i].fundMoney);
				
				
				$tr.append($td1,$td2,$td3,$td4,$td5,$td6,$td7,$td8,$td9
						,$td10);
				
				
				
				$div.append($tr);
				}
				
				
				
				
    		}
    		
    	}); 
 	  
    	  
    	  
      });
      
      
      
      
      
      
      
      
   </script>
</body>
</html>