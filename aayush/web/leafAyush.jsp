<%-- 
    Document   : leaf
    Created on : 11 Jul, 2011, 10:40:12 PM
    Author     : AJAY-PREM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<% HttpSession ses=request.getSession(false);
    String id=(String)ses.getAttribute("id");%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="lmn.do" method="post"><table cellpadding="0" cellspacing="0" align="center" border="0"
        background="leaf.jpg" width="600" height="150"><tr align="center"><td>
            <textarea name="content" rows="5" cols="60" placeholder="your leaf......"></textarea>
            </td></tr><br>
            <tr><td align="center"><input type="image" src="share1.jpg" align="middle">
            </td></tr></table></form>
    </body>
</html>
