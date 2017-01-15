
<%@page import="java.sql.*"%>
<%@page import="hp.myConnection"%>

<%@page contentType="text/html"  pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

   <%
     Connection con=myConnection.dbConnection();
        Statement st=con.createStatement();
        String sql="select count(*) from login where role='user'";
        ResultSet rs=st.executeQuery(sql);


   %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#e991f7" text="white">
        <table border="1" background="bgAyush.jpg" height="630" width="800">

            <tr style="vertical-align: bottom">
                    <td >
                        <%
                        while(rs.next()){
                            int cuser=rs.getInt(1);
                        %>
                        <center>      <h1> Users on website</h1> <input type="text" value="<%= cuser %>"/></center>
                        <% } %>
                     </td>
                </tr>
                <tr style="vertical-align: bottom">
                    <td>
     <%
        Connection con1=hp.myConnection.dbConnection();
        Statement st1=con1.createStatement();
        String sql1="select count(*) from login where role='doctor'";
        ResultSet rs1=st1.executeQuery(sql1);
        if(rs1.next()){
            int duser=rs1.getInt(1);
   %>
   <center><h1> Doctors on website</h1> <input type="text" value="<%= duser %>"/></center>
   <% }  %>
                    </td>
                </tr>

       </table>


    </body>
</html>
