
package hp;

import java.sql.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;
public class updateUserAction extends org.apache.struts.action.Action {

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HttpSession s=request.getSession(false);
        String id=(String)s.getAttribute("id");
        updateUserBean ob=(updateUserBean)form;
        String fname=ob.getFname();
        String mname=ob.getMname();
        String lname=ob.getLname();

        String pass=ob.getPass();
        String sex=ob.getSex();

        
        String email=ob.getEmail();
        String mobile=ob.getMobile();
        String country=ob.getCountry();

          Connection con=myConnection.dbConnection();


         PreparedStatement p=con.prepareStatement("update user set fname=?,mname=?,lname=?,pass=?,sex=?,email=?,mobile=?,country=? where id='"+id+'"');
                  p.setString(1,fname);
               p.setString(2,mname);
               p.setString(3,lname);

               p.setString(4,pass);
               p.setString(5,sex);

              
               p.setString(6,email);
               p.setString(7,mobile);
               p.setString(8,country);
int a=p.executeUpdate();
if(a>0)
{request.setAttribute("id", id);
    return mapping.findForward("profileUser");
} else
{   request.setAttribute("msg", "An error occured during Updation \n please try again");
        return mapping.getInputForward();
        }

}}