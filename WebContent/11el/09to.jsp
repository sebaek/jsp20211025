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

<h1>09to.jsp</h1>

<%-- session attribute
city,pop,vip,pi 가 출력되도록 el 사용
 --%>
<p>city : ${city }</p>
<p>pop : ${pop }</p>
<p>vip : ${vip }</p>
<p>pi : ${pi }</p>
</body>
</html>