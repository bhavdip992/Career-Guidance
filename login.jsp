<%@page import="java.sql.*;"%>
<%
    String s1=request.getParameter("t1");
    String s2=request.getParameter("t2");
    String s3=request.getParameter("t3");
    
    
    
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con=DriverManager.getConnection("jdbc:odbc:user_login");
    Statement st=con.createStatement();
   
    
    int t = st.executeUpdate("insert into userlogin values('"+s1+"','"+s2+"','"+s3+"')");
   if(t==1)
   {  
    if(s1.equals("User"))
    {
        ResultSet rs=st.executeQuery("select * from register where Email_ID='"+s2+"' and Password='"+s3+"' ");
        
        if(rs.next())
        {
         
                    session.setAttribute("user",s2);
                    response.sendRedirect("index.html");
        }
        else
        {
            
            response.sendRedirect("new.html");
            
        }
    }
    
     if(s1.equals("Guide"))
    {
        ResultSet rs=st.executeQuery("select * from register where Email_ID='"+s2+"' and Password='"+s3+"' ");
        
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
    
    if(s1.equals("Admin") && s2.equals("admin@gmail.com") && s3.equals("admin"))
    {
        response.sendRedirect("admin.html");
    }}
    else
    {
        response.sendRedirect("login.html");
    }
    
    
   %>
    
    
  