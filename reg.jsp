<%@page language="java" import="java.sql.*"%>
<%@page import="java.io.*"%>
<%

try
{
    ResultSet rs =null;
            Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=    DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?zeroDateTimeBehavior=CONVERT_TO_NULL","root","Conyjoey$12");
        Statement stmt=con.createStatement();
    String name=request.getParameter("name");
     String USN=request.getParameter("USN");
    String pswd=request.getParameter("pswd");
    String UID=request.getParameter("UID");
    stmt.executeUpdate("insert into signup values('"+name+"','"+USN+"','"+pswd+"','"+UID+"')");
    out.println("Record Inserted");
        response.sendRedirect("index.html");
        
    con.close();
    stmt.close(); 
}
 
catch(ClassNotFoundException e)
{
    out.println(e.getMessage());
} %>

