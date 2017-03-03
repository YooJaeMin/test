<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

ID:
<input type="text" id="id" size="20" class="in" />
NAME:
<input type="text" id="name" size="20" class="in" />
<div id="result"></div>
<script>
	$(".in").focus(function() { //들어왔을 때
		$(this).css("background", "pink");
	});
	
	$(".in").blur(function() { //떠났을 때
		$(this).css("background", "white");
	});
	
	$("#id").change(function() {
		$.ajax({
			"url": "07ajax.jsp?id="+$(this).val()
		}).done(function(rst){
			$("#result").html(rst+"<br/>");
		});
	});
</script>