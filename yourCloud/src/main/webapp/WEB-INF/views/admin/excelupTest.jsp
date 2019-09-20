<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js excel example 03</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.14.3/xlsx.full.min.js"></script>
<script>
function excelExport(event){
	console.log("1");
	excelExportCommon(event, handleExcelDataAll);
}
function excelExportCommon(event, callback){
	console.log("2");
    var input = event.target;
    var reader = new FileReader();
    reader.onload = function(){
    	console.log("3");
        var fileData = reader.result;
        var wb = XLSX.read(fileData, {type : 'binary'});
        var sheetNameList = wb.SheetNames; // 시트 이름 목록 가져오기 
        var firstSheetName = sheetNameList[0]; // 첫번째 시트명
        var firstSheet = wb.Sheets[firstSheetName]; // 첫번째 시트 
        callback(firstSheet);      
        
    };
    reader.readAsBinaryString(input.files[0]);
}
function handleExcelDataAll(sheet){
	console.log("4");
	handleExcelDataJson(sheet); // json 형태
	// console.log("데이터 json 2222 " + handleExcelDataJson(sheet));
}

function handleExcelDataJson(sheet){
	console.log("5");
		var JSONArray =  XLSX.utils.sheet_to_json (sheet);
	   console.log(JSONArray);
	   $("#displayExcelJson").html(JSON.stringify(XLSX.utils.sheet_to_json (sheet)));
	   var reward = JSON.stringify(JSONArray);
	   
	   
	   requestDataJson("excel3.ad", JSON.stringify(JSONArray));
	
}
function requestDataJson(url, formData){

	$.ajax({

		url: url,

		type: "POST",

		dataType: 'json',

//		processData : false,

		data : formData,

		async : false,
		

		contentType : "application/json",

		success: function(data) {

			results= data;

		},

		error: function(xhr) {

		  console.log('실패 - ', xhr);

		}

	});

}


// 출처 : https://github.com/SheetJS/js-xlsx/issues/214
// 시트 헤더
function get_header_row(sheet) {
	console.log("6");
    var headers = [];
    var range = XLSX.utils.decode_range(sheet['!ref']);
    var C, R = range.s.r; /* start in the first row */
    /* walk every column in the range */
    for(C = range.s.c; C <= range.e.c; ++C) {
        var cell = sheet[XLSX.utils.encode_cell({c:C, r:R})] /* find the cell in the first row */
		
        var hdr = "UNKNOWN " + C; // <-- replace with your desired default 
        if(cell && cell.t) hdr = XLSX.utils.format_cell(cell);
        headers.push(hdr);
    }
    console.log("SSSSSSSSSSSSSSSSS + " + headers);
    console.log("CCCCCCCCCCCCCCCCCCCC + " + range);
    console.log("C + " + C);
    console.log("R + " + R);
    return headers;
}



</script>
</head>
<body>
파일 선택 : <input type="file" id="excelFile" onchange="excelExport(event)"/>
<h1>JSON 형태로 보기</h1>
<div id="displayExcelJson"></div>
</body>
</html>





