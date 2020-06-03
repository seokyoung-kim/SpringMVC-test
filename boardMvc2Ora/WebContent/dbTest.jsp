<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="my.board.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
BoardDBBean dbBean = BoardDBBean.getInstance();
java.sql.Connection conn = dbBean.getConnection();
%>
<%= conn.toString() %>

</body>
</html>