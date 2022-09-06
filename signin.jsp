
<%@page import="DBConnect.JOConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*"%>
<!DOCTYPE html>

        <%
            String USN = request.getParameter("USN");
            String pswd = request.getParameter("pswd");
       // session.setAttribute("user",uname);


            JOConnection.JConnect();
            
            String selectquery = "select * from signup where USN='" + USN + "' and pswd='" + pswd + "'";
           JOConnection.rslt = JOConnection.stmt.executeQuery(selectquery);
    if (JOConnection.rslt.next()) {

                  %>
<script>
    
    window.location.href="home.html";
</script>
<%} else {%>
<script>
    alert("Details wrong!, Try again");
    window.location.href="index.html";
</script>
<%}%>