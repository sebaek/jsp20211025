<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>Insert title here</title>
</head>
<body>
<%
application.setAttribute("appAttr1", "appVal1");
application.setAttribute("appAttr2", 3000);
application.setAttribute("appAttr3", false);
application.setAttribute("appAttr4", 3.14);
%>

<p>java code: <%= application.getAttribute("appAttr1") %></p>
<p>el : ${appAttr1 }</p>


</body>
</html>










