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
 * @author D K
 */
public class searchbean extends org.apache.struts.action.ActionForm {
    


      private String exp;
    private String special;
    private String country;

    /**
     * @return the exp
     */
    public String getExp() {
        return exp;
    }

    /**
     * @param exp the exp to set
     */
    public void setExp(String exp) {
        this.exp = exp;
    }

    /**
     * @return the special
     */
    public String getSpecial() {
        return special;
    }

    /**
     * @param special the special to set
     */
    public void setSpecial(String special) {
        this.special = special;
    }

    /**
     * @return the country
     */
    public String getCountry() {
        return country;
    }

    /**
     * @param country the country to set
     */
    public void setCountry(String country) {
        this.country = country;
    }

   
}
