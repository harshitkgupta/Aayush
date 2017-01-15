/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package hp;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author HARSHIT
 */
public class loginBean extends org.apache.struts.action.ActionForm {
    
    private String id,pass,ch;


    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the pass
     */
    public String getPass() {
        return pass;
    }

    /**
     * @param pass the pass to set
     */
    public void setPass(String pass) {
        this.pass = pass;
    }

   
    /**
     * @return the ch
     */
    public String getCh() {
        return ch;
    }

    /**
     * @param ch the ch to set
     */
    public void setCh(String ch) {
        this.ch = ch;
    }
}
