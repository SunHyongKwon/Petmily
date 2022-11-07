<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.addEventListener('load', function() { 
 
var dataPoints = [];
 
var chart4 = new CanvasJS.Chart("chartContainer4", {
	animationEnabled: true,
	theme: "light2",
 	zoomEnabled: true,
	title: {
		text: "Total Biomass Energy Consumption"
	},
	axisY: {
		title: "Biomass Consumption (in Trillion BTU)",
		titleFontSize: 24
	},
	data: [{
		type: "line",
		yValueFormatString: "#,##0.0## Trillion BTU",
		xValueType: "dateTime",
		dataPoints: dataPoints
	}]
});
 
function addData(data) {
	for (var i = 0; i < data.length; i++) {
		dataPoints.push({
			x: data[i].timestamp,
			y: data[i].value
		});
	}
	chart4.render();
}
 
$.getJSON("https://canvasjs.com/data/gallery/jsp/total-biomass-energy-consumption.json", addData);
 
})
</script>
</head>
<body>
<div id="chartContainer4" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
</body>
</html>              