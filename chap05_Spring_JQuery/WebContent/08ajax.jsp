<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String q = request.getParameter("q");
	String v = request.getParameter("v");
	System.out.println("Q: "+q+"/ V: "+v);

	Map map = new HashMap();
	map.put("name", "jinhee");
	map.put("age", 19);
	map.put("alive", true); //관리자 여부
	map.put("hobby", new String[] { "독서", "영화감상", "자바" });
	ObjectMapper om = new ObjectMapper();
	String str = om.writeValueAsString(map);
	out.println(str);
%>