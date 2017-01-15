package hp;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author D K
 */
public class updateDoctBean extends org.apache.struts.action.ActionForm {
    private String fname;
    private String mname;
    private String lname;
  
    private String pass;
    private String sex;
    private String qual;
    private String special;
    private String exp;
    private String workat;
    private String email;
    private String mobile;
    private String country;
    private String type;

    /**
     * @return the fname
     */
    public String getFname() {
        return fname;
    }

    /**
     * @param fname the fname to set
     */
    public void setFname(String fname) {
        this.fname = fname;
    }

    /**
     * @return the mname
     */
    public String getMname() {
        return mname;
    }

    /**
     * @param mname the mname to set
     */
    public void setMname(String mname) {
        this.mname = mname;
    }

    /**
     * @return the lname
     */
    public String getLname() {
        return lname;
    }

    /**
     * @param lname the lname to set
     */
    public void setLname(String lname) {
        this.lname = lname;
    }

   
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
     * @return the sex
     */
    public String getSex() {
        return sex;
    }

    /**
     * @param sex the sex to set
     */
    public void setSex(String sex) {
        this.sex = sex;
    }

    /**
     * @return the qual
     */
    public String getQual() {
        return qual;
    }

    /**
     * @param qual the qual to set
     */
    public void setQual(String qual) {
        this.qual = qual;
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
     * @return the workat
     */
    public String getWorkat() {
        return workat;
    }

    /**
     * @param workat the workat to set
     */
    public void setWorkat(String workat) {
        this.workat = workat;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the mobile
     */
    public String getMobile() {
        return mobile;
    }

    /**
     * @param mobile the mobile to set
     */
    public void setMobile(String mobile) {
        this.mobile = mobile;
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

    /**
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }

}
