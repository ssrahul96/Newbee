<%-- 
    Document   : newpost.jsp
    Created on : 5 Mar, 2016, 12:24:13 PM
    Author     : ssrahul96
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../WEB-INF/jspf/header.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Newbee</title>
    </head>
    <body>
    <center>
        <h1>New Post</h1>
        <form action="../../../newbee/newpost.do" method="post">
            new post :<br>
            <textarea rows="4" cols="50" name="np"></textarea><br>
            <input type="submit" value="submit">
        </form>
    </center>
    </body>
</html>
