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
    ResultSet rs=st.executeQuery("select * from doctor where id='"+id+"'");
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body text="white"><b>
            <form action="pqr.do" method="post">
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
                        <tr><td width="25">First name :</td></tr>
                        <tr><td width="25"><input type="text" name="fname" size="30" value="<%=rs.getString(1)%>"></td></tr>
                        <tr><td width="25">Show/hide Profile :</td></tr>
                        <tr><td width="25">
                                <select name="type" value="<%=rs.getString(14)%>">
                                    <option value="public">public </option>
                                    <option value="private">private </option>
                                </select>
                            </td>
                        </tr>
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
               <td>Qualification :</td>
               <td align="center"> <select name="qual" value="<%=rs.getString(7)%>">
                              <option value="<%=rs.getString(7)%>"><%=rs.getString(7)%> </option>
                              <option value="Bch">BCh</option>
                              <option value="Bchir">BChir</option>
                              <option value="BM">BM</option>
                              <option value="BMedsi">BMedSci</option>
                              <option value="BPharm">BPharm</option>
                              <option value="BS">BS</option>
                              <option value="ChB">ChB</option>
                              <option value="CPH">CPH</option>
                              <option value="DA">DA</option>
                              <option value="DCH">DCH</option>
                              <option value="DCP">DCP</option>
                              <option value="DDS">DDS</option>
                              <option value="DFM">DFM</option>
                              <option value="DGM">DGM</option>
                              <option value="DGO">DGO</option>
                              <option value="DIP GU Med">DIP GU Med</option>
                              <option value="DMR">DMR</option>
                              <option value="DO">DO</option>
                              <option value="DObst">DObst</option>
                              <option value="DPath">DPath</option>
                              <option value="DPhil">DPhil</option>
                              <option value="DPysMed">DPhysMed</option>
                              <option value="DPH">DPH</option>
                              <option value="DPM">DPM</option>
                              <option value="DR">DR</option>
                              <option value="DRCOG">DRCOG</option>
                              <option value="FFA">FFA</option>
                              <option value="FFCM">FFCM</option>
                              <option value="FFFP">FFFP</option>
                              <option value="FFPath">FFPath</option>
                              <option value="FFPHM">FFPHM</option>
                              <option value="FFR">FFR</option>
                              <option value="FRCA">FRCA</option>
                              <option value="FRCGP">FRCGP</option>
                              <option value="FRCOG">FRCOG</option>
                              <option value="FRCPath">FRCPath</option>
                              <option value="FRCPS">FRCPS</option>
                              <option value="FRCPsych">FRCPsych</option>
                              <option value="FRCR">FRCR</option>
                              <option value="FRCS">FRCS</option>
                              <option value="FRCSI">FRCSI</option>
                              <option value="FRS">FRS</option>
                              <option value="FRSH">FRSH</option>
                              <option value="GP">GP</option>
                              <option value="LMS">LMS</option>
                              <option value="LRCP">LRCP</option>
                              <option value="LRCPT">LRCPI</option>
                              <option value="LRCPS">LRCPS</option>
                              <option value="LRCS">LRCS</option>
                              <option value="LRCSI">LRCSI</option>
                              <option value="MBAcA">MBAcA</option>
                              <option value="MBBS">MBBS</option>
                              <option value="MBchb">MBchB</option>
                              <option value="MCh">MCh</option>
                              <option value="Mchorth">MChorth</option>
                              <option value="MD">MD</option>
                              <option value="MFFP">MFFP</option>
                              <option value="MFOM">MFOM</option>
                              <option value="MFPHM">MFPHM</option>
                              <option value="MMed">MMed</option>
                              <option value="MMedSc">MMedSc</option>
                              <option value="MPhil">MPhil</option>
                              <option value="MRCGP">MRCGP</option>
                              <option value="MRCOG">MRCOG</option>
                              <option value="MRCP">MRCP</option>
                              <option value="MRCPI">MRCPI</option>
                              <option value="MRCS">MRCS</option>
                              <option value="MS">MS</option>
                              <option value="PRHO">PRHO</option>
                              <option value="Pho">Pho</option>
                          </select></td>
           </tr>
           <tr>
               <td>Specialization :</td>
               <td align="center"><select name="special"   style="width:148px">
					<option value="<%=rs.getString(8)%>"><%=rs.getString(8)%></option>
										<option value="1">Allergy Immunology</option>
										<option value="2">Allergy (A)</option>
										<option value="3">Allergy Immunology (AI)</option>
										<option value="4">Clinical Lab Immunology and Allergy (ALI)</option>
										<option value="5">Immunology (AG)</option>
										<option value="6">Alternative Medicine</option>
										<option value="7">Ayurvedic Medicine</option>
										<option value="8">Homeopathy</option>
										<option value="9">Anesthesiology</option>
										<option value="10">Anesthesiology (AN)</option>
										<option value="11">Critical Care Medicine (CCA)</option>
										<option value="12">Pain Management (APM)</option>
										<option value="13">Cardiology</option>
										<option value="14">Cardiac Electrophysiology (ICE)</option>
										<option value="15">Cardiovascular Diseases (CD)</option>
										<option value="16">Interventional Cardiology (IC)</option>
										<option value="17">Nuclear Cardiology (NC)</option>
										<option value="18">Pediatric Cardiology (PDC)</option>
										<option value="19">Crinology Diabetes Metabolism</option>
										<option value="20">Diabetes (DIA)</option>
										<option value="21">Endocrinology (END)</option>
										<option value="22">Dentistry</option>
										<option value="23">Dental Public Health</option>
										<option value="24">Endodontics</option>
										<option value="25">Oral and Maxillofacial Pathology</option>
										<option value="26">Oral and Maxillofacial Radiology</option>
										<option value="27">Oral and Maxillofacial Surgery</option>
										<option value="28">Orthodontics and Dentofacial Orthopedics</option>
										<option value="29">Pediatric Dentistry</option>
										<option value="30">Periodontics</option>
										<option value="31">Prosthodontics</option>
										<option value="32">Dermatology</option>
										<option value="33">Clinical and Lab Derm Immunology (DDL)</option>
										<option value="34">Dermatology (D)</option>
										<option value="35">Dermatopathology (4DMP)</option>
										<option value="36">Pediatric Dermatology (PDD)</option>
										<option value="37">Emergency Medicine</option>
										<option value="38">Emergency Medicine (EM)</option>
										<option value="39">Medical Toxicology (ETX)</option>
										<option value="40">Pediatric Emergency Medicine (PE)</option>
										<option value="41">Sports Medicine EM (ESM)</option>
										<option value="42">Family and General Practice</option>
										<option value="43">Adolescent Medicine (AMF)</option>
										<option value="44">Family Practice (FP)</option>
										<option value="45">General Practice (GP)</option>
										<option value="46">Sports Medicine FP (FSM)</option>
										<option value="47">Geriatrics</option>
										<option value="48">Geriatric Medicine FP (FPG)</option>
										<option value="49">Geriatric Medicine IM (IMG)</option>
										<option value="50">Geriatric Psychiatry (PYG)</option>
										<option value="52">Internal Medicine</option>
										<option value="53">Adolescent Medicine (AMI)</option>
										<option value="54">Clinical Laboratory Immunology (ILI)</option>
										<option value="55">Critical Care Medicine (CCM)</option>
										<option value="56">Gastroenterology (GE)</option>
										<option value="57">Hematology (HEM)</option>
										<option value="58">Hepatology (H)</option>
										<option value="59">IM Pediatrics (9MPD)</option>
										<option value="60">Infectious Disease (ID)</option>
										<option value="61">Internal Medicine (IM)</option>
										<option value="62">Nephrology (NEP)</option>
										<option value="63">Nutrition (NTR)</option>
										<option value="64">Pulmonary Critical Care Medicine (PCC)</option>
										<option value="65">Pulmonary Disease (PUD)</option>
										<option value="66">Rheumatology (RHU)</option>
										<option value="67">Sports Medicine IM (ISM)</option>
										<option value="68">Vascular Medicine (VM)</option>
										<option value="69">Medical Genetics</option>
										<option value="70">Clinical Biochemical Genetics (CBG)</option>
										<option value="71">Clinical Cytogenetics (CCG)</option>
										<option value="72">Clinical Genetics (CG)</option>
										<option value="73">Clinical Molecular Genetics (CMG)</option>
										<option value="74">Medical Genetics (MG)</option>
										<option value="75">Molecular Genetic Pathology (MGG)</option>
										<option value="76">Neurological Surgery</option>
										<option value="77">Neurological Surgery (NS)</option>
										<option value="78">Pediatric Surgery Neurological (NSP)</option>
										<option value="79">Neurology</option>
										<option value="80">Child Neurology (CHN)</option>
										<option value="81">Clinical Neurophysiology (CN)</option>
										<option value="82">Neurodevelopmental Disabilities (NDN)</option>
										<option value="83">Neurology (N)</option>
										<option value="84">Neurology DiagRad Neuroradiology (12NRN)</option>
										<option value="85">Vascular Neurology (VN)</option>
										<option value="86">Obstetrics and Gynecology</option>
										<option value="87">Gynecology (GYN)</option>
										<option value="88">Maternal and Fetal Medicine (MFM)</option>
										<option value="89">Obstetric Critical Care Medicine (OCC)</option>
										<option value="90">Obstetrics (OBS)</option>
										<option value="91">Obstetrics and Gynecology (OBG)</option>
										<option value="92">Reproductive Endocrinology (REN)</option>
										<option value="93">Oncology (Cancer)</option>
										<option value="94">Gynecological Oncology (GO)</option>
										<option value="95">Hematology Oncology (HO)</option>
										<option value="96">Medical Oncology (ON)</option>
										<option value="97">Musculoskeletal Oncology (OMO)</option>
										<option value="98">Pediatric Hematology Oncology (PHO)</option>
										<option value="99">Surgical Oncology (SO)</option>
										<option value="100">Ophthalmology</option>
										<option value="101">Ophthalmology (OPH)</option>
										<option value="102">Pediatric Ophthalmology (PO)</option>
										<option value="103">Orthopedics</option>
										<option value="104">Adult Reconstructive Orthopedics (OAR)</option>
										<option value="105">Foot and Ankle Orthopedics (OFA)</option>
										<option value="106">Hand and Microsurgery</option>
										<option value="107">Orthopedic Surgery (ORS)</option>
										<option value="108">Orthopedic Trauma Surgery (OTR)</option>
										<option value="109">Pediatric Orthopedics (OP)</option>
										<option value="110">Spine Surgery (OSS)</option>
										<option value="111">Sports Medicine Orthopedics (OSM)</option>
										<option value="112">Other</option>
										<option value="113">Addiction Medicine (ADM)</option>
										<option value="114">Anti Aging and Regenerative Medicine</option>
										<option value="115">Clinical Pharmacology (PA)</option>
										<option value="116">Epidemiology (EP)</option>
										<option value="117">Hospitalist (HOS)</option>
										<option value="118">Legal Medicine (LM)</option>
										<option value="119">Medical Management (MDM)</option>
										<option value="120">Nuclear Medicine (NM)</option>
										<option value="121">Osteopathic Manipulative Medicine (OMM)</option>
										<option value="122">Other Specialty (OS)</option>
										<option value="123">Pain Medicine (PMD)</option>
										<option value="124">Palliative Medicine (PLM)</option>
										<option value="125">Pharmaceutical Medicine (PHM)</option>
										<option value="126">Sexology</option>
										<option value="127">Sleep Medicine (SM)</option>
										<option value="128">Unspecified Specialty (US)</option>
										<option value="129">Otolaryngology (ENT)</option>
										<option value="130">Otolaryngology (OTO)</option>
										<option value="131">Otology Neurotology (NO)</option>
										<option value="132">Pediatric Otolaryngology (PDO)</option>
										<option value="133">Pathology</option>
										<option value="134">Anatomic Clinical Pathology (PTH)</option>
										<option value="135">Anatomic Pathology (ATP)</option>
										<option value="136">Bloodbanking Transfusion Medicine (BBK)</option>
										<option value="137">Chemical Pathology (PCH)</option>
										<option value="138">Clinical Pathology (CLP)</option>
										<option value="139">Cytopathology (CTP)</option>
										<option value="140">Dermatopathology (18DMP)</option>
										<option value="141">Forensic Pathology (FOP)</option>
										<option value="142">Hematology (HMP)</option>
										<option value="143">Medical Microbiology (MM)</option>
										<option value="144">Molecular Genetic Pathology (MGP)</option>
										<option value="145">Neuropathology (NP)</option>
										<option value="146">Pediatric Pathology (PP)</option>
										<option value="147">Selective Pathology (SP)</option>
										<option value="148">Pediatrics</option>
										<option value="149">Adolescent Medicine (ADL)</option>
										<option value="150">Developmental Behavioral Pediatrics (DBP)</option>
										<option value="151">IM Pediatrics (19MPD)</option>
										<option value="152">Neonatal Perinatal Medicine (NPM)</option>
										<option value="153">Neurodevelopmental Disablilities (NDP)</option>
										<option value="154">Pediatric Allergy (PDA)</option>
										<option value="155">Pediatric Anesthesiology (PAN)</option>
										<option value="156">Pediatric Cardiology</option>
										<option value="157">Pediatric Clinical and Lab Immunology (PLI)</option>
										<option value="158">Pediatric Critical Care Medicine (CCP)</option>
										<option value="159">Pediatric Emergency Medicine (PEM)</option>
										<option value="160">Pediatric Endocrinology (PDE)</option>
										<option value="161">Pediatric Gastroenterology (PG)</option>
										<option value="162">Pediatric Infectious Disease (PDI)</option>
										<option value="163">Pediatric Medical Toxicology (PDT)</option>
										<option value="164">Pediatric Nephrology (PN)</option>
										<option value="165">Pediatric Pulmonology (PDP)</option>
										<option value="166">Pediatric Rheumatology (PPR)</option>
										<option value="167">Pediatrics (PD)</option>
										<option value="168">Sports Medicine Pediatric (PSM)</option>
										<option value="169">Physical Medicine and Rehabilitation</option>
										<option value="170">Pediatric Rehabilitation Medicine (PRM)</option>
										<option value="171">Physical Medicine and Rehabilitation (PM)</option>
										<option value="172">Spinal Cord Injury (SCI)</option>
										<option value="173">Sports Medicine PM and R (PMM)</option>
										<option value="174">Plastic Surgery</option>
										<option value="175">Craniofacial Surgery (CFS)</option>
										<option value="176">Facial Plastic Surgery (FPS)</option>
										<option value="177">Plastic Surgery (PS)</option>
										<option value="178">Plastic Surgery within Head and Neck (PSH)</option>
										<option value="179">Preventive Medicine</option>
										<option value="180">Aerospace Medicine (AM)</option>
										<option value="181">General Preventive Medicine (GPM)</option>
										<option value="182">Medical Toxicology (PTX)</option>
										<option value="183">Occupational Medicine (OM)</option>
										<option value="184">Public Health and General PrevMed (PHP)</option>
										<option value="185">Undersea and Hyperbaric Medicine (UM)</option>
										<option value="186">Psychiatry</option>
										<option value="187">Addiction Psychiatry (ADP)</option>
										<option value="188">Child and Adolescent Psychiatry (CHP)</option>
										<option value="189">Forensic Psychiatry (PFP)</option>
										<option value="190">Psychiatry (P)</option>
										<option value="191">Psychoanalysis (PYA)</option>
										<option value="192">Psychology</option>
										<option value="193">Behavioral and Cognitive Psychology</option>
										<option value="194">Clinical Child Psychology</option>
										<option value="195">Clinical Health Psychology</option>
										<option value="196">Clinical Neuropsychology</option>
										<option value="197">Family Psychology</option>
										<option value="198">Forensic Psychology</option>
										<option value="199">Rehabilitation Psychology</option>
										<option value="200">Radiology</option>
										<option value="201">Abdominal Radiology (AR)</option>
										<option value="202">Cardiothoracic Radiology (CTR)</option>
										<option value="203">Diagnostic Radiology (DR)</option>
										<option value="204">Musculoskeletal Radiology (MSR)</option>
										<option value="205">Neurology DiagRad Neuroradiology (24NRN)</option>
										<option value="206">Neuroradiology (RNR)</option>
										<option value="207">Nuclear Radiology (NR)</option>
										<option value="208">Pediatric Radiology (PDR)</option>
										<option value="209">Radiation Oncology (RO)</option>
										<option value="210">Radiological Physics (RP)</option>
										<option value="211">Radiology (R)</option>
										<option value="212">Vascular Interventional Radiology (VIR)</option>
										<option value="213">Surgery</option>
										<option value="214">Abdominal Surgery (AS)</option>
										<option value="215">Bariatric Surgery</option>
										<option value="216">Breast Surgery</option>
										<option value="217">Cardiac Surgery</option>
										<option value="218">Colon and Rectal Surgery (CRS)</option>
										<option value="219">Cosmetic Surgery (CS)</option>
										<option value="220">Dermatologic Surgery (DS)</option>
										<option value="221">General Surgery (GS)</option>
										<option value="222">Hand Surgery (HS)</option>
										<option value="223">Head and Neck Surgery (HNS)</option>
										<option value="224">Oral and Maxillofacial Surgery (OFS)</option>
										<option value="225">Pediatric Cardiothoracic Surgery (PCS)</option>
										<option value="226">Pediatric Surgery (PDS)</option>
										<option value="227">Proctology (PRO)</option>
										<option value="228">Surgical Critical Care (CCS)</option>
										<option value="229">Thoracic Surgery (TS)</option>
										<option value="230">Transplant Surgery (TTS)</option>
										<option value="231">Trauma Surgery (TRS)</option>
										<option value="232">Vascular Surgery (VS)</option>
										<option value="233">Urology</option>
										<option value="234">Pediatric Urology (UP)</option>
										<option value="235">Urology (U)</option>
									</select></td>
                  </tr>

                  <tr>
                      <td>Experience</td>
                      <td> <select name="exp">
                              <option value="<%=rs.getString(9)%>"><%=rs.getString(9)%></option>
                               <option value="1 year">1 year</option>
                              <option value="2 years">2 years</option>
                              <option value="3 years">3 years</option>
                               <option value="4 years">4 years</option>
                              <option value="5 years">5 years</option>
                               <option value="6 years">6 years</option>
                              <option value="7 years">7 years</option>
                               <option value="8 years">8 years</option>
                              <option value="9 years">9 years</option>
                               <option value="10 years">10 years</option>
                              <option value="10-15 years">10-15 years</option>
                              <option value="15-20 years">15-20 years</option>
                              <option value="20-25 years">20-25 years</option>
                              <option value="25-30 years">25-30 years</option>
                              <option value="30-35 years">30-35 years</option>
                              <option value="35-40 years">35-40 years</option>
                          </select></td>
                  </tr>
                  <tr></tr>
                     <tr>
                      <td> Working current</td>
                      <td><input type="text" name="workat" value="<%=rs.getString(10)%>" /></td>
                  </tr>
                  <tr></tr>
                     <tr>
                      <td>E-mail</td>
                      <td><input type="text" name="email" value="<%=rs.getString(11)%>"/></td>
                  </tr>
                  <tr></tr>
                     <tr>
                      <td>Mobile number</td>
                      <td><input type="text" name="mobile" value="<%=rs.getString(12)%>" /></td>
                  </tr>
                  <tr></tr>
                     <tr>
                      <td>Country</td>
                      <td><select name="country"  style="width:148px" >
                              <option value="<%=rs.getString(13)%>"><%=rs.getString(13)%></option>
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
