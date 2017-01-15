
package hp;

import java.sql.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;
public class updateDoctAction extends org.apache.struts.action.Action {

    
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
         HttpSession s=request.getSession(false);
        String id=(String)s.getAttribute("id");
        updateDoctBean ob=(updateDoctBean)form;
        String fname=ob.getFname();
        String mname=ob.getMname();
        String lname=ob.getLname();

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


         PreparedStatement p=con.prepareStatement("update doctor set fname=?,mname=?,lname=?,pass=?,sex=?,qual=?,special=?,exp=?,workat=?,email=?,mobile=?,country=?,type=? where id='"+id+"'");
                  p.setString(1,fname);
               p.setString(2,mname);
               p.setString(3,lname);

               p.setString(4,pass);
               p.setString(5,sex);
               p.setString(6,qual);
               p.setString(7,special);
               p.setString(8,exp);
               p.setString(9,workat);
               p.setString(10,email);
               p.setString(11,mobile);
               p.setString(12,country);
               p.setString(13,type);

int a=p.executeUpdate();
if(a>0)
{   request.setAttribute("id", id);
    return mapping.findForward("profileDoct");
} else
{   request.setAttribute("msg", "An error occured during Updation \n please try again");
       return mapping.getInputForward();
        }

}}
