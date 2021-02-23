<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>traverse.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function(){ // = window.load
		$('.btn').on("click", function() {
			//var gName = $(this).closest("div").children().first().html() //find
			var gName = $(this).closest("div").children().find("").html()
			//var gName = $(this).parent().prev().html()
			alert(gName);
		});
	});
</script>
</head>
<body>
	<div>
		<span>1</span>
		<span>상품1</span>
		<span><button type="button" class="btn">선택</button></span>
	</div>
	<div>
		<span>2</span>
		<span>상품2</span>
		<span><button type="button" class="btn">선택</button></span>
	</div>
	<div>
		<span>3</span>
		<span>상품3</span>
		<span><button type="button" class="btn">선택</button></span>
	</div>
</body>
</html>