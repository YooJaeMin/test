<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<h1>요소제어</h1>
DOM Control
<hr/>
-html(), val()사용법<br/>
<span id="sp">text</span> : <input type="text" id="t"/>
<button id="html">html()</button> | <button id="val">val()</button>


<script>

	//html버튼을 클릭했을 때
	$("#html").click(function(){
		window.alert($("#sp").html()); //innerHTML을 뽑는 것
		$("#sp").html("입력");
	
	});
	
	//val버튼을 클릭했을 때
	$("#val").dblclick(function(){
		window.alert($("#t").val()); //val은 value를 뽑는 것
		$("#t").val("입력하시오");
	});



</script>

<hr/>
-attr, prop
<hr/>

<textarea rows="3" cols="30" id="sample">작성하시오.</textarea>
<button id="attr">attr</button> | 
<button id="prop">prop</button>


<script>

	//해당 요소의 속성을 변경 또는 추출해내는 것("value")
	$("#attr").click(function(){
		var r = $("#sample").attr("rows");
		$("#sample").attr("cols", 50); //cols를 50으로 바꿈
		console.log(r);
		$("#sample").attr("disabled", true); //disabled가 적용 가능함
	});
	
	//껐다 켰다에 발생하는 효과들(true, false)
	$("#prop").click(function(){
		
		var sr = $("#sample").prop("disabled"); //property :속성
		console.log(sr);
		$("#sample").prop("disabled", true); //disabled가 적용 가능함
		
		
	});

	/* 대부분 attr로 접근하고 몇개만 prop으로 접근한다고 생각하면 된다. */

</script>

