    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>니가그린구름그림</title>
<style>
   .outer{
      width:800px;
      margin-left:200px;
   }

   .circle{
      width:60px;
      height:60px;
      border-radius:50%;
      background:black;
      font-size:14px;
      text-align:center;
      line-height:100px;
      border:0;
      outline:0;
      cursor: pointer;
   }
   .projectDiv{
   width: 70%;
   display: inline-block;
   margin-left:300px;
}
.projects {
   margin: 50px 1%;
   width: 30%;
   display: inline-block;
}
.projects table {
   text-align: center;
   width: 100%;
   border: 1px solid white;
}
   .table1 tr td{
      text-align:center;
      font-size:12px;
      
   }
   td{
      padding:0px 20px;
   }
     .td2{
      padding:0px 5px;
   }
   
   .projects table .projectTitles {
   font-size: 1.5em;
   font-weight: bold;
}
.projects table .projectCategories{
   text-align: left;
   color: gray;
}

   .projects table img {
   width: 100%;   
}
.title{
     font-size: 2.5em;
   font-weight: bold;
   }
</style>



</head>
<body>
<% System.out.println("넘어오는중"); %>
   <jsp:include page="../common/customer_menubar.jsp"/>
   <% System.out.println("넘어오는중2"); %>
    <!--Section-1-->
    <section class="section-1">
        <div class="jumbotron d-flex align-items-center">
            <div class="gradient"></div>
            <div class="container-fluid content">
                <h1 data-aos="fade-up" data-aos-delay="100">영화 의상디자이너 조상경</h1>
                <h2 data-aos="fade-up" data-aos-delay="300">"늘 새로운 영화의 의상을 만들때 제가 그곳에 살아있다는걸 느껴요"</h2>
               <!--  <h4 data-aos="fade-up" data-aos-delay="500">Getup and rise, for the new chapter of your life</h4> -->
               </br></br></br>
                <p data-aos="fade-up" data-aos-delay="700"><a href="about.html" class="btn btn-success">스토리 읽어보러 가기</a></p>
            </div>
            <!--container-fluid end-->
        </div>
    </section>
    

<div class="outer" style="margin-left:400px">


<table class="table1">
   <tr>
      <td><input type="button" class="circle" onclick="location.href='#'" name="" style="background-image:url(/yc/resources/images/all.jpeg); background-size:60px 60px;"></td>
      <td><input type="button" class="circle" onclick="location.href='#'" name="" style="background-image:url(/yc/resources/images/electronic.png); background-size:60px 60px;"></td>
      <td><input type="button" class="circle" onclick="location.href='#'" name="" style="background-image:url(/yc/resources/images/fashion.jpg); background-size:60px 60px;"></td>
      <td><input type="button" class="circle" onclick="location.href='#'" name="" style="background-image:url(/yc/resources/images/beauty.jpg); background-size:60px 60px;"></td>
      <td><input type="button" class="circle" onclick="location.href='#'" name="" style="background-image:url(/yc/resources/images/food.jpg); background-size:60px 60px;"></td>
      <td><input type="button" class="circle" onclick="location.href='#'" name="" style="background-image:url(/yc/resources/images/living.PNG); background-size:60px 60px;"></td>
      <td><input type="button" class="circle" onclick="location.href='#'" name="" style="background-image:url(/yc/resources/images/kids.PNG); background-size:60px 60px;"></td>
      <td><input type="button" class="circle" onclick="location.href='#'" name="" style="background-image:url(/yc/resources/images/travle.PNG); background-size:60px 60px;"></td>
      <td><input type="button" class="circle" onclick="location.href='#'" name="" style="background-image:url(/yc/resources/images/sports.PNG); background-size:60px 60px;"></td>
      <td><input type="button" class="circle" onclick="location.href='#'" name="" style="background-image:url(/yc/resources/images/dog.PNG); background-size:60px 60px;"></td>
      <td><input type="button" class="circle" onclick="location.href='#'" name="" style="background-image:url(/yc/resources/images/book.PNG); background-size:60px 60px;"></td>

   </tr>
   
   <tr>
      <td>전체</td>
      <td>테크,전자</td>
      <td>패션,잡화</td>
      <td>뷰티</td>
      <td>푸드</td>
      <td>홈리빙</td>
      <td>키즈</td>
      <td>여행,레저</td>
      <td>스포츠</td>
      <td>반려동물</td>
      <td>도서</td>
   </tr>


</table>



</div>
    
             <div class="projectDiv">
             <hr>
           	  <table>
           	 <tr>
                     <td class="title"><c:out value="전체"/></td>
             </tr>
             <td class="td2">
             	<select name="">
				    <option value="pop">인기순</option>
   					 <option value="" >마감임박순</option>
   					 <option value="">최신순</option>
   					 <option value="">펀딩액순</option>
					</select>
				</td>	
					<td class="td2" >
					<select name="">
				    <option value="pop">펀딩진행중</option>
   					 <option value="" >펀딩종료</option>
   					 <option value="">오픈예정</option>
					</select>
             </td>
             
             </table>
             <hr>
            <div class="projects">
               <table>
                  <tr>
                     <input type="hidden" value=""/>
                     <td class="projectImgs"><img src="${ contextPath }/resources/images/rank1.PNG" alt="" /></td>
                  </tr>
                  <tr>
                     <td class="projectTitles"><c:out value="gd"/></td>
                  </tr>
                  <tr>
                     <td class="projectCategories"><c:out value="gd"/></td>
                  </tr>
               </table>
            </div>
            <div class="projects">
               <table>
                  <tr>
                     <input type="hidden" value=""/>
                     <td class="projectImgs"><img src="${ contextPath }/resources/images/rank1.PNG" alt="" /></td>
                  </tr>
                  <tr>
                     <td class="projectTitles"><c:out value="gd"/></td>
                  </tr>
                  <tr>
                     <td class="projectCategories"><c:out value="gd"/></td>
                  </tr>
               </table>
            </div>
            <div class="projects">
               <table>
                  <tr>
                     <input type="hidden" value=""/>
                     <td class="projectImgs"><img src="${ contextPath }/resources/images/rank1.PNG" alt="" /></td>
                  </tr>
                  <tr>
                     <td class="projectTitles"><c:out value="gd"/></td>
                  </tr>
                  <tr>
                     <td class="projectCategories"><c:out value="gd"/></td>
                  </tr>
               </table>
            </div>
            <div class="projects">
               <table>
                  <tr>
                     <input type="hidden" value=""/>
                     <td class="projectImgs"><img src="${ contextPath }/resources/images/rank1.PNG" alt="" /></td>
                  </tr>
                  <tr>
                     <td class="projectTitles"><c:out value="gd"/></td>
                  </tr>
                  <tr>
                     <td class="projectCategories"><c:out value="gd"/></td>
                  </tr>
               </table>
            </div>
         </div>
	<br>
	<br>
	<br>
	<br>
	<br>
 <jsp:include page="../common/customer_footer.jsp"/>
</body>

</html>
