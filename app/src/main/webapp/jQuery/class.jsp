<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>class.jsp</title>
<style>
	.menu {
		border: 1px solid;
		background-color: lightgray;
	}
	.active {
		background-color:  yellowgreen;
	}
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function() {
		// li tag에 클릭이벤트 지정
		$('li.menu').on("click", function(){
			//alert(this.innerHTML); // 자바스크립트 DOM 객체
			// alert($(this).html()); // 제이쿼리 객체이므로 제이쿼리 함수 사용
			$('li.menu').removeClass("active")
			$(this).addClass("active");

		});
	});
</script>
</head>
<body>
	<ul>
		<li class="menu" data-num="1">게시판</li>
		<li class="menu" data-num="2">회원가입</li>
		<li class="menu active" data-num="3">로그인</li>
		<li class="menu" data-num="4">QnA</li>
	</ul>
</body>
</html>