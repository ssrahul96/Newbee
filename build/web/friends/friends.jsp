<%-- 
    Document   : friends
    Created on : 5 Mar, 2016, 12:22:36 PM
    Author     : ssrahul96
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../WEB-INF/jspf/logoutheader.jspf" %>

<%ResultSet rs =null;%>
<%ResultSet rs1 =null;%>
<%Statement st=null;%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Newbee</title>
    </head>
    <body><center>
        <h1>Friends</h1>
        <a href="viewfriends.jsp">View Friends</a><br>
        <a href="findfriends.jsp">Find Friends</a><br>
        <a href="viewrequest.jsp">View Friend Request</a><br>
    </center></body>
</html>
