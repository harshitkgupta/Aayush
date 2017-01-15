package hp;
import java.sql.*;
public class myConnection {
public static Connection c;
public static Connection dbConnection()
    {
   try
   {
    Class.forName("com.mysql.jdbc.Driver");
    c=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/aayush", "root", "123");
        }
   catch(Exception f)
   {
       System.out.println(f);
   }
   finally
   {return (c);}
}

}
