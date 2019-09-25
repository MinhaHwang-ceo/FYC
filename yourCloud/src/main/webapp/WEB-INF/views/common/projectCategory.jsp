<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

   <div class="outer" style="width: 100%;">
   
   <%String ca1 = "A1"; %>
   <%String ca2 = "A2"; %>
   <%String ca3 = "A3"; %>
   <%String ca4 = "A4"; %>
   <%String ca5 = "A5"; %>
   <%String ca6 = "A6"; %>
   <%String ca7 = "A7"; %>
   <%String ca8 = "A8"; %>
   <%String ca9 = "A9"; %>
   <%String ca10 = "A10"; %>
   
      <table class="table1" align="center">
         <tr>
            <td><input type="button" class="circle"
               onclick="location.href='category.bo'" 
               style="background-image: url(/yc/resources/images/all.jpeg); background-size: 60px 60px;"></td>
            <td><input type="submit" class="circle"
               onclick="location.href='categorySort.bo?category=<%=ca1%>'" name="category" 
               style="background-image: url(/yc/resources/images/electronic.png); background-size: 60px 60px;"></td>
            <td><input type="submit" class="circle"
               onclick="location.href='categorySort.bo?category=<%=ca2%>'" name="category" 
               style="background-image: url(/yc/resources/images/fashion.jpg); background-size: 60px 60px;"></td>
            <td><input type="submit" class="circle"
               onclick="location.href='categorySort.bo?category=<%=ca3%>'" name="category"
               style="background-image: url(/yc/resources/images/kids.PNG); background-size: 60px 60px;"></td>
            <td><input type="submit" class="circle"
               onclick="location.href='categorySort.bo?category=<%=ca4%>'" name="category"  
               style="background-image: url(/yc/resources/images/travle.PNG); background-size: 60px 60px;"></td>
            <td><input type="submit" class="circle" 
               onclick="location.href='categorySort.bo?category=<%=ca5%>'" name="category" 
               style="background-image: url(/yc/resources/images/beauty.jpg); background-size: 60px 60px;"></td>
            <td><input type="submit" class="circle"
               onclick="location.href='categorySort.bo?category=<%=ca6%>'" name="category" 
               style="background-image: url(/yc/resources/images/book.PNG); background-size: 60px 60px;"></td>
            <td><input type="submit" class="circle"
               onclick="location.href='categorySort.bo?category=<%=ca7%>'"  name="category" 
               style="background-image: url(/yc/resources/images/dog.PNG); background-size: 60px 60px;"></td>
            <td><input type="submit" class="circle"
               onclick="location.href='categorySort.bo?category=<%=ca8%>'" name="category" 
               style="background-image: url(/yc/resources/images/sports.PNG); background-size: 60px 60px;"></td>
            <td><input type="submit" class="circle"
               onclick="location.href='categorySort.bo?category=<%=ca9%>'" name="category" 
               style="background-image: url(/yc/resources/images/food.jpg); background-size: 60px 60px;"></td>
            <td><input type="submit" class="circle"
               onclick="location.href='categorySort.bo?category=<%=ca10%>'" name="category" 
               style="background-image: url(/yc/resources/images/living.PNG); background-size: 60px 60px;"></td>
         </tr>

         <tr>
            <td>전체</td>
            <td>테크,가전</td>
            <td>패션,잡화</td>
            <td>키즈</td>
            <td>여행,레저</td>
            <td>뷰티</td>
            <td>도서</td>
            <td>반려동물</td>
            <td>스포츠</td>
            <td>푸드</td>
            <td>홈리빙</td>
         </tr>
      </table>
   
   </div>


</body>
</html>