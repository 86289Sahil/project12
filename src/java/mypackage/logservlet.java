
package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class logservlet extends HttpServlet 
{

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
       response.setContentType("text/html");
       
       PrintWriter out = response.getWriter();
       String uname = request.getParameter("nm");
       String upwd = request.getParameter("pwd");
      if(uname.equals("abc")&& upwd.equals("123")){
          out.println("Login Sucessful");
          
      }
        }
    }

    


