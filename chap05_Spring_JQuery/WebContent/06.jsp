<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<div align="center" style="margin: 0 400">
<br/>
<img src="/query/naver.png" width=300px height=48px>
<br/><br/>
	<h2>회원가입</h2>
		<span style="color: teal;"><h3>모든 약관에 동의합니다. <input type="checkbox" id="all"/></h3></span>
	
	<hr/>
	<span style="color: teal;">아래항목에 동의합니다.	<input type="checkbox" class="ch" id="one"/><br/></span>
	<div class="c" id="c1" >
		<h3>개인정보 보호 약관</h3>
		<textarea disabled=true cols=40 rows=5>이 약관은 네이버 주식회사 ("회사" 또는 "네이버")가 제공하는 네이버 및 네이버 관련 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.</textarea>
	</div>
	<br/>
	<span style="color: teal;">	아래항목에 동의합니다.<input type="checkbox"  class="ch" id="two" /><br/></span>
	<div class="c" id="c2">
		<h3>개인정보 수집 및 이용 약관</h3>
		<textarea disabled=true cols=40 rows=5>정보통신망법 규정에 따라 네이버에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 
개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 안내 드리오니 자세히 읽은 후 
동의하여 주시기 바랍니다.
		</textarea>
	</div>
	<br/>
	<span style="color: teal;">	아래항목에 동의합니다.<input type="checkbox"  class="ch" id="three"/><br/></span>
	<div class="c" id="c3">
		<h3>위치정보 이용 약관</h3>
		<textarea disabled=true cols=40 rows=5>
위치정보 이용약관에 동의하시면, 위치를 활용한 광고 정보 수신 등을 포함하는 네이버 위치기반 서비스를 이용할 수 있습니다.
</textarea>
	</div>

</div>

<script>
	$("#all").on("click", function(){
		$(".ch").each(function(){
			this.checked=true;
			$(".c").slideUp(500);
		});
		if(!$("#all").prop("checked")){
			$(".ch").each(function(){
				this.checked=false;
				$(".c").slideDown(500);
			});
		}
	});
	

	$("#one").click(function(){
	var one = $("#one").prop("checked");
	console.log(one);
		if(one){
			$("#c1").slideUp(500);
		}else{
			$("#c1").slideDown (500);
			$("#all").prop("checked", false);
		}
	}); 
	
	
		$("#two").click(function(){
	var two = $("#two").prop("checked");
	console.log(two);
		if(two){
			$("#c2").slideUp(500);
		}else{
			$("#c2").slideDown (500);
			$("#all").prop("checked", false);
		}
	})
	
		$("#three").click(function(){
	var three = $("#three").prop("checked");
	console.log(three);
		if(three){
			$("#c3").slideUp(500);
		}else{
			$("#c3").slideDown (500);
			$("#all").prop("checked", false);
		}
	})
	
	if($(".ch").each("checked")){
		$("#all").prop("checked", true);
	}

</script>