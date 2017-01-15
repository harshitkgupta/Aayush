<%-- 
    Document   : layoutProfile
    Created on : 12 Jul, 2011, 3:25:21 PM
    Author     : AJAY-PREM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" uri="/WEB-INF/struts-tiles.tld" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1" width="1000" align="center" height="850">

                <tr height="170" width="1000">
                    <td colspan="3"><t:insert attribute="header"/></td>
                </tr>
                <tr height="630" width="1000">
                    <td width="200"><t:insert attribute="news"/></td>
                    <td width="600"><t:insert attribute="profile"/></td>
                    <td width="200"<t:insert attribute="ads"/></td>
                </tr>
                <tr>
                    <td colspan="3" height="50">
                        <t:insert attribute="footer"/>
                    </td>
                </tr>
            </table>

    </body>
</html>
