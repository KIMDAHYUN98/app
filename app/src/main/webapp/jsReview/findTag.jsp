<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findTag.jsp</title>

<script>
	function toSm() {
		// 모든 이미지의 크기를 100 감소
		// img 태그로 이미지 크기 지정, getElementsByTagName
		var imgs = document.getElementsByTagName("img");
		for (i = 0; i < imgs.length; i++) {
		// 현재 이미지의 크기를 확인
			var s = imgs[i].style.width;
		// 크기를 100을 빼서 크기 지정
			s = parseInt(s) - 100
			imgs[i].style.width = s + "px";
		}

	}
</script>
</head>
<body>
	<button type="button" onclick="toSm()">작게</button>
	<br>
	<img id="img1" style="width: 500px" src="../images/Koala.jpg">
	<img class="backimg" style="width: 600px" src="../images/Jellyfish.jpg">
	<img class="backimg" style="width: 700px" src="../images/Tulips.jpg">
</body>
</html>