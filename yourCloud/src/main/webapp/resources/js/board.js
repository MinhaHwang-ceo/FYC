$(function(){
	$("#reviewTable .boardInfo").mouseover(function(){
		$(this).css("cursor","pointer");
		$(this).parent().css({"font-size":"1.1em","font-weight":"bold"});
	}).mouseout(function(){
		$(this).parent().css({"font-size":"1em", "font-weight":"normal"});
	});
	$("#searchCondition").mouseover(function(){
		$(this).css("cursor","pointer");
	});
});

function search(){
	var text = $("#searchArea").val();
	var searchCondition = $("#searchCondition").val();
	console.log(searchCondition + " : " + text)
	if(text == ""){
		alert("검색 내용을 입력해주세요!");
		$("#searchArea").focus();
	} else {
		location.href="searchBoard.bo?text="+text+"&searchCondition="+searchCondition;
	}
};
