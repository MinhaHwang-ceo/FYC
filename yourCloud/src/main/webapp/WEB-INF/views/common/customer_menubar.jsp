<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">
    
    <link rel="stylesheet" href="/yc/resources/css/animate.css">
    <link href="/yc/resources/css/main.css" rel="stylesheet" />
    
    <title>more</title>
    
    <style>
    
    @keyframes fade_in { from {opacity: 0} to {opacity: 1} }
    @keyframes fade_out { from {opacity: 1} to {opacity: 0} }

    .right-box {
         position: absolute;
           top: 0; right: 5%;
      }
      
   #floating { 
   background-color:white; 
   position: fixed; 
   right: 50%; 
   top: 20%; 
   margin-right: -49%; 
   text-align:center; 
   width: 320px;  
   border-radius: 8px; 
   margin-top: -6%;
   margin-bottom: 5%; 
   size: auto; 
   display: none; 
   opacity: 0; 
   z-index: 99;
   animation-duration: 0.5s; 
   animation-fill-mode: forwards;

    }
    
    .webTest {
       
       margin-left:100px;
    }
    </style>
   
    <script>
var Flag_clr = 0; 

function hideMenu() { document.getElementById("floating").style.display = "none"; }   

function fx_Floating() { 
   if (  window.pageYOffset >= 1100 ) { 
      document.getElementById("floating").style.display = "block"; 
      document.getElementById("floating").style.animationName = "fade_in"; 
      Flag_clr = 1; 
      } else if ( window.pageYOffset < 1100 && Flag_clr ) {
         Flag_clr = 0; 
         document.getElementById("floating").style.animationName = "fade_out";
         document.getElementById("floating").style.animationFillMode = "forwards";

         setTimeout( hideMenu, 300 ); } 
   } 
   
document.addEventListener("scroll",fx_Floating);

   </script>
    


</head>

<body>


   
<nav class="navbar navbar-expand-sm " >
       <div class="right-box" id="navbar3" >
                <ul class="navbar-nav">
                <c:if test="${ empty sessionScope.loginUser }">
                    <li >
                       <a class="nav-link" href="loginMain.me">로그인 </a>
                    </li>
                   
                    
                     <li >
                       <a class="nav-link" href="joinMain.me">회원가입 </a>
                    </li>
                     </c:if>
                            <c:if test="${ !empty sessionScope.loginUser }">
                                 <li >
                       <a class="nav-link" href="logout.me">로그아웃 </a>
                    </li>
                   
                    
                     <li >
                       <a class="nav-link" href="joinMain.me">마이페이지 </a>
                    </li>
                    </c:if>
                    <li >
                       <a class="nav-link" href="${ contextPath }/FundingOpen.fd">펀딩 오픈하기</a>
                    </li>
                    
                    
                </ul>
                <ul class="navbar-nav">
                    <li>
                    
                    <i class="fa" aria-hidden="true"><img src="/yc/resources/images/hwack2.PNG"></i>
                        <input type="text">
                    </li>
                     
                    </ul>
                    <ul>
                    <li class=" webTest">
                        <button class="testBtn" style="background:white; border-radius:10%;">자체테스트</button>
                    </li>
                    </ul>
                    </div>
            </nav>
          <header>
       
        <div class="container text-white">
         
            <div class="row">
                <div class="col-sm-4 align-self-center text-left">
                    <h6>Drawing Your Cloud</h6>
                </div>
                <div class="col-sm-4 col-12 align-self-center box-1 text-center">
                    <a class="navbar-brand" href="index.jsp"><img src="/yc/resources/images/yc-logo3.png" alt="logo"></a>
                </div>
               <div class="col-sm-4 align-self-center text-right navbar-collapse" id="navbar3" >
            
        
                  
        </div>
        <!--container end-->
                </div>
            </div>
            <!--/row-->
        <!--container-->
    </header>
   
    <span class="position-absolute trigger"><!-- hidden trigger to apply 'stuck' styles --></span>
    <nav class="navbar navbar-expand-sm sticky-top navbar-dark">
    
        <div class="container">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar1">
            <span class="navbar-toggler-icon"></span>
        </button>
            <div class="collapse navbar-collapse" id="navbar1">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link active" href="index.html">리워드 홈</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="category.bo">카테고리</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="intro">회사소개</a>
                    </li>
                       <li class="nav-item">
                        <a class="nav-link" href="notice.bo">공지사항</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="guide.bo">이용가이드</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="openExpectation.bo">오픈예정</a>
                    </li>
                   
                   
                </ul>
               
            </div>
        </div>
        <!--container end-->
         <!--   플로팅 메뉴 -->
   <div id="floating" class=" float-top "  style="border:1px solid darkgray;"> 
      <figure class="figure"><a><img src="/yc/resources/images/rank_banner2.PNG" alt="blog" ></a></figure>
      <div><a href="blog.html"><img src="/yc/resources/images/rank5.PNG" alt="blog">[끝판왕 등장] 스마트폰 거치대의 끝, 허킨스 스마트서포터 (마지막앵콜)</a></div> 
      <div><a href="blog.html"><img src="/yc/resources/images/rank2.PNG" alt="blog">캐시미어 코트의 가격을 다시 쓰다ㅣ매일 입는 캐시미어 코트, 벨리에</a></div>
      <div><a href="blog.html"><img src="/yc/resources/images/rank3.PNG" alt="blog">세상에 없던 스마트한 카메라 어시스턴트, 키노피 루미 마크원!</a></div>
      <hr>
      <div><a href="blog.html"><img src="/yc/resources/images/talk.PNG" alt="blog"></a></figure></div>
    </div>
    </nav>
    
    
    
    <script>
$(function(){

   $(".testBtn").click(function(){
   
      
      window.open("SelfTest" ,"PopupWin","width=450,height=500","resizable=no");
      
      
      
   })
   
   
   
   
})   
    </script>
 
</body>

</html>