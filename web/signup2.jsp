<%-- 
    Document   : signup2
    Created on : 22 Nov, 2018, 12:56:51 PM
    Author     : sahil choudhary
--%>
<%-- 
    Document   : signup.jsp
    Created on : Nov 16, 2018, 12:03:58 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
           String fname=request.getParameter("fn");
           String lname=request.getParameter("ln");
           String email=request.getParameter("email");
           String pwd=request.getParameter("pwd");
           
           Connection conn=null;
           Statement st=null;
           ResultSet rs=null;
           try
             {
                String myUrl="jdbc:mysql://localhost/acadview";
		Class.forName("com.mysql.jdbc.Driver");      		
		conn=DriverManager.getConnection(myUrl,"root","");
                st=conn.createStatement();
                st.executeUpdate("insert into signup values('"+fname+"','"+lname+"','"+email+"','"+pwd+"')");              
                out.println("<script>window.location.href='login.html';</script>");
            }
            catch(Exception e)
            {                
                out.println(e);   
            }
        %>
    </body>
</html>
