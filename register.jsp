<%@page import="java.sql.*;"%>
<%
    
    String s1=request.getParameter("t1");
    String s2=request.getParameter("t2");
    String s3=request.getParameter("t3");
    String s4=request.getParameter("t4");
    String s5=request.getParameter("t5");
    String s6=request.getParameter("t6");
    String s7=request.getParameter("t7");
    String s8=request.getParameter("t8");
    String s9=request.getParameter("t9");
    String s10=request.getParameter("t10");
   
    
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con=DriverManager.getConnection("jdbc:odbc:uregister");
    Statement st=con.createStatement();
    
   int t = st.executeUpdate("insert into register values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"')");
   if(t==1)
   {
   
     
    
         if(s1.equals("User"))
    {
        ResultSet rs=st.executeQuery("select * from register where Email_ID='"+s5+"' and Password='"+s3+"' ");
        
        if(rs.next())
        {
         
                    session.setAttribute("user",s2);
                    response.sendRedirect("new.html");
        }
         else
        {
            
            response.sendRedirect("new.html");
            
        }
        
    }
         
      if(s1.equals("Guide"))
    {
        ResultSet rs=st.executeQuery("select * from register where Email_ID='"+s5+"' and Password='"+s3+"' ");
        
        if(rs.next())
        {
         
                    session.setAttribute("user1",s2);
                    response.sendRedirect("index.html");
        }
         else
        {
            
            response.sendRedirect("new.html");
            
        }
    }
        if(s1.equals("Admin")&& s5.equals("admin@gmail.com") && s3.equals("admin"))
    {
       
         
                    
                    response.sendRedirect("admin.html");
        }
         else
        {
            
            response.sendRedirect("new.html");
            
        }
   }
   
   else
   {
        out.println("error");
   }
   %>
        