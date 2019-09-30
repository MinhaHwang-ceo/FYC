<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
 
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.min.js"></script>
 
<script>
function barChart(){

	var data = {

			labels: ["09시", "10시", "11시", "12시", "13시", "14시", "15시", "16시", "17시", "18시", "19시", "20시", "21시", "22시"],

			datasets: [

				{

					label: "",

					fillColor: "rgba(150,200,250,0.5)",

					strokeColor: "rgba(150,200,250,0.8)",

					highlightFill: "rgba(150,200,250,0.75)",

					highlightStroke: "rgba(150,200,250,1)",

					data: [65, 59, 80, 81, 56, 55, 30, 100, 120, 50, 11, 40, 70, 120]

				}

			]

		};

    var ctx = document.getElementById("barCanvas").getContext("2d");

    var options = { };

    var barChart = new Chart(ctx).Bar(data, options);

}

function lineChart(){

	var data = {

	        labels: ["월","화","수","목","금","토","일"],

	        datasets: [

	            {

	                label: "",

	                fillColor: "rgba(220,220,220,0.2)",

	                strokeColor: "rgba(220,220,220,1)",

	                pointColor: "rgba(220,220,220,1)",

	                pointStrokeColor: "#fff",

	                pointHighlightFill: "#fff",

	                pointHighlightStroke: "rgba(220,220,220,1)",

	                data: [2, 3, 5, 7, 11, 13, 17]

	            },

	            {

	                label: "",

	                fillColor: "rgba(151,187,205,0.2)",

	                strokeColor: "rgba(151,187,205,1)",

	                pointColor: "rgba(151,187,205,1)",

	                pointStrokeColor: "#fff",

	                pointHighlightFill: "#fff",

	                pointHighlightStroke: "rgba(151,187,205,1)",

	                data: [0, 1, 1, 2, 3, 5, 8]

	            }

	        ]

	    };

	    var ctx = document.getElementById("lineCanvas").getContext("2d");

	    var options = { };

	    var lineChart = new Chart(ctx).Line(data, options);



}


var ctx = document.getElementById(elementId).getContext('2d');

new Chart(ctx, {

    type: 'bar',

    data: {

        labels: labels,

        datasets: [{

            label: label,

            data: data,

            backgroundColor: 'rgba(54, 162, 235, 0.2)',

            borderColor: 'rgba(54, 162, 235, 1)',

            borderWidth: 1

        }]

    },

    options: {

        scales: { yAxes: [{ ticks: { beginAtZero:true } }] }   // 데이터값 시작을 0부터시작

    }

});


//차트 값 생성

var labels = new Array();

var data = new Array();

<c:forEach items="${resultList}" var="result" >

	var json = new Object();

	labels.push("${result.month}");

	data.push("${result.monthVal}");

</c:forEach>
</script>

<title>Labelling Data Points</title>

<script>


</script>
 

</head>
 <div class="graphBox">

<canvas id="barCanvas" width="384" height="210"></canvas>

</div>


<div class="graphBox">

<canvas id="lineCanvas" width="384" height="210"></canvas>

</div>



</body>

</html>
