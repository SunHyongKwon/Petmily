<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<%
Gson gsonObj2 = new Gson();
HashMap<Object,Object> map2 = null;
List<HashMap<Object,Object>> list2 = new ArrayList<HashMap<Object,Object>>();
 
map2 = new HashMap<Object,Object>(); map2.put("x", 10); map2.put("y", 31); list2.add(map2);
map2 = new HashMap<Object,Object>(); map2.put("x", 20); map2.put("y", 65); list2.add(map2);
map2 = new HashMap<Object,Object>(); map2.put("x", 30); map2.put("y", 40); list2.add(map2);
map2 = new HashMap<Object,Object>(); map2.put("x", 40); map2.put("y", 84); map2.put("indexLabel", "Highest"); list2.add(map2);
map2 = new HashMap<Object,Object>(); map2.put("x", 50); map2.put("y", 68); list2.add(map2);
map2 = new HashMap<Object,Object>(); map2.put("x", 60); map2.put("y", 64); list2.add(map2);
map2 = new HashMap<Object,Object>(); map2.put("x", 70); map2.put("y", 38); list2.add(map2);
map2 = new HashMap<Object,Object>(); map2.put("x", 80); map2.put("y", 71); list2.add(map2);
map2 = new HashMap<Object,Object>(); map2.put("x", 90); map2.put("y", 54); list2.add(map2);
map2 = new HashMap<Object,Object>(); map2.put("x", 100); map2.put("y", 60); list2.add(map2);
map2 = new HashMap<Object,Object>(); map2.put("x", 110); map2.put("y", 21); map2.put("indexLabel", "Lowest"); list2.add(map2);
map2 = new HashMap<Object,Object>(); map2.put("x", 120); map2.put("y", 49); list2.add(map2);
map2 = new HashMap<Object,Object>(); map2.put("x", 130); map2.put("y", 41); list2.add(map2);
 
String dataPoints2 = gsonObj2.toJson(list2);
%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.addEventListener('load', function() { 
 
var chart2 = new CanvasJS.Chart("chartContainer2", {
	animationEnabled: true,
	exportEnabled: true,
	title: {
		text: "Simple Column Chart with Index Labels"
	},
	axisY:{
		includeZero: true
	},
	data: [{
		type: "column", //change type to bar, line, area, pie, etc
		//indexLabel: "{y}", //Shows y value on all Data Points
		indexLabelFontColor: "#5A5757",
		indexLabelPlacement: "outside",
		dataPoints: <%out.print(dataPoints2);%>
	}]
});
chart2.render();
 
})
</script>
</head>
<body>
<div id="chartContainer2" style="height: 370px; width:100%; padding-top : 2rem;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

</body>
</html>                              
 