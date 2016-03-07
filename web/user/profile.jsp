<%-- 
    Document   : profile
    Created on : 5 Mar, 2016, 10:41:58 AM
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
    <center>
        <h1>Welcome ${sessionScope.fname}</h1>
        <%
            HttpSession ses=request.getSession();
            String uname=(String)ses.getAttribute("uname");
            String fname=(String)ses.getAttribute("fname");
            System.out.println("profile "+uname+"  "+fname);
            if(uname!=null){
            %>
        <a href="../../../newbee/user/myprofile.jsp">View Profile</a><br>
        <a href="../../../newbee/user/newpost.jsp">Create new post</a><br>
        <a href="../../../newbee/user/viewpost.jsp">View Post </a><br>
        <a href="../../../newbee/friends/friends.jsp">Friends </a><br>
        <a href="../../../newbee/user/friendspost.jsp">View Friends Post</a><br>
<%}else{
response.sendRedirect("http://localhost/newbee/login.jsp");
           } %>         
    </center>
    </body>
</html>
