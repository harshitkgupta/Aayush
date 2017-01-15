

<%@page import="hp.myConnection"%>
<%@page import="java.sql.*,javax.servlet.*,javax.servlet.http.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="h" uri="/WEB-INF/struts-html.tld" %>
<h:html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <% HttpSession s=request.getSession(false);
                         s.invalidate();%>
        <<jsp:forward page="Home.do"/>
    </body>
</h:html>
