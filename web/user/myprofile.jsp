<%-- 
    Document   : myprofile.jsp
    Created on : 5 Mar, 2016, 11:27:14 AM
    Author     : ssrahul96
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../WEB-INF/jspf/logoutheader.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Newbee</title>
    </head>
    <body>
        <h1>Welcome ${sessionScope.fname}</h1>
        Name : ${sessionScope.uname}
    </body>
</html>
