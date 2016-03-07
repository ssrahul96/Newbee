<%-- 
    Document   : viewpost.jsp
    Created on : 5 Mar, 2016, 12:46:56 PM
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
        <h1>Your Posts</h1>
        <%
            HttpSession ses=request.getSession();
            String uname=(String)ses.getAttribute("uname");
            String fname=(String)ses.getAttribute("fname");
            
            String query="select post from post where userid='"+uname+"';";
            
            Connection con=null;
            int count=1;
		try
		{
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/newbee","ssrahul96","rahul1234");
                    st=con.createStatement();
                    rs= st.executeQuery(query);
			while(rs.next())
                            {
				out.println(count+".    "+rs.getString(1)+"<br>");
                                count ++;
                                //set.add(rs.getString(1));
                            }
				
			}
			catch(ClassNotFoundException e)
			{
				e.printStackTrace();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			catch(Exception e)
			{
			}
                %>
                <a href='../../../newbee/user/profile.jsp'>go back</a>

    </center></body>
</html>
