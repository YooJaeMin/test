<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 
<h1>JQuery</h1>
<p>
자바스크립트 프로그래밍을 편하게 사용할 수 있게 만들어 둔 자바 라이브러리<br/>
자바스크립트의 역할을 알면 쉽게 배울 수 있다.
자바스크립트를 미리 짜둔 것이 JQuery 이다.
</p>
<hr/>
JQuery 를 사용하기 위해선 두가지 방식이 있다. <br/>
실제로 다운을 받아서 프로젝트에 넣어놓고 사용하는 방식과<br/>
CDN방식이 있다 (CDN: Content Delivery Network) 보통 CDN을 주로 사용한다.<br/>
브라우저에서 CDN방식으로 연동시키게 하면, 최신 JQuery가 항상 적용되고, 대부분의 웹 어플리케이션들이<br/>
거의다 CDN에 연동되어 사용되기 때문에 브라우저에 받아져있을 가능성이 큼. 로딩시간도 줄어듦.

<hr/>
<h3>jQuery의 목적#</h3>
돔탐색이나 돔제어 (document.getElementBy~같은 것들을 간단하게 처리할 수 있다.)
이벤트 처리나 애니메이션 효과를 이미 만들어두었다.
ajax사용이 간편해진다.

<hr/>
<h2>돔 탐색</h2>
<input type="text" id="view"/>
<button id="bt">empty</button>

<script>
//스크립트는 순서대로 작동한다.
	$("#bt").click(function(){
		window.alert("화장실가고싶어");
		$.ajax({
			url : "01ajax.jsp"
			
		}).done(function(txt){
			console.log(txt);
			$("#bt").html(txt);
		});
	});
	$("#view"); // =document.getElementById("view") 같은 기능 $()안에 들어가면 이것을 Jquery의 형태로 바꾼다.
//	$(".btn");   =document.getElementByClassName("view") 같은 기능
//	$("p");   =document.getElementByTagName("p") 같은 기능
	$("#view").val("화장실가고싶어");
	$("#view").fadeOut(2000);
	$("#view").fadeIn(1000);
	//=======================


</script>