<%--
    Document   : Doctor
    Created on : Jul 11, 2011, 10:54:15 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="h" uri="/WEB-INF/struts-html.tld"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<h:html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="skyblue"><center><img src="2.gif" width="1025" height="125"/></center>

        <center>
       <table bgcolor="skyblue" width=1025px ><tr><td><h2> Signup for Doctors </h2></td></tr></table>
          <div style="background-image:url(6.jpg);border: solid aqua;height:650px;width: 1000px;padding: 10px;  ">
               <h:javascript formName="DoctorRegBean" />
               <h:form action="xyz.do" method="post" onsubmit="return validateDoctorRegBean(this)">
          <table border="0" cellspacing="5" cellpadding="2">

              <tbody>
                  <tr> <th colspan="2">${requestScope["msg"]}</th></tr>
                  <tr>
                      <td> First Name*</td>
                      <td><h:text property="fname" /></td>
                  </tr>
                  
                     <tr>
                      <td>Middle Name</td>
                      <td><h:text property="mname"  /></td>
                  </tr>
                  
                     <tr>
                      <td> Last Name</td>
                      <td><h:text property="lname" /></td>
                  </tr>
                 
                     <tr>
                      <td> User-id*</td>
                      <td><h:text property="id" /></td>
                     </tr>
                     
                  <tr>
                      <td> Password*</td>
                      <td><h:password property="pass"  /></td>
                  </tr>
                  
                  <tr>
                      <td>Gender*</td>
                      <td> <h:select property="sex">
                              <h:option value=""> Select Gender</h:option>
                              <h:option value="male">Male</h:option>
                              <h:option value="female">Female</h:option>
                          </h:select></td>
                  </tr>
                 
                  <tr>
                      <td>Qualification*</td>
                      <td> <h:select property="qual">
                              <h:option value="">Select Qualification </h:option>
                              <h:option value="Bch">BCh</h:option>
                              <h:option value="Bchir">BChir</h:option>
                              <h:option value="BM">BM</h:option>
                              <h:option value="BMedsi">BMedSci</h:option>
                              <h:option value="BPharm">BPharm</h:option>
                              <h:option value="BS">BS</h:option>
                              <h:option value="ChB">ChB</h:option>
                              <h:option value="CPH">CPH</h:option>
                              <h:option value="DA">DA</h:option>
                              <h:option value="DCH">DCH</h:option>
                              <h:option value="DCP">DCP</h:option>
                              <h:option value="DDS">DDS</h:option>
                              <h:option value="DFM">DFM</h:option>
                              <h:option value="DGM">DGM</h:option>
                              <h:option value="DGO">DGO</h:option>
                              <h:option value="DIP GU Med">DIP GU Med</h:option>
                              <h:option value="DMR">DMR</h:option>
                              <h:option value="DO">DO</h:option>
                              <h:option value="DObst">DObst</h:option>
                              <h:option value="DPath">DPath</h:option>
                              <h:option value="DPhil">DPhil</h:option>
                              <h:option value="DPysMed">DPhysMed</h:option>
                              <h:option value="DPH">DPH</h:option>
                              <h:option value="DPM">DPM</h:option>
                              <h:option value="DR">DR</h:option>
                              <h:option value="DRCOG">DRCOG</h:option>
                              <h:option value="FFA">FFA</h:option>
                              <h:option value="FFCM">FFCM</h:option>
                              <h:option value="FFFP">FFFP</h:option>
                              <h:option value="FFPath">FFPath</h:option>
                              <h:option value="FFPHM">FFPHM</h:option>
                              <h:option value="FFR">FFR</h:option>
                              <h:option value="FRCA">FRCA</h:option>
                              <h:option value="FRCGP">FRCGP</h:option>
                              <h:option value="FRCOG">FRCOG</h:option>
                              <h:option value="FRCPath">FRCPath</h:option>
                              <h:option value="FRCPS">FRCPS</h:option>
                              <h:option value="FRCPsych">FRCPsych</h:option>
                              <h:option value="FRCR">FRCR</h:option>
                              <h:option value="FRCS">FRCS</h:option>
                              <h:option value="FRCSI">FRCSI</h:option>
                              <h:option value="FRS">FRS</h:option>
                              <h:option value="FRSH">FRSH</h:option>
                              <h:option value="GP">GP</h:option>
                              <h:option value="LMS">LMS</h:option>
                              <h:option value="LRCP">LRCP</h:option>
                              <h:option value="LRCPT">LRCPI</h:option>
                              <h:option value="LRCPS">LRCPS</h:option>
                              <h:option value="LRCS">LRCS</h:option>
                              <h:option value="LRCSI">LRCSI</h:option>
                              <h:option value="MBAcA">MBAcA</h:option>
                              <h:option value="MBBS">MBBS</h:option>
                              <h:option value="MBchb">MBchB</h:option>
                              <h:option value="MCh">MCh</h:option>
                              <h:option value="Mchorth">MChorth</h:option>
                              <h:option value="MD">MD</h:option>
                              <h:option value="MFFP">MFFP</h:option>
                              <h:option value="MFOM">MFOM</h:option>
                              <h:option value="MFPHM">MFPHM</h:option>
                              <h:option value="MMed">MMed</h:option>
                              <h:option value="MMedSc">MMedSc</h:option>
                              <h:option value="MPhil">MPhil</h:option>
                              <h:option value="MRCGP">MRCGP</h:option>
                              <h:option value="MRCOG">MRCOG</h:option>
                              <h:option value="MRCP">MRCP</h:option>
                              <h:option value="MRCPI">MRCPI</h:option>
                              <h:option value="MRCS">MRCS</h:option>
                              <h:option value="MS">MS</h:option>
                              <h:option value="PRHO">PRHO</h:option>
                              <h:option value="Pho">Pho</h:option>
                          </h:select></td>
                  </tr>
                 
                  <tr>
                      <td>Specialization*</td>
                      <td><h:select property="special"  style="width:148px">
					<h:option value="0">--select speciality--</h:option>
										<h:option value="1">Allergy Immunology</h:option>
										<h:option value="2">Allergy (A)</h:option>
										<h:option value="3">Allergy Immunology (AI)</h:option>
										<h:option value="4">Clinical Lab Immunology and Allergy (ALI)</h:option>
										<h:option value="5">Immunology (AG)</h:option>
										<h:option value="6">Alternative Medicine</h:option>
										<h:option value="7">Ayurvedic Medicine</h:option>
										<h:option value="8">Homeopathy</h:option>
										<h:option value="9">Anesthesiology</h:option>
										<h:option value="10">Anesthesiology (AN)</h:option>
										<h:option value="11">Critical Care Medicine (CCA)</h:option>
										<h:option value="12">Pain Management (APM)</h:option>
										<h:option value="13">Cardiology</h:option>
										<h:option value="14">Cardiac Electrophysiology (ICE)</h:option>
										<h:option value="15">Cardiovascular Diseases (CD)</h:option>
										<h:option value="16">Interventional Cardiology (IC)</h:option>
										<h:option value="17">Nuclear Cardiology (NC)</h:option>
										<h:option value="18">Pediatric Cardiology (PDC)</h:option>
										<h:option value="19">Crinology Diabetes Metabolism</h:option>
										<h:option value="20">Diabetes (DIA)</h:option>
										<h:option value="21">Endocrinology (END)</h:option>
										<h:option value="22">Dentistry</h:option>
										<h:option value="23">Dental Public Health</h:option>
										<h:option value="24">Endodontics</h:option>
										<h:option value="25">Oral and Maxillofacial Pathology</h:option>
										<h:option value="26">Oral and Maxillofacial Radiology</h:option>
										<h:option value="27">Oral and Maxillofacial Surgery</h:option>
										<h:option value="28">Orthodontics and Dentofacial Orthopedics</h:option>
										<h:option value="29">Pediatric Dentistry</h:option>
										<h:option value="30">Periodontics</h:option>
										<h:option value="31">Prosthodontics</h:option>
										<h:option value="32">Dermatology</h:option>
										<h:option value="33">Clinical and Lab Derm Immunology (DDL)</h:option>
										<h:option value="34">Dermatology (D)</h:option>
										<h:option value="35">Dermatopathology (4DMP)</h:option>
										<h:option value="36">Pediatric Dermatology (PDD)</h:option>
										<h:option value="37">Emergency Medicine</h:option>
										<h:option value="38">Emergency Medicine (EM)</h:option>
										<h:option value="39">Medical Toxicology (ETX)</h:option>
										<h:option value="40">Pediatric Emergency Medicine (PE)</h:option>
										<h:option value="41">Sports Medicine EM (ESM)</h:option>
										<h:option value="42">Family and General Practice</h:option>
										<h:option value="43">Adolescent Medicine (AMF)</h:option>
										<h:option value="44">Family Practice (FP)</h:option>
										<h:option value="45">General Practice (GP)</h:option>
										<h:option value="46">Sports Medicine FP (FSM)</h:option>
										<h:option value="47">Geriatrics</h:option>
										<h:option value="48">Geriatric Medicine FP (FPG)</h:option>
										<h:option value="49">Geriatric Medicine IM (IMG)</h:option>
										<h:option value="50">Geriatric Psychiatry (PYG)</h:option>
										<h:option value="52">Internal Medicine</h:option>
										<h:option value="53">Adolescent Medicine (AMI)</h:option>
										<h:option value="54">Clinical Laboratory Immunology (ILI)</h:option>
										<h:option value="55">Critical Care Medicine (CCM)</h:option>
										<h:option value="56">Gastroenterology (GE)</h:option>
										<h:option value="57">Hematology (HEM)</h:option>
										<h:option value="58">Hepatology (H)</h:option>
										<h:option value="59">IM Pediatrics (9MPD)</h:option>
										<h:option value="60">Infectious Disease (ID)</h:option>
										<h:option value="61">Internal Medicine (IM)</h:option>
										<h:option value="62">Nephrology (NEP)</h:option>
										<h:option value="63">Nutrition (NTR)</h:option>
										<h:option value="64">Pulmonary Critical Care Medicine (PCC)</h:option>
										<h:option value="65">Pulmonary Disease (PUD)</h:option>
										<h:option value="66">Rheumatology (RHU)</h:option>
										<h:option value="67">Sports Medicine IM (ISM)</h:option>
										<h:option value="68">Vascular Medicine (VM)</h:option>
										<h:option value="69">Medical Genetics</h:option>
										<h:option value="70">Clinical Biochemical Genetics (CBG)</h:option>
										<h:option value="71">Clinical Cytogenetics (CCG)</h:option>
										<h:option value="72">Clinical Genetics (CG)</h:option>
										<h:option value="73">Clinical Molecular Genetics (CMG)</h:option>
										<h:option value="74">Medical Genetics (MG)</h:option>
										<h:option value="75">Molecular Genetic Pathology (MGG)</h:option>
										<h:option value="76">Neurological Surgery</h:option>
										<h:option value="77">Neurological Surgery (NS)</h:option>
										<h:option value="78">Pediatric Surgery Neurological (NSP)</h:option>
										<h:option value="79">Neurology</h:option>
										<h:option value="80">Child Neurology (CHN)</h:option>
										<h:option value="81">Clinical Neurophysiology (CN)</h:option>
										<h:option value="82">Neurodevelopmental Disabilities (NDN)</h:option>
										<h:option value="83">Neurology (N)</h:option>
										<h:option value="84">Neurology DiagRad Neuroradiology (12NRN)</h:option>
										<h:option value="85">Vascular Neurology (VN)</h:option>
										<h:option value="86">Obstetrics and Gynecology</h:option>
										<h:option value="87">Gynecology (GYN)</h:option>
										<h:option value="88">Maternal and Fetal Medicine (MFM)</h:option>
										<h:option value="89">Obstetric Critical Care Medicine (OCC)</h:option>
										<h:option value="90">Obstetrics (OBS)</h:option>
										<h:option value="91">Obstetrics and Gynecology (OBG)</h:option>
										<h:option value="92">Reproductive Endocrinology (REN)</h:option>
										<h:option value="93">Oncology (Cancer)</h:option>
										<h:option value="94">Gynecological Oncology (GO)</h:option>
										<h:option value="95">Hematology Oncology (HO)</h:option>
										<h:option value="96">Medical Oncology (ON)</h:option>
										<h:option value="97">Musculoskeletal Oncology (OMO)</h:option>
										<h:option value="98">Pediatric Hematology Oncology (PHO)</h:option>
										<h:option value="99">Surgical Oncology (SO)</h:option>
										<h:option value="100">Ophthalmology</h:option>
										<h:option value="101">Ophthalmology (OPH)</h:option>
										<h:option value="102">Pediatric Ophthalmology (PO)</h:option>
										<h:option value="103">Orthopedics</h:option>
										<h:option value="104">Adult Reconstructive Orthopedics (OAR)</h:option>
										<h:option value="105">Foot and Ankle Orthopedics (OFA)</h:option>
										<h:option value="106">Hand and Microsurgery</h:option>
										<h:option value="107">Orthopedic Surgery (ORS)</h:option>
										<h:option value="108">Orthopedic Trauma Surgery (OTR)</h:option>
										<h:option value="109">Pediatric Orthopedics (OP)</h:option>
										<h:option value="110">Spine Surgery (OSS)</h:option>
										<h:option value="111">Sports Medicine Orthopedics (OSM)</h:option>
										<h:option value="112">Other</h:option>
										<h:option value="113">Addiction Medicine (ADM)</h:option>
										<h:option value="114">Anti Aging and Regenerative Medicine</h:option>
										<h:option value="115">Clinical Pharmacology (PA)</h:option>
										<h:option value="116">Epidemiology (EP)</h:option>
										<h:option value="117">Hospitalist (HOS)</h:option>
										<h:option value="118">Legal Medicine (LM)</h:option>
										<h:option value="119">Medical Management (MDM)</h:option>
										<h:option value="120">Nuclear Medicine (NM)</h:option>
										<h:option value="121">Osteopathic Manipulative Medicine (OMM)</h:option>
										<h:option value="122">Other Specialty (OS)</h:option>
										<h:option value="123">Pain Medicine (PMD)</h:option>
										<h:option value="124">Palliative Medicine (PLM)</h:option>
										<h:option value="125">Pharmaceutical Medicine (PHM)</h:option>
										<h:option value="126">Sexology</h:option>
										<h:option value="127">Sleep Medicine (SM)</h:option>
										<h:option value="128">Unspecified Specialty (US)</h:option>
										<h:option value="129">Otolaryngology (ENT)</h:option>
										<h:option value="130">Otolaryngology (OTO)</h:option>
										<h:option value="131">Otology Neurotology (NO)</h:option>
										<h:option value="132">Pediatric Otolaryngology (PDO)</h:option>
										<h:option value="133">Pathology</h:option>
										<h:option value="134">Anatomic Clinical Pathology (PTH)</h:option>
										<h:option value="135">Anatomic Pathology (ATP)</h:option>
										<h:option value="136">Bloodbanking Transfusion Medicine (BBK)</h:option>
										<h:option value="137">Chemical Pathology (PCH)</h:option>
										<h:option value="138">Clinical Pathology (CLP)</h:option>
										<h:option value="139">Cytopathology (CTP)</h:option>
										<h:option value="140">Dermatopathology (18DMP)</h:option>
										<h:option value="141">Forensic Pathology (FOP)</h:option>
										<h:option value="142">Hematology (HMP)</h:option>
										<h:option value="143">Medical Microbiology (MM)</h:option>
										<h:option value="144">Molecular Genetic Pathology (MGP)</h:option>
										<h:option value="145">Neuropathology (NP)</h:option>
										<h:option value="146">Pediatric Pathology (PP)</h:option>
										<h:option value="147">Selective Pathology (SP)</h:option>
										<h:option value="148">Pediatrics</h:option>
										<h:option value="149">Adolescent Medicine (ADL)</h:option>
										<h:option value="150">Developmental Behavioral Pediatrics (DBP)</h:option>
										<h:option value="151">IM Pediatrics (19MPD)</h:option>
										<h:option value="152">Neonatal Perinatal Medicine (NPM)</h:option>
										<h:option value="153">Neurodevelopmental Disablilities (NDP)</h:option>
										<h:option value="154">Pediatric Allergy (PDA)</h:option>
										<h:option value="155">Pediatric Anesthesiology (PAN)</h:option>
										<h:option value="156">Pediatric Cardiology</h:option>
										<h:option value="157">Pediatric Clinical and Lab Immunology (PLI)</h:option>
										<h:option value="158">Pediatric Critical Care Medicine (CCP)</h:option>
										<h:option value="159">Pediatric Emergency Medicine (PEM)</h:option>
										<h:option value="160">Pediatric Endocrinology (PDE)</h:option>
										<h:option value="161">Pediatric Gastroenterology (PG)</h:option>
										<h:option value="162">Pediatric Infectious Disease (PDI)</h:option>
										<h:option value="163">Pediatric Medical Toxicology (PDT)</h:option>
										<h:option value="164">Pediatric Nephrology (PN)</h:option>
										<h:option value="165">Pediatric Pulmonology (PDP)</h:option>
										<h:option value="166">Pediatric Rheumatology (PPR)</h:option>
										<h:option value="167">Pediatrics (PD)</h:option>
										<h:option value="168">Sports Medicine Pediatric (PSM)</h:option>
										<h:option value="169">Physical Medicine and Rehabilitation</h:option>
										<h:option value="170">Pediatric Rehabilitation Medicine (PRM)</h:option>
										<h:option value="171">Physical Medicine and Rehabilitation (PM)</h:option>
										<h:option value="172">Spinal Cord Injury (SCI)</h:option>
										<h:option value="173">Sports Medicine PM and R (PMM)</h:option>
										<h:option value="174">Plastic Surgery</h:option>
										<h:option value="175">Craniofacial Surgery (CFS)</h:option>
										<h:option value="176">Facial Plastic Surgery (FPS)</h:option>
										<h:option value="177">Plastic Surgery (PS)</h:option>
										<h:option value="178">Plastic Surgery within Head and Neck (PSH)</h:option>
										<h:option value="179">Preventive Medicine</h:option>
										<h:option value="180">Aerospace Medicine (AM)</h:option>
										<h:option value="181">General Preventive Medicine (GPM)</h:option>
										<h:option value="182">Medical Toxicology (PTX)</h:option>
										<h:option value="183">Occupational Medicine (OM)</h:option>
										<h:option value="184">Public Health and General PrevMed (PHP)</h:option>
										<h:option value="185">Undersea and Hyperbaric Medicine (UM)</h:option>
										<h:option value="186">Psychiatry</h:option>
										<h:option value="187">Addiction Psychiatry (ADP)</h:option>
										<h:option value="188">Child and Adolescent Psychiatry (CHP)</h:option>
										<h:option value="189">Forensic Psychiatry (PFP)</h:option>
										<h:option value="190">Psychiatry (P)</h:option>
										<h:option value="191">Psychoanalysis (PYA)</h:option>
										<h:option value="192">Psychology</h:option>
										<h:option value="193">Behavioral and Cognitive Psychology</h:option>
										<h:option value="194">Clinical Child Psychology</h:option>
										<h:option value="195">Clinical Health Psychology</h:option>
										<h:option value="196">Clinical Neuropsychology</h:option>
										<h:option value="197">Family Psychology</h:option>
										<h:option value="198">Forensic Psychology</h:option>
										<h:option value="199">Rehabilitation Psychology</h:option>
										<h:option value="200">Radiology</h:option>
										<h:option value="201">Abdominal Radiology (AR)</h:option>
										<h:option value="202">Cardiothoracic Radiology (CTR)</h:option>
										<h:option value="203">Diagnostic Radiology (DR)</h:option>
										<h:option value="204">Musculoskeletal Radiology (MSR)</h:option>
										<h:option value="205">Neurology DiagRad Neuroradiology (24NRN)</h:option>
										<h:option value="206">Neuroradiology (RNR)</h:option>
										<h:option value="207">Nuclear Radiology (NR)</h:option>
										<h:option value="208">Pediatric Radiology (PDR)</h:option>
										<h:option value="209">Radiation Oncology (RO)</h:option>
										<h:option value="210">Radiological Physics (RP)</h:option>
										<h:option value="211">Radiology (R)</h:option>
										<h:option value="212">Vascular Interventional Radiology (VIR)</h:option>
										<h:option value="213">Surgery</h:option>
										<h:option value="214">Abdominal Surgery (AS)</h:option>
										<h:option value="215">Bariatric Surgery</h:option>
										<h:option value="216">Breast Surgery</h:option>
										<h:option value="217">Cardiac Surgery</h:option>
										<h:option value="218">Colon and Rectal Surgery (CRS)</h:option>
										<h:option value="219">Cosmetic Surgery (CS)</h:option>
										<h:option value="220">Dermatologic Surgery (DS)</h:option>
										<h:option value="221">General Surgery (GS)</h:option>
										<h:option value="222">Hand Surgery (HS)</h:option>
										<h:option value="223">Head and Neck Surgery (HNS)</h:option>
										<h:option value="224">Oral and Maxillofacial Surgery (OFS)</h:option>
										<h:option value="225">Pediatric Cardiothoracic Surgery (PCS)</h:option>
										<h:option value="226">Pediatric Surgery (PDS)</h:option>
										<h:option value="227">Proctology (PRO)</h:option>
										<h:option value="228">Surgical Critical Care (CCS)</h:option>
										<h:option value="229">Thoracic Surgery (TS)</h:option>
										<h:option value="230">Transplant Surgery (TTS)</h:option>
										<h:option value="231">Trauma Surgery (TRS)</h:option>
										<h:option value="232">Vascular Surgery (VS)</h:option>
										<h:option value="233">Urology</h:option>
										<h:option value="234">Pediatric Urology (UP)</h:option>
										<h:option value="235">Urology (U)</h:option>
									</h:select></td>
                  </tr>
                  
                  <tr>
                      <td>Experience*</td>
                      <td> <h:select property="exp">
                              <h:option value="">Your Experience</h:option>
                              <h:option value="1 year">1 year</h:option>
                              <h:option value="2 years">2 years</h:option>
                              <h:option value="3 years">3 years</h:option>
                               <h:option value="4 years">4 years</h:option>
                              <h:option value="5 years">5 years</h:option>
                               <h:option value="6 years">6 years</h:option>
                              <h:option value="7 years">7 years</h:option>
                               <h:option value="8 years">8 years</h:option>
                              <h:option value="9 years">9 years</h:option>
                               <h:option value="10 years">10 years</h:option>
                              <h:option value="10-15 years">10-15 years</h:option>
                              <h:option value="15-20 years">15-20 years</h:option>
                              <h:option value="20-25 years">20-25 years</h:option>
                              <h:option value="25-30 years">25-30 years</h:option>
                              <h:option value="30-35 years">30-35 years</h:option>
                              <h:option value="35-40 years">35-40 years</h:option>
                          </h:select></td>
                  </tr>
                  <tr></tr>
                     <tr>
                      <td> Working current</td>
                      <td><h:text property="workat"  /></td>
                  </tr>
                  <tr></tr>
                     <tr>
                      <td>E-mail</td>
                      <td><h:text property="email" /></td>
                  </tr>
                  <tr></tr>
                     <tr>
                      <td>Mobile number</td>
                      <td><h:text property="mobile"  /></td>
                  </tr>
                  <tr></tr>
                     <tr>
                      <td>Country*</td>
                      <td><h:select property="country"  style="width:148px">
					<h:option value="0">--select country--</h:option>
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
									</h:select>
                       </td>
                  </tr>
                  <tr></tr>
                  <tr>
                      <td>Profile Privacy</td>
                      <td> <h:select property="type">
                              <h:option value="">Select Privacy </h:option>
                              <h:option value="public">Public</h:option>
                              <h:option value="private">Private</h:option>
                          </h:select></td>
                  </tr>
                  <tr></tr>
                  
                  <tr><td align="right"><h:submit value="SignUp" /></td>
                      <td align="right"><h:reset value="Reset" /></td></tr>
              </tbody>
          </table>
      </h:form>
          </div>
          </center>
    </body>
</h:html>
