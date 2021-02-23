<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>createOptino.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		// button click 클릭하면 optino 태그 생성해서 추가
		$('#btnAdd').on("click", function() {
			$('#list').append($('<option>')
					  .html($('input#fruit').val()));
		})
	})
</script>
</head>
<body>
	<input id="fruit">
	<button type="button" id="btnAdd">등록</button>
	<select id="list" size="10"></select>
	<table id="tbl"></table>
</body>
</html>