<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <h1> 이벤트 처리 | 애니메이션 이팩트 </h1>
  
  <hr/>
  
  <div id="eff">
  	<h2>약관 설명</h2>
  	날이 좋아서, 날이 적당해서. 날이 좋지 않아서 졸리다.
  </div>
  <c:forEach var="i" begin="1" end="3">
  	<button id="bt${i}">${i}</button>
  </c:forEach>
 
 <!-- trigger가 있어야만 가능한 작업들 -->
 
 
  <script>
 	$("#bt1").click(function(){
 	//	$("#eff").hide(2000);
 	//	window.alert("1번 클릭");
 		$("#eff").slideUp(2000);
 		$("#eff").slideDown(2000);
 	});

 	$("#bt2").on("click", function(){
 		$("#eff").show(2000);
 	//	window.alert($(this).html()+"!!");
 	});
 	
 	$("#bt3").click( function(){
 		//$("#bt1").trigger("click"); //bt1을 클릭하면 나타나는 이벤트를 발생시키는 것
 		$("#eff").fadeOut(2000);
 		$("#eff").fadeIn(2000);
 	});
  
  </script>
  <hr/>
  inpyt type="file"이 모양이 안예쁨 그러나 수정이 불가능함<br/>
  그래서 하는 작업이 input type="file" style="display:none;" 해놓고<br/> 
  다른 버튼을 눌렀을 때 file이 작동되도록 trigger를 연동한다.<br/><br/>
  <input type="text"  disabled =true id="path"/>
  <input type="file" id="f"  style="display: none;"/>
  <button id="bt">파일추가</button>
  
  <script>
  	$("#bt").on("click",function(){
  		$("#f").trigger("click");
  	});
  	
 	$("#f").on("change", function(){ //change는 그 안의 내용이 바뀌었을 때
 		$("#path").val($("#f").val());
 	});
  
  </script>
  
  <hr/>
  자주 처리하는 이벤트는 keyup(), submit(), click(), change(), focus()
  
