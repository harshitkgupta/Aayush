<%@page contentType="text/html" import="java.sql.*,java.io.*,javax.servlet.*,java.util.*" import="javax.servlet.http.HttpSession;" pageEncoding="UTF-8"%>

   <%
   try{

      HttpSession ses=request.getSession(false);
       String did=(String)ses.getAttribute("id");

      
 ArrayList o=new ArrayList();
   Connection con=hp.myConnection.dbConnection();
                Statement st=con.createStatement();


String as="select Cid from circle where Did='"+did+"' ";
ResultSet rs=st.executeQuery(as);
while(rs.next())
{

o.add(rs.getString(1));

}

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
                <th>ID</th><th>Name</th><th>Email Id</th><th>speciality</th>
            </tr>
        <%
        int ii=o.size();
    
        String w[]=new String[ii];

         ArrayList<String> ar=(ArrayList<String>)o;
         String ww[]=ar.toArray(w);





       for(int j=0;j<ww.length;j++)

{
 Statement st1=con.createStatement();
String asdf="select fname,lname,email,qual from doctor where id='"+ww[j]+"'";
               ResultSet rs1=st1.executeQuery(asdf);
            while(rs1.next()){
            String fname=rs1.getString("fname");
            String lname=rs1.getString("lname");
            String email=rs1.getString("email");
             String s=rs1.getString("qual");
            %>
            <tr align="center"><td><%=ww[j]%></td><td><%=fname%> <%=lname%></td><td><%=email %></td><td><%=s %></td></tr>
        <% }} %>
        </table>
        <%


           int count=ii;

        %>
        </td></tr>
        <tr align="center"><td align="center">You have <input type="text" disabled value="<%= count %>"> Friends....
        </td></tr>
        <%  }
            catch(Exception e){
                out.println(e);
                }
          %></table>
    </body>
</html>
