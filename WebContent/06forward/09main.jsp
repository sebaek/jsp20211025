<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
String pageCode = request.getParameter("code");

switch (pageCode) {
	case "a":
		// 적절한 코드 작성 - 09pagea.jsp 포워딩
	break;
	case "b":
		// 적절한 코드 작성	- 09pageb.jsp 포워딩
	break;
}
%>