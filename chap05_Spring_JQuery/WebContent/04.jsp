<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<h3>append/ prepend (vs HTML)</h3>

<div id="result" >
나는 함정에 빠졌어<br/>
</div>
<c:forEach var="i" begin="1" end="5">
	<button id="bt_${i}">${i}</button>
</c:forEach>



<script>
	$("#bt_4").click(function(){
		$("#result").css("color","red");
	});
	
	$("#bt_5").click(function(){
	//	$("#result").css("font-size", "1.5em");
		$("#result").css({"background-color" : "yellow","text-align":"center", "font-size": "1.5em"}); 
		//JSON표기로 한꺼번에 적용시킬 수도 있다.
	});



	$("#bt_1").click(function(){
		$("#result").append("<b>어펜드!!</b><br/>"); //뒤에 추가적으로 덧붙이기
		
	});
	
	$("#bt_2").click(function(){
		$("#result").prepend("<b>프리펜드!!</b><br/>"); //앞에 추가적으로 덧붙이기
	});
	
	$("#bt_3").click(function(){
		$("#result").html("<b>졸려!!</b><br/>"); //새로 셋팅하기
	});

</script>