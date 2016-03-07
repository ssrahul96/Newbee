<%-- 
    Document   : friendspost
    Created on : 5 Mar, 2016, 2:01:36 PM
    Author     : ssrahul96
--%>

<%@page import="java.util.ArrayList"%>
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
        <h1>Friends Post</h1>
        <%
            HttpSession ses=request.getSession();
            String uname=(String)ses.getAttribute("uname");
            String fname=(String)ses.getAttribute("fname");
            
            String query="select user2 from friends where userid='"+uname+"';";
            ArrayList<String> al= new ArrayList<String>();
            System.out.println(query);
            
            
            Connection con=null;

		try
		{
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/newbee","ssrahul96","rahul1234");
                    st=con.createStatement();
                    rs= st.executeQuery(query);
			while(rs.next())
                            {
                                //out.println(rs.getString(1)+"<br>");
                                al.add(rs.getString(1));
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
                System.out.println(al);
                for(int i=0;i<al.size();i++){
                String u1=al.get(i);
                String query2="select post from post where userid='"+u1+"';";
                System.out.println(query2);
                out.println("<br><br>"+u1);
                try
		{
                        rs1=st.executeQuery(query2);
                        while(rs1.next())
                            {
                                out.println("<br>"+rs1.getString(1));
                            }
                        
                }
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			catch(Exception e)
			{
			}
                }
                %>
    </center></body>
</html>
