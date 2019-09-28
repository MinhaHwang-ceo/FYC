<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"
	src="./resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<link rel="stylesheet" href="${contextPath }/resources/css/myPage.css" />
<style>
input {
	width: 100%;
	text-align: center;
}

.readonly {
	border: none;
}

.center {
	text-align: center;
}
</style>
</head>
<script type="text/javascript">
	$(function() {
		//전역변수
		var obj = [];
		//스마트에디터 프레임생성
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : obj,
			elPlaceHolder : "editor",
			sSkinURI : "./resources/editor/SmartEditor2Skin.html",
			htParams : {
				// 툴바 사용 여부
				bUseToolbar : true,
				// 입력창 크기 조절바 사용 여부
				bUseVerticalResizer : true,
				// 모드 탭(Editor | HTML | TEXT) 사용 여부
				bUseModeChanger : true,
			}
		});
		//전송버튼
		$("#insertBoardGuide").click(function() {
			//id가 smarteditor인 textarea에 에디터에서 대입
			obj.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
			//폼 submit
			$("#insertBoardFrm").submit();
		});
	});
</script>
<body>
	<c:set var="now" value="<%=new java.util.Date()%>" />
	<jsp:include page="../common/customer_menubar.jsp" />
	<jsp:include page="../common/customer_menuList.jsp" />
	<br />
	<div id="outer" style="min-height: 1000px;">
		<form action="insertBoardGuide.bo" method="post" id="insertBoardFrm"
			enctype="multipart/form-data">
			<table align="center" style="width: 60%;">
				
				<tr>
					<th>제목</th>
					<td colspan="3" class="center"><input type="text" name="bTitle" style="width:100%;" id="bTitle"/></td>
				</tr>
				<tr>
					<th>작성자</th>
					<input disabled="disabled" type="text" id="writer" name="writer" hidden value="${ sessionScope.loginUser.userNo }"/>
					<td><input type="text" name="writeriD" id="writeriD" class="readonly" readonly value="${sessionScope.loginUser.userId }"/></td>
					<th style="text-align:right;">현재시각</th>
					<td><input style="background:white;" disabled="disabled" type="text" class="readonly" value="<fmt:formatDate value="${now}" pattern="yyyy-MM-dd hh:mm:ss" />"/></td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="3" style="width: 80%;"><textarea name="editor" id="editor" name="bcontent" style="width:100%;height: 500px;"></textarea></td>
					<textarea name="bcontent" id="bcontent" cols="10" rows="10" hidden></textarea>
				</tr>
				<tr style="height: 100px;">
					<td></td>
					<td colspan="3" class="center">
						<button type="button" id="insertBoardGuide" class="btn" style="width:100px;" name="insertBoard">등록</button>
						<button type="button" id="1" class="btn" style="width:100px;" name="cancel">취소</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<jsp:include page="../common/customer_footer.jsp"/>
	<script>
		$(function(){
			$("#cancel").click(function(){
				history.go(-1);
			});
			$("#insertBoard").click(function(){
				$("#insertBoardFrm").submit();
			});
		});
	</script>
</body>
</html>