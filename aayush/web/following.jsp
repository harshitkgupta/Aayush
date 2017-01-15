<%--
    Document   : followers
    Created on : 16 Jul, 2011, 10:27:27 AM
    Author     : AJAY-PREM
--%>

<%@page contentType="text/html" import="java.sql.*,javax.servlet.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <%
   HttpSession ses1=request.getSession(false);
   String uid=(String)ses1.getAttribute("id");
   Connection con=hp.myConnection.dbConnection();
   Statement st=con.createStatement();
   String sql="select * from following where Uid='"+uid+"'";
   ResultSet rs=st.executeQuery(sql);

   %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>followers</title>
    </head>
    <body bgcolor="#e991f7">
       
        <table width="600" height="330" align="center"><tr><td>
        <table align="center">
            <tr>
                <th>ID</th><th>Name</th><th>Email Id</th><th>specialization</th>
            </tr>
        <%
        while(rs.next()){
           String did=rs.getString("Did");
        Statement st1=con.createStatement();
        ResultSet rs1=st1.executeQuery("select fname,lname,email,special from doctor where id='"+did+"'");
            String fname=rs1.getString("fname");
            String lname=rs1.getString("lname");
            String email=rs1.getString("email");
            String special=rs1.getString("special");
            %>
            <tr><td><%=did%></td><td><%=fname%> <%=lname%></td><td><%=email %></td><td><%=special %></td></tr>
        <% } %>
        </table>
        <%
        Statement st2=con.createStatement();
        ResultSet rs2=st2.executeQuery("select count(Did) from follwer where Did='"+uid+"'");
        if(rs2.next()){
            int count=rs2.getInt(1);

        %>
        </td></tr>
        <tr><td align="center">You are following <input type="text" disabled value="<%= count %>"> doctors....
        </td></tr>
        <%  } %></table>
    </body>
</html>
