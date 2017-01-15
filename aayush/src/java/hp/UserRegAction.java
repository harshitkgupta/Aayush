

package hp;
import java.io.File;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;



public class UserRegAction extends org.apache.struts.action.Action {



    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
            UserRegBean ob=(UserRegBean)form;
            String fname=ob.getFname();
            String mname=ob.getMname();
            String lname=ob.getLname();
            String id=ob.getId();
            String pass= ob.getPass();
            String sex= ob.getSex();
            String email=ob.getEmail();
            String country=ob.getCountry();
            String mobile=ob.getMobile();
            
            Connection con=myConnection.dbConnection();
            Statement st=con.createStatement();
          ResultSet rs=st.executeQuery("select * from login where id='"+id+"'");
          if(rs.next())
            {   request.setAttribute("msg", "User ID is not available \n please try again");
              return mapping.getInputForward();
            }
          PreparedStatement q=con.prepareStatement("insert into login values(?,?,?)");
            q .setString(1,id);
               q.setString(2,pass);
            q.setString(3,"user");
            int b=q.executeUpdate();
            
          PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?)");
            ps.setString(1,fname);
            ps.setString(2,mname);
            ps.setString(3,lname);
            ps.setString(4,id);
            ps.setString(5,pass);
            ps.setString(6,sex);
            ps.setString(7,email);
            ps.setString(8,mobile);
            ps.setString(9,country);

            int a=ps.executeUpdate();
            if(a<0)
            {   request.setAttribute("msg", "An error occured during Registeration \n please try again");
                return mapping.getInputForward();
            }
             HttpSession s=request.getSession(true);
                         s.setAttribute("id", id);
                    return mapping.findForward("user");
        }
}

