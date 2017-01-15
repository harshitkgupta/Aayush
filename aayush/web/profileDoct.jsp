<%-- 
    Document   : profileDoct
    Created on : 12 Jul, 2011, 11:13:08 PM
    Author     : AJAY-PREM
--%>
<%@page import="hp.myConnection"%>
<%@page  import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<% Connection c=myConnection.dbConnection();
    Statement st=c.createStatement();
    String id=(String)request.getAttribute("id");
    ResultSet rs=st.executeQuery("select * from doctor where id='"+id+"'");
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
       <body text="white">
        <form action="">
       <table align="center" width="600" height="630" border="0" background="plusbgpro.jpg">
           <tr><td  width="100" height="100">
               <table width="100" height="100" border="0">
                   <tr width="100" height="100">
                        <td><img src="007.jpg" alt="pic" width="100" height="100"></td>
                   </tr>
               </table>
           </td>
             <td>       <table width="500" height="100" align="center" border="0">
                        <tr><td></td></tr>
                        <% while(rs.next()){%>
                        <tr><td width="25" align="center">First name :</td></tr>
                        <tr><td width="25" align="center">
                                <input type="text" name="fname" size="30" disabled value="<%=rs.getString(1)%>">
                                </td></tr>
                    </table></td>

           </tr>
            <tr>
               <td>Middle Name :</td>
               <td align="center"><input type="text" name="mname" size="30" disabled value="<%=rs.getString(2)%>"></td>
           </tr>
           <tr>
               <td>Last Name :</td>
               <td align="center"><input type="text" name="lname" size="30" disabled value="<%=rs.getString(3)%>"></td>
           </tr>
           <tr>
               <td>Password :</td>
               <td align="center"><input type="text" name="sex" size="30" disabled value="<%=rs.getString(5)%>"></td>
           </tr>
           <tr>
               <td>Gender :</td>
               <td align="center"><input type="text" name="sex" size="30" disabled value="<%=rs.getString(6)%>"></td>
           </tr>
           <tr>
               <td>Qualification :</td>
               <td align="center"><input type="text" name="qual" size="30" disabled value="<%=rs.getString(7)%>"></td>
           </tr>
           <tr>
               <td>Specialization :</td>
               <td align="center"><input type="text" name="mname" disabled  size="30" disabled value="<%=rs.getString(8)%>"></td>
           </tr>
           <tr>
               <td>Experience :</td>
               <td align="center"><input type="text" name="exp" size="30" disabled value="<%=rs.getString(9)%>"></td>
           </tr>
           <tr>
               <td>Currently working at :</td>
               <td align="center"><input type="text" name="workat" size="30" disabled value="<%=rs.getString(10)%>"></td>
               </tr>
           <tr>
               <td>Email Id :</td>
               <td align="center"><input type="text" name="email" size="30" disabled value="<%=rs.getString(11)%>"></td>
           </tr>
           <tr>
               <td>Mobile No :</td>
               <td align="center"><input type="text" name="mobile" size="30" disabled value="<%=rs.getString(12)%>"></td>
           </tr>
           <tr>
               <td>Country :</td>
               <td align="center"><input type="text" name="country" size="30" disabled value="<%=rs.getString(13)%>"></td>
           </tr><%}%>
       </table>
        </form>
    </body>

</html>
