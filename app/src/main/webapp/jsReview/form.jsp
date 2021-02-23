<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form.jsp</title>
<script type="text/javascript">

	function validateForm() {
		  var x = document.forms["myForm"]["fname"].value;
		  if (x == "") {
		    alert("Name must be filled out");
		    return false;
		  }
		  // value, selectedIndex
		  /*  var job = document.forms["myForm"]["job"].value;
			  var job = document.forms[0].elements[1].value;
			  var job = document.getElementByName("job")[0].value;
		  */
		  var job = document.myForm.job.selectedIndex;
		  if(job <= 0) { // 초기값 : -1
			  alert("Job must be select");
			  return false;
		  }
		  // 체크박스 과제
		  // 체크된 갯수가 하나 이상인지 체크 (for) = count > 0
		  var chk = document.myForm.hobby.length;
		var count= 0;
		for(i=0; i<chk; i++) {
			if(document.myForm.hobby[i].checked == true) {
				count++;
			}
		}
		
		if(count <= 0) {
			alert("하나 이상 체크해야 합니다.")
			return false;
		}
		  
		  document.forms["myForm"].submit();
		}
	
</script>
</head>
<body>
	<form name="myForm" action="action_page.jsp" method="post">
		Name: <input type="text" name="fname">
		
		<select name="job">
		<!-- 반드시 option 태그에 value 값을 넣어준다 -->
			<option value="">선택</option>
			<option value="dgn">디자이너</option>
			<option value="pgm">프로그래머</option>
		</select> <br>
		취미
		<input type="checkbox" name="hobby" value="read">독서
		<input type="checkbox" name="hobby" value="jog">달리기 <br>
		<button type="button" onclick="validateForm()">등록</button> <!-- onclick, function = submit()-->
	</form>
</body>
</html>