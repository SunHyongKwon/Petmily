<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 
map = new HashMap<Object,Object>(); map.put("label", "Mercury"); map.put("y", 3.7); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Venus"); map.put("y", 8.9); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Earth"); map.put("y", 9.8); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Mars"); map.put("y", 3.7); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Jupiter"); map.put("y", 23.1); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Saturn"); map.put("y", 9); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Uranus"); map.put("y", 8.7); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Neptune"); map.put("y", 11); list.add(map);
 
String dataPoints1 = gsonObj.toJson(list);
 
list = new ArrayList<Map<Object,Object>>();
map = new HashMap<Object,Object>(); map.put("label", "Mercury"); map.put("y", 4.3); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Venus"); map.put("y", 10.4); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Earth"); map.put("y", 11.2); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Mars"); map.put("y", 5); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Jupiter"); map.put("y", 59.5); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Saturn"); map.put("y", 35.5); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Uranus"); map.put("y", 21.3); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Neptune"); map.put("y", 23.5); list.add(map);
 
String dataPoints2 = gsonObj.toJson(list);
%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.addEventListener('load', function() { 
 
var chart3 = new CanvasJS.Chart("chartContainer3", {
	animationEnabled: true,
	title: {
		text: "Gravity Vs Escape Velocity of Planets"
	},
	axisX: {
		reversed: true
	},
	axisY: {
		title: "Gravity (m/s²)",
		includeZero: true,
		titleFontColor: "#4F81BC",
		lineColor: "#4F81BC",
		labelFontColor: "#4F81BC",
		tickColor: "#4F81BC"
	},
	axisY2: {
		title: "Escape Velocity (km/s)",
		titleFontColor: "#C0504E",
		lineColor: "#C0504E",
		labelFontColor: "#C0504E",
		tickColor: "#C0504E"
	},
	toolTip: {
		shared: true
	},
	legend: {
		cursor: "pointer",
		itemclick: toggleDataSeries
	},
	data: [{
		type: "bar",
		name: "Gravity",
		axisYType: "primary",
		showInLegend: true,
		yValueFormatString: "#,##0.0 m/s²",
		dataPoints: <%out.print(dataPoints1);%>
	},
	{
		type: "bar",
		name: "Escape Velocity",
		axisYType: "secondary",
		showInLegend: true,
		yValueFormatString: "#,##0.0 km/s",
		dataPoints: <%out.print(dataPoints2);%>
	}]
});
chart3.render();
 
function toggleDataSeries(e) {
	if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
		e.dataSeries.visible = false;
	} else {
		e.dataSeries.visible = true;
	}
	e.chart3.render();
}
 
})
</script>
</head>
<body>
<div id="chartContainer3" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

</body>
</html>                                       