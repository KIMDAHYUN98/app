<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event2.jsp</title>
</head>
<style>

</style>
<body>
	<div id="result">event test</div>
<script>
	// reslut.onclick=function() { ... }
	result.addEventListener("click", function(){
		alert(this.innerHTML);
	})
	result.addEventListener("click", function(){
		alert("Click!!");
	})
	// 하나의 타겟에 여러 핸들러를 사용할 수 있다. add 된 순서대로 호출이 된다.
</script>
</body>
</html>