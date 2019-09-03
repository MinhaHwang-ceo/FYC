<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<button>테스트</button>
	<script>
		// IMP.request_pay(param, callback) 호출
		var IMP = window.IMP;
		IMP.init('imp24001024');

		// IMP.request_pay(param, callback) 호출
/* 		IMP.request_pay({ // param
			pg : "inicis",
			pay_method : "card", // "card"만 지원됩니다
			merchant_uid : "0001", // 빌링키 발급용 주문번호
			customer_uid : "kjs3124", // 카드(빌링키)와 1:1로 대응하는 값
			name : "최초인증결제",
			amount : 0, // 0 으로 설정하여 빌링키 발급만 진행합니다.
			buyer_email : "gildong@gmail.com",
			buyer_name : "홍길동",
			buyer_tel : "010-4242-4242",
			buyer_addr : "서울특별시 강남구 신사동",
			buyer_postcode : "01181"
		}, function(rsp) { // callback
			if (rsp.success) {
				console.log(rsp.success_msg);
			} else {
				console.log(rsp.error_msg);
			}
		}); */
		// 밑은 JTNET
/* 		IMP.request_pay({
			pay_method : 'card', // 'card'만 지원됩니다.
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : '최초인증결제',
			amount : 0, // 빌링키 발급만 진행하며 결제승인을 하지 않습니다.
			customer_uid : 'your-customer-unique-id', //customer_uid 파라메터가 있어야 빌링키 발급을 시도합니다.
			buyer_email : 'iamport@siot.do',
			buyer_name : '아임포트',
			buyer_tel : '02-1234-1234'
		}, function(rsp) {
			if ( rsp.success ) {
				alert('빌링키 발급 성공');
				 // 빌링키 발급 성공
			      // jQuery로 HTTP 요청
			      $.ajax({
			        url: "paySuccess.fd", // 서비스 웹서버
			        method: "POST",
			        data: { customer_uid: "your-customer-unique-id" },
			        success:function(data){
			        	console.log("success");
			        	console.log(data.customer_uid);
			        }, error:function(data){
			        	console.log("error");
			        	console.log(data);
			        }
			      });
			} else {
				alert('빌링키 발급 실패');
			}
		}); */
		
		IMP.request_pay({
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : '최초인증결제',
			amount : 0, // 빌링키 발급만 진행하며 결제승인을 하지 않습니다.
			customer_uid : 'your-customer-unique-id', //customer_uid 파라메터가 있어야 빌링키 발급이 정상적으로 이뤄집니다.
			buyer_email : 'iamport@siot.do',
			buyer_name : '아임포트',
			buyer_tel : '02-1234-1234'
		}, function(rsp) {
			if ( rsp.success ) {
				alert('빌링키 발급 성공');
				console.log(rsp.success);
				$.ajax({
					url:'https:api.iamport.kr/subscribe/payments/again',
					method:'POST',
					header:"Content-Type: application/json",
					data:{"customer_uid":"your-customer-unique-id", "merchant_uid":"order_id_8237352", "amount":3000},
					success:function(data){
						console.log(data);
						console.log("성공");
					}, error:function(err){
						console.log(err);
						console.log("실패");
					}
				});
			} else {
				alert('빌링키 발급 실패');
			}
		});
	</script>
</body>
</html>