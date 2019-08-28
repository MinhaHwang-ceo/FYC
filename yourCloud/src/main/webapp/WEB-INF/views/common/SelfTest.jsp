<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">
<style>
.test{
	font-family: 'Sunflower', sans-serif;
}
.btn{
  background:#1AAB8A;
  color:#fff;
  border:none;
  position:relative;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
  font-family: 'Sunflower', sans-serif;

}
</style>
</head>
<body>


<div class="test">
<br><br>
<ul>

<li>
1.
제품 하자로 인한 교환/수리 시, 발생하는
비용은 전액 메이커가 부담합니다.

<input type="radio" name="q1" value="20" /> O
<input type="radio" name="q1" value="0" /> X

</li>
<br>
<li>
2.
펀딩 종료 이후에는 메이커의 프로젝트
수행을 위해 결제 취소가 불가합니다.

<input type="radio" name="q2" value="20" /> O
<input type="radio" name="q2" value="0" /> X

</li>
<br>
<li>
3.
리워드 발송이 지연될 수 있습니다.              
펀딩 받은 후, 리워드를 제작할 수 있는 크라우드펀딩의 특성과 
생산 과정에서의 예상치 못한 상황으로 인하여 리워드 발송이 
지연되거나 발송이 불가할 수 있습니다. 
<input type="radio" name="q3" value="20" /> O
<input type="radio" name="q3" value="0" /> X

</li>
<br>
<li>
4.
서포터의 단순 변심 으로 환불/교환을 할수있다.

<input type="radio" name="q4" value="0" /> O
<input type="radio" name="q4" value="20" /> X

</li>
<br>
<li>
5.
펀딩/판매/생산방식 특성상, 교환/반품 시, 메이커에게
회복할 수 없는 손해가 발생한 경우 교환/환불이 가능하다.

<input type="radio" name="q5" value="0" /> O
<input type="radio" name="q5" value="20" /> X

</li>




</ul>
<br>

<button class="btn"  style="float: right;">점수확인</button>

</div>


<script>

$(function(){

	$(".btn").click(function(){
	
		var num1 =$('input[name="q1"]:checked').val();
		num1 *=1;
		var num2 =$('input[name="q2"]:checked').val();
		var num3 =$('input[name="q3"]:checked').val();
		var num4 =$('input[name="q4"]:checked').val();
		var num5 =$('input[name="q5"]:checked').val();
		
		var sum=Number(num1)+Number(num2)+Number(num3)
		+Number(num4)+Number(num5);
		
		
		if(sum<=40&&sum>0){
			
			
			alert('당신의 점수는'+sum+'점 입니다. 이용가이드를 다시 확인해주세요');
			  self.close();
		
		}if(sum<=100&&sum>40){
			
			alert('당신의 점수는'+sum+'점 입니다! 투자를 하실 준비가 되었네요 투자를 하러 가볼까요?');
			  self.close();
		}
		
	});
	
	
	
	
});


</script>





</body>
</html>