<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
Map<String, String> map = new HashMap<>();
map.put("param1", "자바");
map.put("param2", "hello world");
map.put("param3", "스프링");

// 코드 작성

response.sendRedirect("15to.jsp");
%>