<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

value = <input type="text" id="t" value="아무거나"/><hr/>
html = <textarea rows="3" cols="45" id="ta">미리 작성..</textarea>
<button id="bt">버튼</button>
<script>
	$("#bt").click(function(){
		window.alert( $("#t").attr("value") );
		window.alert( $("#t").val() );
		
		window.alert( $("#ta").html() );
		window.alert( $("#ta").val() );
	});
</script>