<%-- 
    Document   : layoutAyush
    Created on : 12 Jul, 2011, 2:25:29 PM
    Author     : AJAY-PREM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="t" uri="/WEB-INF/struts-tiles.tld" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1" width="1000" heicht="850" align="center">
                <tr height="170" width="1000">
                    <td colspan="3"><t:insert attribute="header"/></td>
                </tr>
                <tr>
                    <td rowspan="3"  height="630" width="200"><t:insert attribute="news"/> </td>
                    <td width="600" height="150"><t:insert attribute="leaf"/></td>
                    <td rowspan="3"  height="630" width="200"><t:insert attribute="ads"/></td>
                </tr>
                <tr height="330">
                   
                    <td  width="600" height="330"><t:insert attribute="update"/></td>
                </tr>
                <tr height="150">

                   <td height="150" width="600"><t:insert attribute="search"/></td>
                 </tr>
                <tr height="50" width="1000"><td colspan="3"><t:insert attribute="footer"/></td></tr>
               
             </table>

    </body>
</html>
