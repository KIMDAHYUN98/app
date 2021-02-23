<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event1.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> <!-- JQuery CDN 방식 -->
<script>

$(function(){ // document ready
	$('#btnAdd').on("click", function(){ // 직접 이벤트
		$('#result').append($("<li>")
					.html("JSP")
					.css("background-color", 'red')
					.attr("id", "book")
					.prop("alt", "text")
					.data("num", "10"));
	});
	$('ul').on("click", "li", function() { // = 그룹이벤트, li = 부모태그에 이벤트를 위임한 것 이다.
		// this = ul
		$(event.target).remove(); // event.target = li
		console.log(this)
	})
})

/*  위와 같은 결과
    $(document).ready("load", function(){
	$('#btnAdd').bind("click", function(){
		$('#result').append($("<li>").html("JSP"));
	});
}); */

// 페이지 로드 이벤트
/* window.load = function() { ... } */
/*	window.addEventListener("load", function(event){
		
	/* 	document.getElementsByTagName("ul")[0]
				.addEventListener("click", function(){
				// this => ul
				// this.remove();
				event.target.parentNode.removeChild(event.target);
				// 실제 이벤트가 발생한 태그(=li)를 가리킨다. event.target = li
				
				});
				
		// DOM객체가 생성된 후에 실행
		document.getElementById("btnAdd")
				.addEventListener("click", function(){
					// this -> btnAdd
					// li 태그 생성
					var li = document.createElement("li");
					li.innerHTML = "자바"; // 속성
					document.getElementById("result").appendChild(li);
	});
				});	*/
</script>
</head>
<body>
	<button type="button" id="btnAdd">추가</button>
	<ul id="result">
		<li>스프링</li>
	</ul>
</body>
</html>