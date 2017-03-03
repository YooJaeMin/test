<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h2>돔 제어</h2>
jQuery DOM Traversing
<hr />
태그는 $("태그명")이나, 클래스이름 $(".클래스명"), 아이디명 $("#아이디명")으로 접근이 가능하다.<br/>
<c:forTokens var="tk" items="가위,바위,보" delims=",">
<button>${tk}</button>
</c:forTokens>
<!-- //태그명이나 클래스 이름으로 searching이 되면 여러개가 나옴  each -->
<br/><br/>
<c:forEach var="i" begin="1" end="10">
	<input type="checkbox" class="ch"/>목록 .${i }<br/>
</c:forEach>

<hr/>
<button id="bt">졸리다</button>
<br/>
<input type="text" readonly value="아무말이나" id="t"/>
<script>
	$("button").each(function(){
		console.log(this);
	//	this.innerHTML ="안녕";
		$(this).html("음.."); //음..이라는 것을 설정
		console.log($(this).html()); //적혀 있는 것을 뽑아냄
		this.disabled =true;
	});
	
	$(".ch").each(function(){
		this.checked=true;
		
	});
	
	$("#bt").prop("disabled", false);
	console.log($("#bt").prop("disabled")); //disabled상태를 알아볼 수 있다.
	$("#bt").click(function(){
		$(".ch").each(function(){
			$(this).prop("checked", !$(this).prop("checked"));
		});
	});
	
	$("#t").prop("readonly", false);
//	위는 $(document.getElementById("t")).prop("readonly", false);과 같음
	//prop으로 제어되는 효과는 checked, disabled, selected, readonly를 true/false로 끌 수 있다.
	
</script>