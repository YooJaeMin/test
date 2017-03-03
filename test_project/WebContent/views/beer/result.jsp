<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="background: grey;">
<div align="center" style="font-family: 나눔고딕; margin: 10 320; background: white;">
	<h1>Beer Ranking</h1>
	<hr />
	<!-- 전체 -->
	<h2 id="sle1">전체 맥주리스트</h2>
	<div class="terms_box" id="eff1"  
		style="display: none; line-height: 1.6em; max-height: 70%;  overflow: auto; margin: 20 270; text-align: left; font-weight: bold;">
		<!-- max가 넘어가는 부분은 스크롤 처리 하겠다 -->
		<c:forEach items="${allList }" var="item1" varStatus="vs">
			<span id="all_span_${vs.index }">${vs.count }위. ${item1.NAME }
				▽</span>
			<br />
			<div align="center" style="display: none; font-weight: normal; font-family: times new roman; margin: 20 -100;  " id="all_${vs.index }">
				<img src="${item1.IMG }" style="width:150px; " /><br />
				ALCHOR : ${item1.ALCHOR }% <br/> STYLE : ${item1.STYLE } <br /> 
				SCORE :	${item1.SCORE }<br />
			</div>
		</c:forEach>

	</div>
	<hr />
	<!-- 도수별 -->
	<h2 id="sle2">도수별 맥주순위</h2>
<div class="terms_box" id="eff2"  
		style="display: none; max-height: 70%;  overflow: auto; margin: 20 270; text-align: left; font-weight: bold;">
		<!-- max가 넘어가는 부분은 스크롤 처리 하겠다 -->
		<c:forEach items="${alchorList }" var="item1" varStatus="vs">
			<span id="alchor_span_${vs.index }">${vs.count }위. ${item1.NAME }
				▼</span>
			<br />
			<div align="center" style="display: none; font-weight: normal; margin: 20 -100;  " id="alchor_${vs.index }">
				ALCHOR : ${item1.ALCHOR }% <br/> STYLE : ${item1.STYLE } <br /> SCORE :
				${item1.SCORE }<br /> <img src="${item1.IMG }" style="width:150px; " /><br />
			</div>
		</c:forEach>
	</div>
	<hr />
	<!-- 스타일별 -->

	<h2 id="sle3">스타일별 맥주순위</h2>
	<div style="display: none" id="beerstyle">

		<h3 id="sle3_1">IPA 스타일</h3>
		<div class="terms_box" id="eff3_1"
			style="display: none; max-height: 70%;  overflow: auto; margin: 20 270; text-align: left; font-weight: bold;">
			<!-- max가 넘어가는 부분은 스크롤 처리 하겠다 -->
			<c:forEach items="${styleListI }" var="item3" varStatus="vs">
				<span id="ipa_span_${vs.index }">${vs.count }위. ${item3.NAME }
					▼</span>
				<br />
				<div align="center" style="display: none; font-weight: normal; margin: 20 -100;  " id="ipa_${vs.index }">
					ALCHOR : ${item3.ALCHOR }% <br/> STYLE : ${item3.STYLE } <br /> SCORE
					: ${item3.SCORE }<br /> <img src="${item3.IMG }" style="width:150px;" /><br />
				</div>
			</c:forEach>
		</div>

		<h3 id="sle3_2">STOUT 스타일</h3>
		<div class="terms_box" id="eff3_2"
			style="display: none; max-height: 70%;  overflow: auto; margin: 20 270; text-align: left; font-weight: bold;">
			<!-- max가 넘어가는 부분은 스크롤 처리 하겠다 -->

			<c:forEach items="${styleListS }" var="item4" varStatus="vs">
				<span id="stout_span_${vs.index }">${vs.count }위.
					${item4.NAME } ▼</span>
				<br />
				<div align="center" style="display: none; font-weight: normal; margin: 20 -100;  " id="stout_${vs.index }">
					ALCHOR : ${item4.ALCHOR }% <br/> STYLE : ${item4.STYLE } <br /> SCORE
					: ${item4.SCORE }<br /> <img src="${item4.IMG }" style="width:150px;" /><br />
				</div>
			</c:forEach>
		</div>

		<h3 id="sle3_3">PILSNER 스타일</h3>
		<div class="terms_box" id="eff3_3"
			style="display: none; max-height: 70%;  overflow: auto; margin: 20 270; text-align: left; font-weight: bold;">
			<!-- max가 넘어가는 부분은 스크롤 처리 하겠다 -->
			<c:forEach items="${styleListP }" var="item5" varStatus="vs">
				<span id="pilsner_span_${vs.index }">${vs.count }위.
					${item5.NAME } ▼</span>
				<br />
				<div align="center" style="display: none; font-weight: normal; margin: 20 -100;" id="pilsner_${vs.index }">
					ALCHOR : ${item5.ALCHOR }% <br/> STYLE : ${item5.STYLE } <br /> SCORE
					: ${item5.SCORE }<br /> <img src="${item5.IMG }" style="width:150px;" /><br />
				</div>
			</c:forEach>
		</div>

		<h3 id="sle3_4">ALE 스타일</h3>
		<div class="terms_box" id="eff3_4"
			style="display: none; max-height: 70%;  overflow: auto; margin: 20 270; text-align: left; font-weight: bold;">
			<!-- max가 넘어가는 부분은 스크롤 처리 하겠다 -->

			<c:forEach items="${styleListA }" var="item6" varStatus="vs">
				<span id="ale_span_${vs.index }">${vs.count }위. ${item6.NAME }
					▼</span>
				<br />
				<div align="center" style="display: none; font-weight: normal; margin: 20 -100;" id="ale_${vs.index }">
					ALCHOR : ${item6.ALCHOR }% <br/> STYLE : ${item6.STYLE } <br /> SCORE
					: ${item6.SCORE }<br /> <img src="${item6.IMG }" style="width:150px;" /><br />
				</div>
			</c:forEach>
		</div>
	</div>


	<hr />


</div>
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

	//전체리스트 디테일 토글
	<c:forEach var="i" items="${allList}" varStatus="vs">
	$("#all_span_${vs.index}").click(function() {
		$("#all_${vs.index}").slideToggle(10);
	});
	</c:forEach>

	//도수별 디테일 토글
	<c:forEach var="i" items="${alchorList}" varStatus="vs">
	$("#alchor_span_${vs.index}").click(function() {
		$("#alchor_${vs.index}").slideToggle(10);
	});
	</c:forEach>
	//스타일별 디테일 토글
	
	//IPA
	<c:forEach var="i" items="${styleListI}" varStatus="vs">
	$("#ipa_span_${vs.index}").click(function() {
		$("#ipa_${vs.index}").slideToggle(10);
	});
	</c:forEach>
	
	//STOUT
	<c:forEach var="i" items="${styleListS}" varStatus="vs">
	$("#stout_span_${vs.index}").click(function() {
		$("#stout_${vs.index}").slideToggle(10);
	});
	</c:forEach>
	
	//PILSNER
	<c:forEach var="i" items="${styleListP}" varStatus="vs">
	$("#pilsner_span_${vs.index}").click(function() {
		$("#pilsner_${vs.index}").slideToggle(10);
	});
	</c:forEach>
	
	//ALE
	<c:forEach var="i" items="${styleListA}" varStatus="vs">
	$("#ale_span_${vs.index}").click(function() {
		$("#ale_${vs.index}").slideToggle(10);
	});
	</c:forEach>
</script>