<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<h3>Jquery AJAX로 정보 출력하기</h3>
버튼 하나 냄두고 이벤트 걸고 08ajax.jsp에 있는 내용을 가져다가 해당 페이지에서 받아온 내용 출력하기
<hr />


<button id="bt">정보 가져오기</button>
<div id="result"></div>

<script>
	$("#bt").click(function(){
		$.ajax({
			"url" : "08ajax.jsp",
			"method" : "post",
			"data" : {
				"q" : "query",
				"v" : "value"
			}
		}).done(function(rst) {
			console.log(rst);
			var cont = "이름: "+rst.name+"<br/>";
				cont += "나이: "+rst.age+"<br/>";
				cont += "생존여부: "+rst.alive+"<br/>";
				cont += "취미: "+rst.hobby+"<br/>";
			$("#result").html(cont);
		});
	});
</script>

<hr/>
jquery ajax는 contentType에 따라서 자동으로 바뀐다. json으로 넘어오면 굳이 JASON.parse를 안해도 된다는 것!
