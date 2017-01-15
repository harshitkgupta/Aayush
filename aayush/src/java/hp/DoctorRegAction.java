
package hp;

import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;
public class DoctorRegAction extends org.apache.struts.action.Action {
@Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        DoctorRegBean ob=(DoctorRegBean) form;
        String fname=ob.getFname();
        String mname=ob.getMname();
        String lname=ob.getLname();
        String id=ob.getId();
        String pass=ob.getPass();
        String sex=ob.getSex();
        String qual=ob.getQual();
        String special=ob.getSpecial();
        String exp=ob.getExp();
        String workat=ob.getWorkat();
        String email=ob.getEmail();
        String mobile=ob.getMobile();
        String country=ob.getCountry();
        String type=ob.getType();
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
        q.setString(3,"doctor");
        int b=q.executeUpdate();
         
      PreparedStatement p=con.prepareStatement("insert into doctor values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
               p.setString(1,fname);
               p.setString(2,mname);
               p.setString(3,lname);
               p.setString(4,id);
               p.setString(5,pass);
               p.setString(6,sex);
               p.setString(7,qual);
               p.setString(8,special);
               p.setString(9,exp);
               p.setString(10,workat);
               p.setString(11,email);
               p.setString(12,mobile);
               p.setString(13,country);
               p.setString(14,type);

                int a=p.executeUpdate();
            if(a<0)
            {   request.setAttribute("msg", "An error occured during Registeration \n please try again");
               return mapping.getInputForward();
            }
             HttpSession s=request.getSession(true);
                         s.setAttribute("id", id);
                    return mapping.findForward("doctor");
        }
       
}

