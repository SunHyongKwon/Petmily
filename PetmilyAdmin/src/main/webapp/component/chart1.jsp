<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 
map = new HashMap<Object,Object>(); map.put("label", "Work"); map.put("y", 44); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Gym"); map.put("y", 9); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Leisure"); map.put("y", 8); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Routines"); map.put("y", 8); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Nap"); map.put("y", 2); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Sleep"); map.put("y", 29); list.add(map);
 
String dataPoints = gsonObj.toJson(list);
%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.addEventListener('load', function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2", // "light1", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: "Typical Day"
	},
	data: [{
		type: "pie",
		toolTipContent: "<b>{label}</b>: {y}%",
		indexLabelFontSize: 16,
		indexLabel: "{label} - {y}%",
		dataPoints: <%out.print(dataPoints);%>
	}]
});
chart.render();
 
})
</script>
</head>
<body>
<div id="chartContainer" style="height: 370px; width: 100%; padding-top : 2rem;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>  --%>