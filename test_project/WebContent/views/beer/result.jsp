<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div align="center">
	<h1>Beer Ranking</h1>
	<hr />
	<!-- 전체 -->
	<h2 id="sle1">전체 맥주순위</h2>
	<div class="terms_box" id="eff1"
		style="display: none; max-height: 70%; overflow: scroll;">
		<!-- max가 넘어가는 부분은 스크롤 처리 하겠다 -->
		<c:forEach items="${allList }" var="item1">
			${item1.NAME }
		</c:forEach>

	</div>
	<hr />
	<!-- 도수별 -->
	<h2 id="sle2">도수별 맥주순위</h2>

	<div class="terms_box" id="eff2"
		style="display: none; max-height: 70%; overflow: scroll;">
		<!-- max가 넘어가는 부분은 스크롤 처리 하겠다 -->
		<c:forEach items="${alchorList }" var="item2">
			${item2.NAME }
		</c:forEach>
	</div>
	<hr />
	<!-- 스타일별 -->

	<h2 id="sle3">스타일별 맥주순위</h2>
	<div style="display: none" id="beerstyle">

		<h3 id="sle3_1">IPA 스타일</h3>
		<div class="terms_box" id="eff3_1"
			style="display: none; max-height: 70%; overflow: scroll;">
			<!-- max가 넘어가는 부분은 스크롤 처리 하겠다 -->
			<c:forEach items="${styleListI }" var="item3">
				${item3.NAME }
			</c:forEach>
		</div>

		<h3 id="sle3_2">STOUT 스타일</h3>
		<div class="terms_box" id="eff3_2"
			style="display: none; max-height: 70%; overflow: scroll;">
			<!-- max가 넘어가는 부분은 스크롤 처리 하겠다 -->
			<c:forEach items="${styleListS }" var="item4">
				${item4.NAME }
			</c:forEach>
		</div>

		<h3 id="sle3_3">PILSNER 스타일</h3>
		<div class="terms_box" id="eff3_3"
			style="display: none; max-height: 70%; overflow: scroll;">
			<!-- max가 넘어가는 부분은 스크롤 처리 하겠다 -->
			<c:forEach items="${styleListP }" var="item5">
				${item5.NAME }
			</c:forEach>
		</div>

		<h3 id="sle3_4">ALE 스타일</h3>
		<div class="terms_box" id="eff3_4"
			style="display: none; max-height: 70%; overflow: scroll;">
			<!-- max가 넘어가는 부분은 스크롤 처리 하겠다 -->
			<c:forEach items="${styleListA }" var="item6">
				${item6.NAME }
			</c:forEach>
		</div>
	</div>


	<hr />


</div>
<!-- 전체 정렬 center -->

<script>
	//전체 맥주 순위 
	$("#sle1").click(function() { //전체 맥주 순위 펼치기&접기
		$("#eff1").slideToggle(10);
	});

	//도수별 맥주 순위 
	$("#sle2").click(function() { //도수별 맥주 순위 펼치기&접기
		$("#eff2").slideToggle(10);
	});

	//스타일별 맥주 종류
	$("#sle3").click(function() { //스타일별 맥주종류 펼치기&접기
		$("#beerstyle").slideToggle(1000);
	});

	//스타일 1
	$("#sle3_1").click(function() { //스타일에 따른 맥주순위 펼치기&접기
		$("#eff3_1").slideToggle(10);
	});

	//스타일 2
	$("#sle3_2").click(function() { //스타일에 따른 맥주순위 펼치기&접기
		$("#eff3_2").slideToggle(10);
	});

	//스타일 3
	$("#sle3_3").click(function() { //스타일에 따른 맥주순위 펼치기&접기
		$("#eff3_3").slideToggle(10);
	});

	//스타일 4
	$("#sle3_4").click(function() { //스타일에 따른 맥주순위 펼치기&접기
		$("#eff3_4").slideToggle(10);
	});
</script>