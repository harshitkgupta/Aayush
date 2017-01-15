<%-- 
    Document   : followers
    Created on : 16 Jul, 2011, 10:27:27 AM
    Author     : AJAY-PREM
--%>

<%@page contentType="text/html" import="java.sql.*,javax.servlet.*" import="javax.servlet.http.HttpSession" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <%
   try{

       HttpSession ses=request.getSession(false);
       String did=(String)ses.getAttribute("id");
   Connection con=hp.myConnection.dbConnection();
   Statement st=con.createStatement();
   String sql="select * from follower where Did='"+did+"'";
   ResultSet rs=st.executeQuery(sql);
   %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>followers</title>
    </head>
    <body bgcolor="#e991f7">
        
        <table width="600" height="330" align="center"><tr><td>
        <table align="center" width="100%" border="1">
            <tr>
                <th>ID</th><th>Name</th><th>Email Id</th>
            </tr>
        <%
        while(rs.next()){
            String uid=rs.getString("Uid");
            Connection con1=hp.myConnection.dbConnection();
        Statement st1=con1.createStatement();
        ResultSet rs1=st1.executeQuery("select fname,lname,email from user where id='"+uid+"'");
            while(rs1.next()){
            String fname=rs1.getString("fname");
            String lname=rs1.getString("lname");
            String email=rs1.getString("email");
            %>
        <tr align="center"><td><%=uid%></td><td><%=fname%> <%=lname%></td><td><%=email %></td></tr>
        <% }} %>
        </table>
        <%
        Connection con2=hp.myConnection.dbConnection();
        Statement st2=con2.createStatement();
        ResultSet rs2=st2.executeQuery("select count(Uid) from follower where Did='"+did+"'");
        if(rs2.next()){
            int count=rs2.getInt(1);

        %>
        </td></tr>
        <tr align="center"><td align="center">You have <input type="text" disabled value="<%= count %>"> followers....
        </td></tr>
        <% } }
            catch(Exception e){
                out.println(e);
                }
          %></table>
    </body>
</html>
