<%--
    Document   : profileAyush
    Created on : 12 Jul, 2011, 2:14:02 PM
    Author     : AJAY-PREM
--%>
<%@page import="javax.print.DocFlavor.STRING"%>
<%@page import="hp.myConnection"%>
<%@page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<% Connection c=myConnection.dbConnection();
    Statement st=c.createStatement();
    String id=(String)session.getAttribute("id");
    ResultSet rs=st.executeQuery("select * from user where id='"+id+"'");
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body text="white"><b>
        <form action="pqrs.do">
       <table align="center" width="600" height="630" border="0" background="plusbgpro.jpg">
           <tr><td  width="100" height="100">
               <table width="100" height="100" border="0">
                   <tr width="100" height="80">
                        <td><img src="007.jpg" alt="pic" width="100" height="80"></td>
                   </tr><tr><th colspan="2">${requestScope["msg"]}</th></tr>
                   <tr>
                   <td>
                       <input type="file" value="change pic" name="pic" />
                   </td></tr>
               </table>
           </td>
           <% while (rs.next()){%>
             <td>       <table width="500" height="100" align="center" border="0">
                        <tr><td width="50">First name :</td></tr>
                        <tr><td width="50"><input type="text" name="fname" size="30" value="<%=rs.getString(1)%>"></td></tr>

                    </table></td>

           </tr>
            <tr>
               <td>Middle Name :</td>
               <td align="center"><input type="text" name="mname" size="30" value="<%=rs.getString(2)%>"></td>
           </tr>
           <tr>
               <td>Last Name :</td>
               <td align="center"><input type="text" name="lname" size="30" value="<%=rs.getString(3)%>"></td>
           </tr>
           <tr> <tr>
               <td>Password :</td>
               <td align="center"><input type="text" name="pass" size="30" value="<%=rs.getString(5)%>"></td>
           </tr>
               <td>Gender :</td>
               <td align="center"><input type="text" name="sex" size="30" value="<%=rs.getString(6)%>"></td>
           </tr>
                     <tr>
                      <td>E-mail</td>
                      <td><input type="text" name="email" value="<%=rs.getString(7)%>"/></td>
                  </tr>
                  <tr></tr>
                     <tr>
                      <td>Mobile number</td>
                      <td><input type="text" name="mobile" value="<%=rs.getString(8)%>" /></td>
                  </tr>
                  <tr></tr>
                     <tr>
                      <td>Country</td>
                      <td><select name="country"  style="width:148px" >
                              <option value="<%=rs.getString(9)%>"><%=rs.getString(9)%></option>
										<option value="AFG">Afghanistan</option>
										<option value="NLD">Netherlands</option>
										<option value="ANT">Netherlands Antilles</option>
										<option value="ALB">Albania</option>
										<option value="DZA">Algeria</option>
										<option value="ASM">American Samoa</option>
										<option value="AND">Andorra</option>
										<option value="AGO">Angola</option>
										<option value="AIA">Anguilla</option>
										<option value="ATG">Antigua and Barbuda</option>
										<option value="ARE">United Arab Emirates</option>
										<option value="ARG">Argentina</option>
										<option value="ARM">Armenia</option>
										<option value="ABW">Aruba</option>
										<option value="AUS">Australia</option>
										<option value="AZE">Azerbaijan</option>
										<option value="BHS">Bahamas</option>
										<option value="BHR">Bahrain</option>
										<option value="BGD">Bangladesh</option>
										<option value="BRB">Barbados</option>
										<option value="BEL">Belgium</option>
										<option value="BLZ">Belize</option>
										<option value="BEN">Benin</option>
										<option value="BMU">Bermuda</option>
										<option value="BTN">Bhutan</option>
										<option value="BOL">Bolivia</option>
										<option value="BIH">Bosnia and Herzegovina</option>
										<option value="BWA">Botswana</option>
										<option value="BRA">Brazil</option>
										<option value="GBR">United Kingdom</option>
										<option value="VGB">Virgin Islands, British</option>
										<option value="BRN">Brunei</option>
										<option value="BGR">Bulgaria</option>
										<option value="BFA">Burkina Faso</option>
										<option value="BDI">Burundi</option>
										<option value="CYM">Cayman Islands</option>
										<option value="CHL">Chile</option>
										<option value="COK">Cook Islands</option>
										<option value="CRI">Costa Rica</option>
										<option value="DJI">Djibouti</option>
										<option value="DMA">Dominica</option>
										<option value="DOM">Dominican Republic</option>
										<option value="ECU">Ecuador</option>
										<option value="EGY">Egypt</option>
										<option value="SLV">El Salvador</option>
										<option value="ERI">Eritrea</option>
										<option value="ESP">Spain</option>
										<option value="ZAF">South Africa</option>
										<option value="ETH">Ethiopia</option>
										<option value="FLK">Falkland Islands</option>
										<option value="FJI">Fiji Islands</option>
										<option value="PHL">Philippines</option>
										<option value="FRO">Faroe Islands</option>
										<option value="GAB">Gabon</option>
										<option value="GMB">Gambia</option>
										<option value="GEO">Georgia</option>
										<option value="GHA">Ghana</option>
										<option value="GIB">Gibraltar</option>
										<option value="GRD">Grenada</option>
										<option value="GRL">Greenland</option>
										<option value="GLP">Guadeloupe</option>
										<option value="GUM">Guam</option>
										<option value="GTM">Guatemala</option>
										<option value="GIN">Guinea</option>
										<option value="GNB">Guinea-Bissau</option>
										<option value="GUY">Guyana</option>
										<option value="HTI">Haiti</option>
										<option value="HND">Honduras</option>
										<option value="HKG">Hong Kong</option>
										<option value="SJM">Svalbard and Jan Mayen</option>
										<option value="IDN">Indonesia</option>
										<option value="IND">India</option>
										<option value="IRQ">Iraq</option>
										<option value="IRN">Iran</option>
										<option value="IRL">Ireland</option>
										<option value="ISL">Iceland</option>
										<option value="ISR">Israel</option>
										<option value="ITA">Italy</option>
										<option value="TMP">East Timor</option>
										<option value="AUT">Austria</option>
										<option value="JAM">Jamaica</option>
										<option value="JPN">Japan</option>
										<option value="YEM">Yemen</option>
										<option value="JOR">Jordan</option>
										<option value="CXR">Christmas Island</option>
										<option value="YUG">Yugoslavia</option>
										<option value="KHM">Cambodia</option>
										<option value="CMR">Cameroon</option>
										<option value="CAN">Canada</option>
										<option value="CPV">Cape Verde</option>
										<option value="KAZ">Kazakstan</option>
										<option value="KEN">Kenya</option>
										<option value="CAF">Central African Republic</option>
										<option value="CHN">China</option>
										<option value="KGZ">Kyrgyzstan</option>
										<option value="KIR">Kiribati</option>
										<option value="COL">Colombia</option>
										<option value="COM">Comoros</option>
										<option value="COG">Congo</option>
										<option value="COD">Congo, The Democratic Republic of the</option>
										<option value="CCK">Cocos (Keeling) Islands</option>
										<option value="PRK">North Korea</option>
										<option value="KOR">South Korea</option>
										<option value="GRC">Greece</option>
										<option value="HRV">Croatia</option>
										<option value="CUB">Cuba</option>
										<option value="KWT">Kuwait</option>
										<option value="CYP">Cyprus</option>
										<option value="LAO">Laos</option>
										<option value="LVA">Latvia</option>
										<option value="LSO">Lesotho</option>
										<option value="LBN">Lebanon</option>
										<option value="LBR">Liberia</option>
										<option value="LBY">Libyan Arab Jamahiriya</option>
										<option value="LIE">Liechtenstein</option>
										<option value="LTU">Lithuania</option>
										<option value="LUX">Luxembourg</option>
										<option value="ESH">Western Sahara</option>
										<option value="MAC">Macao</option>
										<option value="MDG">Madagascar</option>
										<option value="MKD">Macedonia</option>
										<option value="MWI">Malawi</option>
										<option value="MDV">Maldives</option>
										<option value="MYS">Malaysia</option>
										<option value="MLI">Mali</option>
										<option value="MLT">Malta</option>
										<option value="MAR">Morocco</option>
										<option value="MHL">Marshall Islands</option>
										<option value="MTQ">Martinique</option>
										<option value="MRT">Mauritania</option>
										<option value="MUS">Mauritius</option>
										<option value="MYT">Mayotte</option>
										<option value="MEX">Mexico</option>
										<option value="FSM">Micronesia, Federated States of</option>
										<option value="MDA">Moldova</option>
										<option value="MCO">Monaco</option>
										<option value="MNG">Mongolia</option>
										<option value="MSR">Montserrat</option>
										<option value="MOZ">Mozambique</option>
										<option value="MMR">Myanmar</option>
										<option value="NAM">Namibia</option>
										<option value="NRU">Nauru</option>
										<option value="NPL">Nepal</option>
										<option value="NIC">Nicaragua</option>
										<option value="NER">Niger</option>
										<option value="NGA">Nigeria</option>
										<option value="NIU">Niue</option>
										<option value="NFK">Norfolk Island</option>
										<option value="NOR">Norway</option>
										<option value="CIV">Côte d’Ivoire</option>
										<option value="OMN">Oman</option>
										<option value="PAK">Pakistan</option>
										<option value="PLW">Palau</option>
										<option value="PAN">Panama</option>
										<option value="PNG">Papua New Guinea</option>
										<option value="PRY">Paraguay</option>
										<option value="PER">Peru</option>
										<option value="PCN">Pitcairn</option>
										<option value="MNP">Northern Mariana Islands</option>
										<option value="PRT">Portugal</option>
										<option value="PRI">Puerto Rico</option>
										<option value="POL">Poland</option>
										<option value="GNQ">Equatorial Guinea</option>
										<option value="QAT">Qatar</option>
										<option value="FRA">France</option>
										<option value="GUF">French Guiana</option>
										<option value="PYF">French Polynesia</option>
										<option value="REU">Réunion</option>
										<option value="ROM">Romania</option>
										<option value="RWA">Rwanda</option>
										<option value="SWE">Sweden</option>
										<option value="SHN">Saint Helena</option>
										<option value="KNA">Saint Kitts and Nevis</option>
										<option value="LCA">Saint Lucia</option>
										<option value="VCT">Saint Vincent and the Grenadines</option>
										<option value="SPM">Saint Pierre and Miquelon</option>
										<option value="DEU">Germany</option>
										<option value="SLB">Solomon Islands</option>
										<option value="ZMB">Zambia</option>
										<option value="WSM">Samoa</option>
										<option value="SMR">San Marino</option>
										<option value="STP">Sao Tome and Principe</option>
										<option value="SAU">Saudi Arabia</option>
										<option value="SEN">Senegal</option>
										<option value="SYC">Seychelles</option>
										<option value="SLE">Sierra Leone</option>
										<option value="SGP">Singapore</option>
										<option value="SVK">Slovakia</option>
										<option value="SVN">Slovenia</option>
										<option value="SOM">Somalia</option>
										<option value="LKA">Sri Lanka</option>
										<option value="SDN">Sudan</option>
										<option value="FIN">Finland</option>
										<option value="SUR">Suriname</option>
										<option value="SWZ">Swaziland</option>
										<option value="CHE">Switzerland</option>
										<option value="SYR">Syria</option>
										<option value="TJK">Tajikistan</option>
										<option value="TWN">Taiwan</option>
										<option value="TZA">Tanzania</option>
										<option value="DNK">Denmark</option>
										<option value="THA">Thailand</option>
										<option value="TGO">Togo</option>
										<option value="TKL">Tokelau</option>
										<option value="TON">Tonga</option>
										<option value="TTO">Trinidad and Tobago</option>
										<option value="TCD">Chad</option>
										<option value="CZE">Czech Republic</option>
										<option value="TUN">Tunisia</option>
										<option value="TUR">Turkey</option>
										<option value="TKM">Turkmenistan</option>
										<option value="TCA">Turks and Caicos Islands</option>
										<option value="TUV">Tuvalu</option>
										<option value="UGA">Uganda</option>
										<option value="UKR">Ukraine</option>
										<option value="HUN">Hungary</option>
										<option value="URY">Uruguay</option>
										<option value="NCL">New Caledonia</option>
										<option value="NZL">New Zealand</option>
										<option value="UZB">Uzbekistan</option>
										<option value="BLR">Belarus</option>
										<option value="WLF">Wallis and Futuna</option>
										<option value="VUT">Vanuatu</option>
										<option value="VAT">Holy See (Vatican City State)</option>
										<option value="VEN">Venezuela</option>
										<option value="RUS">Russian Federation</option>
										<option value="VNM">Vietnam</option>
										<option value="EST">Estonia</option>
										<option value="USA">United States</option>
										<option value="VIR">Virgin Islands, U.S.</option>
										<option value="ZWE">Zimbabwe</option>
										<option value="PSE">Palestine</option>
										<option value="ATA">Antarctica</option>
										<option value="BVT">Bouvet Island</option>
										<option value="IOT">British Indian Ocean Territory</option>
										<option value="SGS">South Georgia and the South Sandwich Islands</option>
										<option value="HMD">Heard Island and McDonald Islands</option>
										<option value="ATF">French Southern territories</option>
										<option value="UMI">United States Minor Outlying Islands</option>
									</select>
                   </td>
           </tr>

               <%}%>
               <tr>     <td  colspan="2" align="center">
                   <input type="image" src="update1.jpg" name="update">

               </td>
           </tr>
       </table>
        </form></b>
    </body>
</html>
