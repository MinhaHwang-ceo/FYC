/**
 * 결제
 */

function reqPay(){
	
	var $cardNum = $.makeArray($(".cardNumber").map(function(){
		return $(this).val();
	}));
	
	var cardNumber = $cardNum.join("-");
	
	var expirationDate = $("#expirationDate").val();
	var cardDigit = $("#cardDigit").val();
	var birth = $('#birth').val();
	
		
	location.href="reqPay.pa";
};
