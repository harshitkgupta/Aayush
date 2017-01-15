<%--
    Document   : user
    Created on : Jul 11, 2011, 10:54:39 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="h" uri="/WEB-INF/struts-html.tld" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<h:html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="skyblue"><center><img src="2.gif" width="1020" height="100" valign=top/></center>

         <center>
       <table bgcolor="skyblue" width=1020px border="0"><tr><td> <h2> Signup for Users</h2></td></tr></table>
          <div style="background-image:url(6.jpg);border: solid aqua;height:650px;width: 1000px;padding: 10px;  ">
               <h:javascript formName="UserRegBean" />
              <h:form action="wxyz.do" method="post"  onsubmit="return validateUserRegBean(this)">
          <table border="0" cellspacing="5" cellpadding="2">

<tbody> <tr> <th colspan="2">${requestScope["msg"]}</th></tr>
                  <tr>
                      <td>First Name*</td>
                      <td><h:text property="fname"  /></td>
                  </tr>
                  
                  <tr>
                      <td>Middle Name</td>
                      <td><h:text property="mname"  /></td>
                  </tr>
                  
                   <tr>
                      <td>Last Name</td>
                      <td><h:text property="lname"  /></td>
                  </tr>
                   <tr>
                      <td>User-id*</td>
                      <td><h:text property="id"  /></td>
                  </tr>
                  <tr>
                      <td>Password*</td>
                      <td><h:password property="pass"  /> </td>
                  </tr>
                  <tr>
                      <td>Gender*</td>
                      <td> <h:select property="sex">
                               <h:option value="">Select Gender</h:option>
                              <h:option value="male">Male</h:option>
                              <h:option value="female">Female</h:option>
                          </h:select></td>
                  </tr>
                  
                   <tr>
                      <td>E-mail</td>
                      <td><h:text property="email" /></td>
                  </tr>
                  
                   <tr>
                      <td>Mobile number</td>
                      <td><h:text property="mobile"  /></td>
                  </tr>
                
                   <tr>
                      <td>Country*</td>
                      <td><h:select property="country" style="width:148px">
					<h:option value="">--select country--</h:option>
										<h:option value="AFG">Afghanistan</h:option>
										<h:option value="NLD">Netherlands</h:option>
										<h:option value="ANT">Netherlands Antilles</h:option>
										<h:option value="ALB">Albania</h:option>
										<h:option value="DZA">Algeria</h:option>
										<h:option value="ASM">American Samoa</h:option>
										<h:option value="AND">Andorra</h:option>
										<h:option value="AGO">Angola</h:option>
										<h:option value="AIA">Anguilla</h:option>
										<h:option value="ATG">Antigua and Barbuda</h:option>
										<h:option value="ARE">United Arab Emirates</h:option>
										<h:option value="ARG">Argentina</h:option>
										<h:option value="ARM">Armenia</h:option>
										<h:option value="ABW">Aruba</h:option>
										<h:option value="AUS">Australia</h:option>
										<h:option value="AZE">Azerbaijan</h:option>
										<h:option value="BHS">Bahamas</h:option>
										<h:option value="BHR">Bahrain</h:option>
										<h:option value="BGD">Bangladesh</h:option>
										<h:option value="BRB">Barbados</h:option>
										<h:option value="BEL">Belgium</h:option>
										<h:option value="BLZ">Belize</h:option>
										<h:option value="BEN">Benin</h:option>
										<h:option value="BMU">Bermuda</h:option>
										<h:option value="BTN">Bhutan</h:option>
										<h:option value="BOL">Bolivia</h:option>
										<h:option value="BIH">Bosnia and Herzegovina</h:option>
										<h:option value="BWA">Botswana</h:option>
										<h:option value="BRA">Brazil</h:option>
										<h:option value="GBR">United Kingdom</h:option>
										<h:option value="VGB">Virgin Islands, British</h:option>
										<h:option value="BRN">Brunei</h:option>
										<h:option value="BGR">Bulgaria</h:option>
										<h:option value="BFA">Burkina Faso</h:option>
										<h:option value="BDI">Burundi</h:option>
										<h:option value="CYM">Cayman Islands</h:option>
										<h:option value="CHL">Chile</h:option>
										<h:option value="COK">Cook Islands</h:option>
										<h:option value="CRI">Costa Rica</h:option>
										<h:option value="DJI">Djibouti</h:option>
										<h:option value="DMA">Dominica</h:option>
										<h:option value="DOM">Dominican Republic</h:option>
										<h:option value="ECU">Ecuador</h:option>
										<h:option value="EGY">Egypt</h:option>
										<h:option value="SLV">El Salvador</h:option>
										<h:option value="ERI">Eritrea</h:option>
										<h:option value="ESP">Spain</h:option>
										<h:option value="ZAF">South Africa</h:option>
										<h:option value="ETH">Ethiopia</h:option>
										<h:option value="FLK">Falkland Islands</h:option>
										<h:option value="FJI">Fiji Islands</h:option>
										<h:option value="PHL">Philippines</h:option>
										<h:option value="FRO">Faroe Islands</h:option>
										<h:option value="GAB">Gabon</h:option>
										<h:option value="GMB">Gambia</h:option>
										<h:option value="GEO">Georgia</h:option>
										<h:option value="GHA">Ghana</h:option>
										<h:option value="GIB">Gibraltar</h:option>
										<h:option value="GRD">Grenada</h:option>
										<h:option value="GRL">Greenland</h:option>
										<h:option value="GLP">Guadeloupe</h:option>
										<h:option value="GUM">Guam</h:option>
										<h:option value="GTM">Guatemala</h:option>
										<h:option value="GIN">Guinea</h:option>
										<h:option value="GNB">Guinea-Bissau</h:option>
										<h:option value="GUY">Guyana</h:option>
										<h:option value="HTI">Haiti</h:option>
										<h:option value="HND">Honduras</h:option>
										<h:option value="HKG">Hong Kong</h:option>
										<h:option value="SJM">Svalbard and Jan Mayen</h:option>
										<h:option value="IDN">Indonesia</h:option>
										<h:option value="IND">India</h:option>
										<h:option value="IRQ">Iraq</h:option>
										<h:option value="IRN">Iran</h:option>
										<h:option value="IRL">Ireland</h:option>
										<h:option value="ISL">Iceland</h:option>
										<h:option value="ISR">Israel</h:option>
										<h:option value="ITA">Italy</h:option>
										<h:option value="TMP">East Timor</h:option>
										<h:option value="AUT">Austria</h:option>
										<h:option value="JAM">Jamaica</h:option>
										<h:option value="JPN">Japan</h:option>
										<h:option value="YEM">Yemen</h:option>
										<h:option value="JOR">Jordan</h:option>
										<h:option value="CXR">Christmas Island</h:option>
										<h:option value="YUG">Yugoslavia</h:option>
										<h:option value="KHM">Cambodia</h:option>
										<h:option value="CMR">Cameroon</h:option>
										<h:option value="CAN">Canada</h:option>
										<h:option value="CPV">Cape Verde</h:option>
										<h:option value="KAZ">Kazakstan</h:option>
										<h:option value="KEN">Kenya</h:option>
										<h:option value="CAF">Central African Republic</h:option>
										<h:option value="CHN">China</h:option>
										<h:option value="KGZ">Kyrgyzstan</h:option>
										<h:option value="KIR">Kiribati</h:option>
										<h:option value="COL">Colombia</h:option>
										<h:option value="COM">Comoros</h:option>
										<h:option value="COG">Congo</h:option>
										<h:option value="COD">Congo, The Democratic Republic of the</h:option>
										<h:option value="CCK">Cocos (Keeling) Islands</h:option>
										<h:option value="PRK">North Korea</h:option>
										<h:option value="KOR">South Korea</h:option>
										<h:option value="GRC">Greece</h:option>
										<h:option value="HRV">Croatia</h:option>
										<h:option value="CUB">Cuba</h:option>
										<h:option value="KWT">Kuwait</h:option>
										<h:option value="CYP">Cyprus</h:option>
										<h:option value="LAO">Laos</h:option>
										<h:option value="LVA">Latvia</h:option>
										<h:option value="LSO">Lesotho</h:option>
										<h:option value="LBN">Lebanon</h:option>
										<h:option value="LBR">Liberia</h:option>
										<h:option value="LBY">Libyan Arab Jamahiriya</h:option>
										<h:option value="LIE">Liechtenstein</h:option>
										<h:option value="LTU">Lithuania</h:option>
										<h:option value="LUX">Luxembourg</h:option>
										<h:option value="ESH">Western Sahara</h:option>
										<h:option value="MAC">Macao</h:option>
										<h:option value="MDG">Madagascar</h:option>
										<h:option value="MKD">Macedonia</h:option>
										<h:option value="MWI">Malawi</h:option>
										<h:option value="MDV">Maldives</h:option>
										<h:option value="MYS">Malaysia</h:option>
										<h:option value="MLI">Mali</h:option>
										<h:option value="MLT">Malta</h:option>
										<h:option value="MAR">Morocco</h:option>
										<h:option value="MHL">Marshall Islands</h:option>
										<h:option value="MTQ">Martinique</h:option>
										<h:option value="MRT">Mauritania</h:option>
										<h:option value="MUS">Mauritius</h:option>
										<h:option value="MYT">Mayotte</h:option>
										<h:option value="MEX">Mexico</h:option>
										<h:option value="FSM">Micronesia, Federated States of</h:option>
										<h:option value="MDA">Moldova</h:option>
										<h:option value="MCO">Monaco</h:option>
										<h:option value="MNG">Mongolia</h:option>
										<h:option value="MSR">Montserrat</h:option>
										<h:option value="MOZ">Mozambique</h:option>
										<h:option value="MMR">Myanmar</h:option>
										<h:option value="NAM">Namibia</h:option>
										<h:option value="NRU">Nauru</h:option>
										<h:option value="NPL">Nepal</h:option>
										<h:option value="NIC">Nicaragua</h:option>
										<h:option value="NER">Niger</h:option>
										<h:option value="NGA">Nigeria</h:option>
										<h:option value="NIU">Niue</h:option>
										<h:option value="NFK">Norfolk Island</h:option>
										<h:option value="NOR">Norway</h:option>
										<h:option value="CIV">Côte d’Ivoire</h:option>
										<h:option value="OMN">Oman</h:option>
										<h:option value="PAK">Pakistan</h:option>
										<h:option value="PLW">Palau</h:option>
										<h:option value="PAN">Panama</h:option>
										<h:option value="PNG">Papua New Guinea</h:option>
										<h:option value="PRY">Paraguay</h:option>
										<h:option value="PER">Peru</h:option>
										<h:option value="PCN">Pitcairn</h:option>
										<h:option value="MNP">Northern Mariana Islands</h:option>
										<h:option value="PRT">Portugal</h:option>
										<h:option value="PRI">Puerto Rico</h:option>
										<h:option value="POL">Poland</h:option>
										<h:option value="GNQ">Equatorial Guinea</h:option>
										<h:option value="QAT">Qatar</h:option>
										<h:option value="FRA">France</h:option>
										<h:option value="GUF">French Guiana</h:option>
										<h:option value="PYF">French Polynesia</h:option>
										<h:option value="REU">Réunion</h:option>
										<h:option value="ROM">Romania</h:option>
										<h:option value="RWA">Rwanda</h:option>
										<h:option value="SWE">Sweden</h:option>
										<h:option value="SHN">Saint Helena</h:option>
										<h:option value="KNA">Saint Kitts and Nevis</h:option>
										<h:option value="LCA">Saint Lucia</h:option>
										<h:option value="VCT">Saint Vincent and the Grenadines</h:option>
										<h:option value="SPM">Saint Pierre and Miquelon</h:option>
										<h:option value="DEU">Germany</h:option>
										<h:option value="SLB">Solomon Islands</h:option>
										<h:option value="ZMB">Zambia</h:option>
										<h:option value="WSM">Samoa</h:option>
										<h:option value="SMR">San Marino</h:option>
										<h:option value="STP">Sao Tome and Principe</h:option>
										<h:option value="SAU">Saudi Arabia</h:option>
										<h:option value="SEN">Senegal</h:option>
										<h:option value="SYC">Seychelles</h:option>
										<h:option value="SLE">Sierra Leone</h:option>
										<h:option value="SGP">Singapore</h:option>
										<h:option value="SVK">Slovakia</h:option>
										<h:option value="SVN">Slovenia</h:option>
										<h:option value="SOM">Somalia</h:option>
										<h:option value="LKA">Sri Lanka</h:option>
										<h:option value="SDN">Sudan</h:option>
										<h:option value="FIN">Finland</h:option>
										<h:option value="SUR">Suriname</h:option>
										<h:option value="SWZ">Swaziland</h:option>
										<h:option value="CHE">Switzerland</h:option>
										<h:option value="SYR">Syria</h:option>
										<h:option value="TJK">Tajikistan</h:option>
										<h:option value="TWN">Taiwan</h:option>
										<h:option value="TZA">Tanzania</h:option>
										<h:option value="DNK">Denmark</h:option>
										<h:option value="THA">Thailand</h:option>
										<h:option value="TGO">Togo</h:option>
										<h:option value="TKL">Tokelau</h:option>
										<h:option value="TON">Tonga</h:option>
										<h:option value="TTO">Trinidad and Tobago</h:option>
										<h:option value="TCD">Chad</h:option>
										<h:option value="CZE">Czech Republic</h:option>
										<h:option value="TUN">Tunisia</h:option>
										<h:option value="TUR">Turkey</h:option>
										<h:option value="TKM">Turkmenistan</h:option>
										<h:option value="TCA">Turks and Caicos Islands</h:option>
										<h:option value="TUV">Tuvalu</h:option>
										<h:option value="UGA">Uganda</h:option>
										<h:option value="UKR">Ukraine</h:option>
										<h:option value="HUN">Hungary</h:option>
										<h:option value="URY">Uruguay</h:option>
										<h:option value="NCL">New Caledonia</h:option>
										<h:option value="NZL">New Zealand</h:option>
										<h:option value="UZB">Uzbekistan</h:option>
										<h:option value="BLR">Belarus</h:option>
										<h:option value="WLF">Wallis and Futuna</h:option>
										<h:option value="VUT">Vanuatu</h:option>
										<h:option value="VAT">Holy See (Vatican City State)</h:option>
										<h:option value="VEN">Venezuela</h:option>
										<h:option value="RUS">Russian Federation</h:option>
										<h:option value="VNM">Vietnam</h:option>
										<h:option value="EST">Estonia</h:option>
										<h:option value="USA">United States</h:option>
										<h:option value="VIR">Virgin Islands, U.S.</h:option>
										<h:option value="ZWE">Zimbabwe</h:option>
										<h:option value="PSE">Palestine</h:option>
										<h:option value="ATA">Antarctica</h:option>
										<h:option value="BVT">Bouvet Island</h:option>
										<h:option value="IOT">British Indian Ocean Territory</h:option>
										<h:option value="SGS">South Georgia and the South Sandwich Islands</h:option>
										<h:option value="HMD">Heard Island and McDonald Islands</h:option>
										<h:option value="ATF">French Southern territories</h:option>
										<h:option value="UMI">United States Minor Outlying Islands</h:option>
									</h:select></td>
                  </tr>
               
                  
                  <tr><td align="right"><h:submit  value="Submit" /></td>
                      <td align="right"><h:reset value="Reset" /></td></tr>
              </tbody>
          </table>


          
              </h:form>
    <marquee><font style="text-align:right;text-decoration:blink;color:white;"><h1>Private Healthcare Aayush</h1>
   <h3>helping you make the right choice</h3></font>
    </marquee>
          </div>

          </center>
    </body>
</h:html>