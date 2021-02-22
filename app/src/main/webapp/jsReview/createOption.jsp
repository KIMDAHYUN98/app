<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>createOptino.jsp</title>
<script type="text/javascript">
	function addFruit() {
		// input tag의 값을 select의 option 태그를 만들어서 추가
		var op = document.createElement("option");
		op.innerHTML = document.getElementById("fruit").value;
		document.getElementById("list").add(op);
		
		// table
		var table = document.getElementById("tbl");
		table.setAttribute("border", "1");
		var row = table.insertRow();
		var cel = row.insertCell();
		cel.innerHTML = document.getElementById("fruit").value;
		
		// input tag는 clear
		document.getElementById("fruit").value = "";
	}
</script>
</head>
<body>
	<input id="fruit">
	<button type="button" onclick="addFruit()">등록</button>
	<select id="list" size="10"></select>
	<table id="tbl"></table>
</body>
</html>