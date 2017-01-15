/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package hp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;
/**
 *
 * @author D K
 */
public class searchaction extends org.apache.struts.action.Action {
    
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
         {
     
        try {
            searchbean ob = (searchbean) form;
            String coun = ob.getCountry();
            String b = ob.getExp();
            String cs = ob.getSpecial();
          
        
             Connection con=myConnection.dbConnection();
            Statement st=con.createStatement();
            Statement st1=con.createStatement();
            Statement st2=con.createStatement();
            ArrayList o=new ArrayList();
        
        if(coun.equalsIgnoreCase("")&&b.equalsIgnoreCase("")&&cs.equalsIgnoreCase(""))
        {
         
            String os="no match found";
            o.add(os);
            HttpSession ses=request.getSession(false);
            ses.setAttribute("msg",o);
        }

        else

        {

                
            String as="select id from doctor where country='"+coun+"'";
            ResultSet rs=st.executeQuery(as);
            while(rs.next())
            {
            o.add(rs.getString(1));
            }
            
           
            String ad="select id from doctor where exp='"+b+"'";
            ResultSet rs1=st1.executeQuery(ad);
            while(rs1.next())
            {
            o.add(rs1.getString(1));
            }
            
          
            String af="select id from doctor where special='"+cs+"'";
            ResultSet rs2=st2.executeQuery(af);
            while(rs2.next())
            {
            o.add(rs2.getString(1));
            }
            
            HttpSession ses=request.getSession(false);
            ses.setAttribute("msg",o);

        }
           
        } catch (Exception ex) {
            System.out.println(ex);
        }
         




        return mapping.findForward("searchResult");
    }
}
