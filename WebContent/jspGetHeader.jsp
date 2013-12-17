<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Response getHeader</title>
</head>
<body>
<%
Date date = new Date();
Format formatter= new SimpleDateFormat("dd.MM.yyyy.HH.mm.ss");
String newDate = formatter.format(date);
response.setHeader("Refresh", "1");
response.addHeader("Date", newDate);
out.println("Date & Time : "+ response.getHeader("Date")+"<br>");
out.println("Page Refresh/sec : "+response.getHeader("Refresh"));
out.close();

%>
</body>
</html>