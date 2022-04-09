<%@page import="java.sql.*"%>
<%
    
    String s1=request.getParameter("t1");
    String s2=request.getParameter("t2");
    
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con=DriverManager.getConnection("jdbc:odbc:userlogin");
    Statement st=con.createStatement();
    
   int t = st.executeUpdate("insert into userlogin values('"+s1+"','"+s2+"')");
   if(t==1)
   {
       out.println("inserted");
   }
   else
   {
        out.println("error");
   }
   %>
        