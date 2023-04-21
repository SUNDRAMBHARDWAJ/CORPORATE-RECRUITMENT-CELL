<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Registration_seeker</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>
<link rel="stylesheet" href="CSS/reg_background.css" type="text/css">
<link rel="stylesheet" href="CSS/Design.css" type="text/css">
<script language="JavaScript">
  function validateDOB(thisDate)
{
	var checkstr = "0123456789";
	var DateField = thisDate;

	var DateValue = thisDate;
	var DateTemp = "";

	var seperator = "-";
	var day;
	var month;
	var year;
	var leap = 0;
	var err = 0;
	var i;
	

	if(thisDate == "") err = 10;
	else 
	{
		
		if (DateValue.length != 9) err = 19;

		day = DateValue.substr(0,2);
		if (day < 1) err = 22;

		month = DateValue.substr(3,3);
		if(!isNaN(month)) err=13;
		var mon = month;
		mon = mon.toUpperCase();

		if ((mon != "JAN")  && (mon != "FEB") && (mon != "MAR") && (mon != "APR") && (mon != "MAY") && (mon != "JUN") && (mon != "JUL") && (mon != "AUG") && (mon != "SEP") && (mon != "OCT") && (mon != "NOV") && (mon != "DEC")) err = 21;

		year = DateValue.substr(7,2);
		if(year >= 0 && year <=8) yr = 20 + year;
		else yr=19+year;

		if ((yr % 4 == 0) || (yr % 100 == 0) || (yr % 400 == 0)) leap = 1;
		if ((mon == "FEB") && (leap == 1) && (day > 29)) err = 23;
		if ((mon == "FEB") && (leap != 1) && (day > 28)) err = 24;


		if ((day > 31) && ((mon == "JAN") || (mon == "MAR") || (mon == "MAY") || (mon == "JUL") || (mon == "AUG") || (mon == "OCT") || (mon == "DEC"))) err = 25;
		if ((day > 30) && ((mon == "APR") || (mon == "JUN") || (mon == "SEP") || (month == "NOV"))) err = 26;
		if ((day == 0) && (month == "") && (year == 00)) {err = 0; day = ""; month = ""; year = ""; seperator = "";}

		DateValue = day + seperator + month + seperator + year;
		if(DateField != DateValue) err = 12;

		
		
		
	}
	//alert("DateTemp: " + DateTemp);
	if (err != 0) return false;
	else return true;
}


  function pv(ThisForm)
  {
     if (ThisForm.fname.value == "")
    {
      alert("Please Enter Your \"FIRSTNAME\".");
      ThisForm.fname.focus();
      return(false);
    }
	if (ThisForm.lname.value == "")
    {
      alert("Please Enter Your \"LASTNAME\".");
      ThisForm.lname.focus();
      return(false);
    }
	  db = cf.dob.value;
	if(!validateDOB(db))
	  {
		alert("please enter valid date(dd-mon-yy");
             cf.dob.focus();
      return(false);
      }

    if (ThisForm.cellno.value == "")
    {
      alert("Please Enter Your \"cellno\".");
      ThisForm.cellno.focus();
      return(false);
    }

    if (ThisForm.sex.value == "")
    {
      alert("Please Enter Your \"sex\".");
      ThisForm.sex.focus();
      return(false);
    }

    if (ThisForm.passportno.value == "")
    {
      alert("Please Enter Your \"passportno\".");
      ThisForm.passportno.focus();
      return(false);
    }
      if (ThisForm.email.value == "")
    {
      alert("Please Enter Your \"email\".");
      ThisForm.email.focus();
      return(false);
    }
	if (!((/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(cf.email.value)))){
		alert("Invalid E-mail Address! Please re-enter.");
		cf.email.value="";
		cf.email.focus();
		return (false)
	}
    if (ThisForm.hobbies.value == "")
    {
      alert("Please CONFIRM Your \"hobbies\".");
      ThisForm.hobbies.focus();
      return(false);
    }

    if (ThisForm.p_streetname.value == "")
    {
      alert("Please Enter Your \"streetname\".");
      ThisForm.p_streetname.focus();
      return(false);
    }
	 if (ThisForm.c_streetname.value == "")
    {
      alert("Please Enter Your \"streetname\".");
      ThisForm.c_streetname.focus();
      return(false);
    }

    if (ThisForm.p_area.value == "")
    {
      alert("Please Enter Your \"AREA\".");
      ThisForm.p_area.focus();
      return(false);
    }

    if (ThisForm.c_area.value == "")
    {
      alert("Please Enter Your \"AREA\".");
      ThisForm.c_area.focus();
      return(false);
    }

    if (ThisForm.p_city.value == "")
    {
      alert("Please Enter Your \"city\".");
      ThisForm.p_city.focus();
      return(false);
    }   

    if (ThisForm.c_city.value == "")
    {
      alert("Please Enter Your \"CITY\".");
      ThisForm.c_city.focus();
      return(false);
    }

   
   
	 if (ThisForm.qualification.value == "")
    {
      alert("Please Enter Your \"qualification\".");
      ThisForm.qualification.focus();
      return(false);
    }    
	if (ThisForm.branch.value == "")
    {
      alert("Please Enter Your \"branch\".");
      ThisForm.branch.focus();
      return(false);
    }   
  if (ThisForm.skills.value == "")
    {
      alert("Please Enter Your \"skills\".");
      ThisForm.skills.focus();
      return(false);
    }   
  if (ThisForm.o_qualifications.value == "")
    {
      alert("Please Enter Your \"qualification\".");
      ThisForm.o_qualifications.focus();
      return(false);
    }
	if (ThisForm.experience.value == "")
    {
      alert("Please Enter Your \"experience\".");
      ThisForm.experience.focus();
      return(false);
    }   
  if (ThisForm.quali.value == "")
    {
      alert("Please Enter Your \"qualification\".");
      ThisForm.quali.focus();
      return(false);
    }   
   if (ThisForm.m_board.value == "")
    {
      alert("Please Enter Your \"UNIVERSITY\".");
      ThisForm.m_board.focus();
      return(false);
    }   
	 if (ThisForm.m_year.value == "")
    {
      alert("Please Enter Your \"year\".");
      ThisForm.m_year.focus();
      return(false);
    }   
	 if (ThisForm.m_per.value == "")
    {
      alert("Please Enter Your \"PERCENTAGE\".");
      ThisForm.m_per.focus();
      return(false);
    }  
	if (ThisForm.degree.value == "")
    {
      alert("Please Enter Your \"degree\".");
      ThisForm.degree.focus();
      return(false);
    }
	 if (ThisForm.i_board.value == "")
    {
      alert("Please Enter Your \"university\".");
      ThisForm.i_board.focus();
      return(false);
    } 
	 if (ThisForm.i_year.value == "")
    {
      alert("Please Enter Your \"year\".");
      ThisForm.i_year.focus();
      return(false);
    }   
   if (ThisForm.i_per.value == "")
    {
      alert("Please Enter Your \"percentage\".");
      ThisForm.i_per.focus();
      return(false);
    } 
	if (ThisForm.higher.value == "")
    {
      alert("Please Enter Your \"higher\".");
      ThisForm.higher();
      return(false);
    }   
	 if (ThisForm.u_university.value == "")
    {
      alert("Please Enter Your \"university\".");
      ThisForm.u_university.focus();
      return(false);
    }   
	 if (ThisForm.u_year.value == "")
    {
      alert("Please Enter Your \"year\".");
      ThisForm.u_year.focus();
      return(false);
    } 
	 if (ThisForm.u_per.value == "")
    {
      alert("Please Enter Your \"percentage\".");
      ThisForm.u_per.focus();
      return(false);
    }   
	 if (ThisForm.ssc.value == "")
    {
      alert("Please Enter Your \"ssc\".");
      ThisForm.ssc.focus();
      return(false);
    }   
	 if (ThisForm.p_university.value == "")
    {
      alert("Please Enter Your \"university\".");
      ThisForm.p_university.focus();
      return(false);
    } 
	 if (ThisForm.p_year.value == "")
    {
      alert("Please Enter Your \"year\".");
      ThisForm.p_year.focus();
      return(false);
    }   
	 if (ThisForm.p_per.value == "")
    {
      alert("Please Enter Your \"percentage\".");
      ThisForm.p_per.focus();
      return(false);
    }   
	 if (ThisForm.passwd.value == "")
    {
      alert("Please Enter Your \"passwd\".");
      ThisForm.passwd.focus();
      return(false);
    }
	 if (ThisForm.retypepassword.value == "")
    {
      alert("Please Enter Your \"retypepassword\".");
      ThisForm.retypepassword.focus();
      return(false);
    } 
	 if (ThisForm.question.value == "")
    {
      alert("Please Enter Your \"question\".");
      ThisForm.question.focus();
      return(false);
    }   
   if (ThisForm.answer.value == "")
    {
      alert("Please Enter Your \" answer\".");
      ThisForm.answer.focus();
      return(false);
    }   
  }

   
  function cblur(ThisField)
  {
    cnt=0
    var val=ThisField.value
    len=val.length
    if(len !=0)
    {
      for(i=0;i<len;i++)
      {
        c=val.substr(i,1)
        if(c==" ") cnt++
      }
      if(cnt==len)
      {
        ThisField.value=""
        alert("Your Input Contains Only Space")
        ThisField.focus();
        return(false);
      }
    }
  r=0
  if((ThisField.name=="fname") ||(ThisField.name=="lname") ||(ThisField.name=="sex")||(ThisField.name=="p_streetname")||(ThisField.name=="c_streetname")||(ThisField.name=="p_area")||(ThisField.name=="c_area")||(ThisField.name=="p_city")||(ThisField.name=="c_city")||(ThisField.name=="higher")||(ThisField.name=="skills")||(ThisField.name=="o_qualification")||(ThisField.name=="quali")||(ThisField.name=="m_board")|(ThisField.name=="degree")||(ThisField.name=="i_board")||(ThisField.name=="u_university")||(ThisField.name=="ssc")||(ThisField.name=="p_university")||(ThisField.name=="passwd")||(ThisField.name=="retypepassword")||(ThisField.name=="higher"))
  {
    for(i=0;i<len;i++)
    {
      c=val.substr(i,1)
      if((c<"a"||c>"z")&&(c<"A"||c>"z")&&(c!=" ")&&(c!="."))
      {
        r=r+1
      }
    }
    if(r>0)
    {
      alert("Please Enter Only \"ALPHABETS\".")
      ThisField.value="";
      ThisField.focus();
      return(false);
    }
    /*else
    {
      window.cf.CId.focus();
    } */
  }
  //*******************************
  if((ThisField.name=="cellno") || (ThisField.name=="phno") || (ThisField.name=="experience") || (ThisField.name=="m_year") || (ThisField.name=="m_per") || (ThisField.name=="i_year")|| (ThisField.name=="i_per")|| (ThisField.name=="u_year")|| (ThisField.name=="u_per")|| (ThisField.name=="p_year")|| (ThisField.name=="p_per") )
  {
    for(i=0;i<len;i++)
    {
      c=val.substr(i,1)
      if((c<"0" ||c>"9") && (c!="-"))
      {
        r=r+1
      }
    }
    if(r>0)
    {
      alert("Enter Only \"NUMBERS\"!")
      ThisField.value= "";
      ThisField.focus();
      return(false);
    }
  }
}
   
function foc()
 {
  document.cf.fname.focus();
 }
</script>
</HEAD>

<body>
         
<form name="cf" method="post" action="sregister.jsp" onsubmit="return pv(this)">
 <nav id="main-menuBar">
			<ul id="main-menuBar">
                        
                  <li class="no-sub"><a href="contact.html" class="top" style="text-decoration:none">Contact us</a></li>                  
                  <li class="no-sub">
				  <a href="about.html" class="top" style="text-decoration:none">About</a></li>
                  <li class="no-sub">
						<a href="index.html" class="top" style="text-decoration:none">Home</a>
					</li>
             </ul>
            </nav>
			  <div class="clearfix"></div>
            <footer id="main-footer-mainpage">
            			<header id="footer-header">
                            <h2 class="visuallyHidden"></h2>
                            <img src="" >
                        </header>
                    <nav id="footer-nav">
                        <ul id="common-links">
                            <ul>CORPORATE RECRUITMENT SYSYTEM</ul>
                        </ul>
                    </nav>
                    <div class="clearfix"></div>
                    <div id="copyright">
                        <small id="copy">
                           Copyright &copy; 2015 kassinda.com All rights reserved.
                        </small>
                    </div>
                </footer>
 <div class="form1">
 <nav id="form1">
 
 <ul>
<p><b>PERSONAL INFORMATION</p></b></br>

<li>FIRST NAME<input type="text" name="fname"  Onblur='cblur(fname)' size="25px"  tabIndex=1 height="30px"/></li>

<li>LAST NAME<input type="text" name="lname" Onblur='cblur(lname)'size="25px" tabIndex=2/></li>

<li>DATE OF BIRTH  <input type="text" name="dob" Onblur='cblur(dob)' placeholder="dd-mmm-yy" tabIndex=3 size="25px"/></li>

<li>MOBILE<input type="text" name="cellno" Onblur='cblur(cellno)' maxlength="14" tabIndex=6 size="25px"/></li>

<li>SEX<SELECT name="sex" size=1 tabIndex=7 size="25px"> <OPTION 
        value="">Sex<OPTION value=Male>Male<OPTION value=Female>Female
      </OPTION></SELECT></li>
	  
<li>PASSPORT NO.<input type="text" name="passportno" Onblur='cblur(passportno)' maxlength="10" tabIndex=8 size="25px"/></li>

<li>EMAIL <input type="text"  name="email" Onblur='cblur(email)' tabIndex=9 size="25px"/></li>

<li>HOBBIES<textarea id="hobbies" name="hobbies" Onblur='cblur(hobbies)' style="HEIGHT: 25px; WIDTH: 205px" rows="1" cols="20" tabIndex=10></textarea></li></br>

<b>ADDRESS INFORMATION</p></b></br>
<li>Permanent Address</li>
<li>Current Address</li>

<li>STREET NAME<input type="text" name="p_streetname" Onblur='cblur(p_streetname)' tabIndex=11 size="25px"/></li>

<li>STREET NAME <input type="text" name="c_streetname" Onblur='cblur(c_streetnam)'tabIndex=14 size="25px"/></li>

<li>CITY<input type="text" name="p_area"  Onblur='cblur(p_area)' tabIndex=12 size="25px"/></li>

<li>CITY<input type="text" name="c_area" Onblur='cblur(c_area)' tabIndex=15 size="25px"/></li>

<li>COUNTRY<input type="text" name="p_city" Onblur='cblur(p_city)' tabIndex=13 size="25px"/></li>

<li>COUNTRY<input type="text" name="c_city" Onblur='cblur(c_city)' tabIndex=16 size="25px"/></li>

<li>PHONE NUMBER<input type="text" name="phno" Onblur='cblur(phno)' maxlength="14" tabIndex=17 size="25px"/></li></br>

<li>------------------------------------------------------------------------------------------------------------------------------------------------------</li></br>


<P><b>SEEKER RESUME DETAILS</p></b></br>

<li>QUALIFICATION<SELECT name="qualification"  size=1 tabIndex=18> <OPTION selected>Select
          Highest Degree<OPTION value="BE/B.Tech">BE/B.Tech<OPTION value="ME/M.Tech">ME/M.Tech<OPTION 
        value=MCA>MCA</OPTION><OPTION 
        value="MSc. Computer Science">MSc. Computer Science</OPTION><OPTION 
        value="BSc. Computer Science/BCA">BSc. Computer Science/BCA</OPTION></SELECT></li>
		
<li>BRANCH<SELECT name="branch" size=1 tabIndex=19> <OPTION selected 
        value="">Branch<OPTION 
        value=ift>Information Technology<OPTION value=cse>Computer Science &amp; 
    Engg.<OPTION value=ece>Electronics &amp; Comm. Engg. 
       <OPTION 
      value=oth>Others</OPTION></SELECT></li>

<li>SKILLS<textarea id="skills" name="skills" Onblur='cblur(skills)' style="height: 28; width: 205" rows="1" cols="20" tabIndex=20>
</textarea></li>

<li>OTHER QUALIFICATIONS<textarea id="o_qua" name="o_qualifications" Onblur='cblur(o_qualifications)' style="height: 30; width: 160" rows="1" cols="20" tabIndex="21">
</textarea></li>

<li>EXPERIENCE<INPUT name="experience" Onblur='cblur(experience)' maxlength="2" tabIndex=22 size="22"></li>

<li>OTHERS<INPUT name="experienceZ" Onblur='cblur(experiencez)'  size="22"></li>



<p><b>EDUCATIONAL QUALIFICATIONS</b> 
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="564" id="AutoNumber3" height="172">
  <tr>
    <TD height="80" width="145">
      <p align="center">Qualification</p>
    </TD>
    <TD height="38" width="178">
      <p align="center">&nbsp;University/Board</p>
    </TD>
    <FONT color=#004080>
    <TD height="38" width="161">
      <p align="center">&nbsp;</FONT>
      <font color="#000000">Year of Passing</font></p>
     </TD>
    <FONT color=#004080>
    <TD height="38" width="72">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </FONT>
    %</TD>
  </tr>
  <tr>
    <TD height="23" width="145">
      <p align="left"><FONT color=#ae0000><SELECT name="quali"   size=1 tabIndex=23> <OPTION selected>Post
        Graduate<OPTION value="M.Tech/ME">M.Tech/ME<OPTION 
        value=MCA>MCA</OPTION><OPTION 
        value="MSc. Computer Science">MSc. (CS)</OPTION>
        <option value="M.S">M.S</option>
        <option value="MSC.(IT)">MSC.(IT)</option>
        <option value="Others">Others</option>
      </SELECT></FONT></p>
    </TD>
    <FONT 
color=#ae0000>
    <TD height="23" width="178">
      <p align="center"><INPUT name="m_board" Onblur='cblur(m_board)' tabIndex=24 size="20"></p>
    </TD>
    <TD height="23" width="161">
    <p align="center"><SELECT 
      name="m_year"  size=1 tabIndex=25> <OPTION selected 
        value="">-Year-<OPTION value=1990>1990<OPTION value=1991>1991<OPTION value=1992>1992<OPTION value=1993>1993<OPTION value=1994>
    1994<OPTION value=1995>1995<OPTION value=1996>1996<OPTION value=1997>1997<OPTION value=1998>1998<OPTION value=1999>1999<OPTION value=2000>2000<OPTION value="2001">
    2001<OPTION value=2002>2002<OPTION value=2003>2003<OPTION value=2004>2004<OPTION value=2005>2005<OPTION value=2006>2006 </OPTION><OPTION value=2007>2007</option><OPTION value=2008>2008</option>
	 <OPTION value=2009>2009</option><OPTION value=2010>2010</option><OPTION value=2011>2011</option><OPTION value=2012>2012</option><OPTION value=2013>2013</option><OPTION value=2014>2014</option><OPTION value=2015>2015</option><OPTION value=2016>2016</option
	</SELECT></p>
    </TD>
    <TD height="23" width="72">
      <p align="center"><INPUT name="m_per" Onblur='cblur(m_per)' size=6 tabIndex=26></FONT></p>
    </TD>
  </tr>
  <tr>
    <TD height="23" width="145"><FONT color=#ae0000><SELECT name="degree"  size=1 tabIndex=27> <OPTION selected>Under
        Graduate<OPTION value="BE/B.Tech">BE/B.Tech<OPTION 
        value="BSc. CS)/BCA">BSc.(CS)/BCA</OPTION>
        <option value="Others">Others</option>
      </SELECT></FONT> </TD>
    <FONT color=#ae0000>
    <TD height="23" width="178">
      <p align="center"><INPUT name="i_board" Onblur='cblur(i_board)' tabIndex=28 size="20"></p>
    </TD>
    <TD height="23" width="161">
    <p align="center"><FONT 
color=#ae0000><SELECT 
      name="i_year" size=1 tabIndex=29> <OPTION selected 
        value="">-Year-<OPTION value=1990>1990<OPTION value=1991>1991<OPTION value=1992>1992<OPTION value=1993>1993<OPTION value=1994>
    1994<OPTION value=1995>1995<OPTION value=1996>1996<OPTION value=1997>1997<OPTION value=1998>1998<OPTION value=1999>1999<OPTION value=2000>2000<OPTION value="2001">
    2001<OPTION value=2002>2002<OPTION value=2003>2003<OPTION value=2004>2004<OPTION value=2005>2005<OPTION value=2006>2006</OPTION><OPTION value=2007>2007</option><OPTION value=2008>2008</option> <OPTION value=2009>2009</option>
	<OPTION value=2010>2010</option><OPTION value=2011>2011</option><OPTION value=2012>2012</option><OPTION value=2013>2013</option><OPTION value=2014>2014</option><OPTION value=2015>2015</option><OPTION value=2016>2016</option></SELECT></FONT></p>
    </TD>
    <TD height="23" width="72">
    <p align="center">
    <INPUT name="i_per" size=6 tabIndex=30></p>
    </TD></FONT>
  </tr>
  <tr>
    <TD height="22" width="145"><FONT color=#ae0000><SELECT name="higher"   size=1 tabIndex=31> <OPTION selected value="Higher Secondary">Higher
        Secondary</SELECT></FONT></TD>
    <FONT 
color=#ae0000>
    <TD height="22" width="178">
      <p align="center"><INPUT name="u_university" Onblur='cblur(Fax)' tabIndex=32 size="20"></p>
    </TD>
    <TD height="22" width="161">
    <p align="center"><FONT 
color=#ae0000><SELECT 
      name="u_year"  size=1 tabIndex=33> <OPTION selected 
        value="">-Year-<OPTION value=1990>1990<OPTION value=1991>1991<OPTION value=1992>1992<OPTION value=1993>1993<OPTION value=1994>
    1994<OPTION value=1995>1995<OPTION value=1996>1996<OPTION value=1997>1997<OPTION value=1998>1998<OPTION value=1999>1999<OPTION value=2000>2000<OPTION value="2001">
    2001<OPTION value=2002>2002<OPTION value=2003>2003<OPTION value=2004>2004<OPTION value=2005>2005<OPTION value=2006>2006</OPTION><OPTION value=2007>2007</option><OPTION value=2008>2008</option>
	 <OPTION value=2009>2009</option><OPTION value=2010>2010</option><OPTION value=2011>2011</option><OPTION value=2012>2012</option><OPTION value=2013>2013</option><OPTION value=2014>2014</option><OPTION value=2015>2015</option><OPTION value=2016>2016</option
	</SELECT></FONT></p>
    </TD>
    <TD height="22" width="72">
      <p align="center"><INPUT name="u_per" Onblur='cblur(u_per)' size=6 tabIndex=34></p>
    </TD></FONT>
  </tr>
  <tr>
    <TD height="25" width="145"><FONT color=#ae0000><SELECT name="ssc"  size=1 tabIndex=35> <OPTION selected value="ssc">S.S.C</SELECT></FONT> </TD>
    <FONT 
color=#ae0000>
    <TD height="25" width="178">
      <p align="center"><INPUT name="p_university" Onblur='cblur(p_university)' tabIndex=36 size="20"></p>
    </TD>
    <TD height="25" width="161">
    <p align="center"><FONT 
color=#ae0000><SELECT 
      name="p_year"  size=1 tabIndex=37> <OPTION selected 
        value="">-Year-<OPTION value=1990>1990<OPTION value=1991>1991<OPTION value=1992>1992<OPTION value=1993>1993<OPTION value=1994>
    1994<OPTION value=1995>1995<OPTION value=1996>1996<OPTION value=1997>1997<OPTION value=1998>1998<OPTION value=1999>1999<OPTION value=2000>2000<OPTION value="2001">
    2001<OPTION value=2002>2002<OPTION value=2003>2003<OPTION value=2004>2004<OPTION value=2005>2005<OPTION value=2006>2006</OPTION><OPTION value=2007>2007</option><OPTION value=2008>2008</option></SELECT></FONT></p>
    </TD>
    <TD height="25" width="172">
      <p align="center"><INPUT name="p_per" Onblur='cblur(p_per)' size=6 tabIndex=38></p>
    </TD></FONT>
  </tr>
  </table>
    </td>
  </tr>
  <tr>
    <td width="39" height="228">
    &nbsp;</td>
    <td width="567" height="228">
    <TABLE border=0 cellPadding=0 cellSpacing=0 style="LEFT: 527px; TOP: 1709px" width="515" height="40">
    <br>

	 <p><b><FONT color=#ae0000>LOGIN DETAILS</font></b></p>
  <TR>
    <TD width="284" height="28"></TD>
    <TD width="367" height="28"></TD></TR>
  <TR>
    <TD width="284" height="23">Enter Your Password</TD>
    <TD width="367" height="23"><INPUT name="passwd" Onblur='cblur(passwd)'  tabIndex=39 type=password size="25"></TD></TR>
  <TR>
    <TD width="284" height="26">Re-Type Your Password</TD>
    <TD width="367" height="26"><INPUT name="retypepassword" Onblur='cblur(retypepassword)' tabIndex=40 type=password size="25"></TD></TR>
    <tr>
    <TD width="284" height="2">Select Question</TD>
    <TD width="525" height="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <select id="select1" name="question"  style="HEIGHT: 25px; WIDTH: 210px" tabIndex=41 size="1">
    <OPTION selected 
        value="">Select A Question<OPTION value="Your Favourite Childwood Hero/Heroine">Your Favourite Childwood Hero/Heroine<OPTION value="Your Favourite Food
">Your Favourite Food
        <option value="Your Favourite Movie">Your Favourite Movie<option value="You Love to">You Love to
      </OPTION>
    </select></TD>
    </tr>
  <TR>
    <TD width="284" height="28">Answer</TD>
    <TD width="367" height="28">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <INPUT name="answer" tabIndex=42 size="25"></TD></TR>
    </TABLE>
    <p>
    <FONT color=#004080>
	</td>
  </tr>
</table>
 </TBODY></TABLE></TD></TR>
 </font></TD>
	<div id="submitbut">
	 <input name=reset tabIndex=44 type=reset value=Reset class="login-submit">
	  <INPUT name=submmit tabIndex=43 type=Submit value=Submit class="login-submit">
   
  
    <a href="#top" style="text-decoration: none">Top</a></FONT>


            <font color="#6699CC">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            * Your Login Id Provides after Registration Only&nbsp;*
			</nav>
			  </div>
			  	   </div>
  </body>

</HTML>

