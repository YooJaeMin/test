<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<div id="result" style="min-height: 150;">
</div>
<button id="go">긁어와!!</button>
<script>
	$("#go").click(function(){ //주소창에 일일이 안넣고, 넘길걸 JSON형태로 잡아줘도 됨.
		var v = $("#q").val();
		$.ajax({
			"url" : "/08ajax.jsp",
			"method" : "post",
			"data" : {
				"q" : v,
				"v" : "value"
			}
		}).done(function(rst){
			$("#result").append("이름:"+rst.name+"<br/>");
			$("#result").append("나이:"+rst.age+"<br/>");
			$("#result").append("생존:"+rst.alive+"<br/>");
			$("#result").append("취미:"+rst.hobby[0]+","+rst.hobby[1] +"<br/>");
			
		});
	});
	// jquery ajax는 contentType에 따라서 자동으로 바뀜.
</script>