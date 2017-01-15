<%-- 
    Document   : updateAyush
    Created on : 12 Jul, 2011, 1:17:04 AM
    Author     : AJAY-PREM
--%>


<%@page import="java.sql.*"%>
<%@page import="hp.myConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<% Connection c=myConnection.dbConnection();
    Statement st=c.createStatement();
    
    ResultSet rs=st.executeQuery("select * from leaf");
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body text="white">
        <table border="0" width="600" height="630" align="center"  background="plusbgpro.jpg" >
            <%while(rs.next()){%> <tr align="center"><td>  Posted by<input type="text" disabled value="<%=rs.getString(1)%>"/> </td>
                </tr>
       <tr align="center">
               <td>  
           
                   <input type="text"  size="100" disabled  value="<%=rs.getString(2)%>"/></td></tr>
           
                  <%}%>
        </table>
            
    </body>
</html>
