<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/signature_pad.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/css.css">
<link rel="stylesheet" href="${contextPath }/resources/css/myPage.css" />
<title>::: 사인패드 테스트 :::</title>
</head>
<body>
	<div id="outer">
		<div id="signature-pad" class="m-signature-pad">
			<div class="m-signature-pad--body">
				<canvas style="background:white"></canvas>
			</div>
			<div class="m-signature-pad--footer">
				<div class="description">서명</div>
				<button type="button" class="button btn clear" data-action="clear">지우기</button>
				<button type="button" class="button btn save" data-action="save">저장</button>
			</div>
		</div>
	</div>
	<script>
		var canvas = $("#signature-pad canvas")[0];
		var sign = new SignaturePad(canvas, {
			minWidth : 3,
			maxWidth : 5,
			penColor : "rgb(0, 0, 0)"
		});
		var user = '${ sessionScope.loginUser.userNo }';
		var bNum = '${bNum}';
		$("[data-action]").on("click", function() {
			if ($(this).data("action") == "clear") {
				sign.clear();
			} else if ($(this).data("action") == "save") {
				if (sign.isEmpty()) {
					alert("프로젝트 오픈을 위해 서명해주시기 바랍니다.");
				} else {
					$.ajax({
						url : "sign.fd",
						method : "post",
						dataType : "json",
						data : {
							sign : sign.toDataURL(),
							"userNo" : user,
							"bNum" : bNum
						},
						success : function(r) {
							alert("서명 완료");
							sign.clear();
							window.close();
						},
						error : function(res) {
							console.log(res);
						}
					});
				}
			}
		});

		function resizeCanvas() {
			var canvas = $("#signature-pad canvas")[0];

			var ratio = Math.max(window.devicePixelRatio || 1, 1);
			canvas.width = canvas.offsetWidth * ratio;
			canvas.height = canvas.offsetHeight * ratio;
			canvas.getContext("2d").scale(ratio, ratio);
		}

		$(window).on("resize", function() {
			resizeCanvas();
		});

		resizeCanvas();
	</script>
</body>
</html>