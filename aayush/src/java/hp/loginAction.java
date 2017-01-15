/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package hp;
import java.sql.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author HARSHIT
 */
public class loginAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
   
    
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        loginBean ob=(loginBean)form;
        Connection c=myConnection.dbConnection();
        String id=ob.getId();
        String pass=ob.getPass();
         String ch=ob.getCh();
        Statement st=c.createStatement();
           
            ResultSet rs=st.executeQuery("select role from login where id='"+id+"' and pass='"+pass+"' ");
            if(rs.next())
            { HttpSession ses=request.getSession(true);
                    ses.setAttribute("id",id);
                    if(ch!=null)
                        {
                                 if(ch.equals("true"))
                                {   String t=id+":"+pass;
                                    Cookie k=new Cookie("LoginCookie",t);
                                    k.setMaxAge(60*60*24*7);
                                    response.addCookie(k);
                                }
                        }
                      String r=rs.getString(1);
                      if(r.equalsIgnoreCase("admin"))
                     {
                          return mapping.findForward("admin");
                     }
                  else if(r.equalsIgnoreCase("doctor"))
                     {
                        return mapping.findForward("doctor");
                    }
                   else if(r.equalsIgnoreCase("user"))
                   {                  
                    return mapping.findForward("user");
                   }
           }
         String s="Invalid username or password";
                request.setAttribute("msg", s);
        return mapping.getInputForward();
    }
}
