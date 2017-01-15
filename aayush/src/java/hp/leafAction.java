/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package hp;


import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author HARSHIT
 */
public class leafAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    
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
      HttpSession ses=request.getSession(false);
           String id=(String)ses.getAttribute("id");
            Date now=new Date();
            SimpleDateFormat ft =
       new SimpleDateFormat ("dd.MM.yyyy");
           

            leafBean ob=(leafBean)form;
            String content=ob.getContent();
            Connection con=myConnection.dbConnection();
            Statement st=con.createStatement();
            int rs=st.executeUpdate("insert into leaf values ('"+id+"','"+content+"','"+ft.format(now)+"')");
           
              return mapping.findForward("doctor");
    }
}
