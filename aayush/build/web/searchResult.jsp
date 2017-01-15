<%-- 
    Document   : searchResult
    Created on : Jul 12, 2011, 11:24:51 AM
    Author     : HARSHIT
--%>

<%@page import="java.sql.*"%>
<%@page import="hp.myConnection"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="0" width="600" height="630" align="center" background="plusbgpro.jpg">

        <%
  

  boolean b=true;
    HttpSession ses=request.getSession(false);
   
     ArrayList<String> ar=(ArrayList<String>)ses.getAttribute("msg");
     out.println(ar);
%>
     <h1 align="center"> Search Results</h1>
<% out.println("<tr><th>User Id</th><th>Profile Link</th></tr>");
           for(String a:ar)
 {



             
                   
                  out.println("<tr><td>"+a+"</td><td><a href='profileDoctView.jsp?id='"+a+"'>View profile</a>");


}
     %>  </table>
    </body>
</html>
