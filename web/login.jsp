<%--                                                                                                                                                                                                                                                                                                                                                                                                          
    Document   : login
    Created on : 22 Nov, 2018, 11:51:37 AM
    Author     : sahil choudhary
--%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
    </head>
    <body>
        <%
            String uname=request.getParameter("name");
           String pwd=request.getParameter("pwd");
           try{
	
               String myUrl="jdbc:mysql://localhost/acadview";
		//step 1:
		Class.forName("com.mysql.jdbc.Driver");
      		//step 2:
		Connection conn=DriverManager.getConnection(myUrl,"root","");
                String query="Select Email,Password from signup where e_mail= '"+uname+"' and password='"+pwd+"'";
		//step 3:
		Statement st=conn.createStatement();
		//step 4:
		ResultSet rs =st.executeQuery(query);
		if(rs.next()){
                    String redirectURL="registration.html";
                    response.sendRedirect(redirectURL);
		}  
                else
                out.println("Invalid username or password");
		//step 5
		st.close();
		}
		catch(Exception e){
			System.out.println("Got an exception! ");
			System.out.println(e.getMessage());
		}
           
        %>

    </body>
</html>
