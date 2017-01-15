


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
      <%
      Cookie arr[]=request.getCookies();
            boolean flag=false;
            Cookie myCookie=null;
            if(arr!=null)
            {
            for(Cookie k:arr)
            {
                if(k.getName().equals("LoginCookie"))
                {
                    flag=true;
                    myCookie=k;
                    break;
                }
            }
            }
            if(flag==true)
            {
                String val=myCookie.getValue();

                String a[]=val.split(":");

            Connection c=myConnection.dbConnection();
            Statement st=c.createStatement();

            ResultSet rs=st.executeQuery("select role from login where id='"+a[0]+"' and pass='"+a[1]+"' ");

              if(rs.next())
            {
                String r=rs.getString(1);
                 HttpSession ses=request.getSession(true);
                 ses.setAttribute("id",a[0]);
                if(r.equalsIgnoreCase("admin"))
                    {
                    RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
                        rd.forward(request,response);
                     }
               
             else 
                if(r.equalsIgnoreCase("doctor"))
                    {
                   RequestDispatcher rd=request.getRequestDispatcher("doctor.jsp");
                        rd.forward(request,response);
                }
                 else
                  {
                   RequestDispatcher rd=request.getRequestDispatcher("user.jsp");
                        rd.forward(request,response);
                }
            }
            
}
%>

        <table border="0" width="600" height="630" align="center"background="bg_1.jpg" >
            <h:javascript formName="loginBean" />
            <h:form action="abc.do" method="post" onsubmit="return validateLoginBean(this)">
               
                <tr><td align="right"> USER ID :</td><td align="left"><h:text property="id" /></tr>
                <tr><td align="right"> PASSWORD :</td><td align="left"><h:password property="pass"/></td> </tr>
                    <tr><td colspan='2'><center> <h:checkbox property="ch" value="true"/>Remember Me</center></td></tr>
                    <tr> <td colspan="2"><center><h:image src="login.jpg"/></center></td></tr>
                    
                    <tr><td colspan='2'><center><font color="red">${requestScope["msg"]}</font></center></td></tr>
            </h:form></table>

    </body>
</h:html>
