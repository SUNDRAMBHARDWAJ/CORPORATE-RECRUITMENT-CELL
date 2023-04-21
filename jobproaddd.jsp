<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">

<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<link rel="stylesheet" href="CSS/ADD_JOB.css" type="text/css">
<link rel="stylesheet" href="CSS/job_home.css" type="text/css">
<BODY>

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
function valid(ThisForm)
 {     if(ThisForm.textfield1.value=="") 
    {
     alert("Enter job code") ; 
     ThisForm.textfield1.focus();
     return false;
    }
 
  if(ThisForm.textfield5.value=="") 
    {
     alert("Enter responsibilities");
	 ThisForm.textfield5.focus();
     return false;
    }
	if(ThisForm.textfield2.value=="") 
    {
     alert("Enter jobname");
	 ThisForm.textfield2.focus();
     return false;
    }
	if(ThisForm.textfield6.value=="") 
    {
     alert("Enter ReqExperience ");
	 ThisForm.textfield6.focus();
     return false;
    }
	if(ThisForm.textfield3.value=="") 
    {
     alert("Enter qualification ");
	 ThisForm.textfield3.focus();
     return false;
    }
	if(ThisForm.textfield7.value=="") 
    {
     alert("Enter vacancies ");
	 ThisForm.textfield7.focus();
     return false;
    }
	if(ThisForm.textfield4.value=="") 
    {
     alert("Enter Required Skills ");
	 ThisForm.textfield4.focus();
     return false;
    }
	if(ThisForm.textfield8.value=="") 
    {
     alert("Enter created by ");
	 ThisForm.textfield8.focus();
     return false;
    } 
	  
	   db1 = cf.textfield9.value;
	if(!validateDOB(db1))
	  {
		alert("please enter create on date in correct format(dd-mmm-yy)");
             cf.textfield9.focus();
      return(false);
      }
	  db2 = cf.textfield10.value;
	if(!validateDOB(db2))
	  {
		alert("please enter last date in correct format (dd-mmm-yy");
             cf.textfield10.focus();
      return(false);
      }
      

	
	if(ThisForm.textfield9.value=="") 
    {
     alert("Enter created on");
	 ThisForm.textfield9.focus();
     return false;
    }
	if(ThisForm.textfield11.value=="") 
    {
     alert("Enter status");
	 ThisForm.textfield11.focus();
     return false;
    }
	if(ThisForm.textfield10.value=="") 
    {
     alert("Enter Last Date ");
	 ThisForm.textfield10.focus();
     return false;
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
  if((ThisField.name=="textfield5") ||(ThisField.name=="textfield2") ||(ThisField.name=="textfield3")||(ThisField.name=="textfield4")||(ThisField.name=="textfield8")||(ThisField.name=="textfield11"))
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
  if((ThisField.name=="textfield6")||(ThisField.name=="textfield7") || (ThisField.name=="textfield1") )
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
  //************Mail Id*******************
  
  
  //****************End Of mail Id Checking*******************************

  //****************ExpDate Checking**************************************

  //***************end expdate************************
}
 function foc()
 {
  document.cf.textfield1.focus();
 } 

</script>

<%@page session="true"%>
<%@ include file="makecon.jsp" %>
<% Integer logid=(Integer)session.getAttribute("login1");%>

<% 
int n1=logid.intValue();
System.out.println(n1);

%>

<%!  	
	ResultSet rs = null;
%>
<%! int jcode;%>
<%! String strr;%> 
<% try
	{
 	rs=st.executeQuery("select max(job_code) from job_requ");
	if(rs.next())
		{
		
		jcode=rs.getInt(1)+1;
		System.out.println("MaxJcode:"+jcode);
		
		}
	else
		{
	   	jcode=500;
		System.out.println("Max:"+jcode);
		}

 }
 catch(Exception e)
	{}
finally
{
	rs.close();
	st.close();
	con.close();
}
 %>

 	
      <form name="cf" method="post" action="jobproadd1.jsp" onsubmit="return valid(this)" >
        
		<div class="form1">
 <ul>
<li>JOB CODE<input type="text" name="textfield1" Onblur='cblur(textfield1)' value="<%=jcode%>" size="25px" tabindex="1" height="30px" ReadOnly /></li>
<li>JOB NAME<input type="text" name="textfield2" Onblur='cblur(textfield2)' size="25" tabindex="2"/></li>
<li>QUALIFICATION<input type="text" name="textfield3" Onblur='cblur(textfield3)' onclick=""size="25" tabindex="3"/></li>
<li>REQUIRED SKILLS<input type="text" name="textfield4" Onblur='cblur(textfield4)' size="25" tabindex="4"/></li>
<li>CREATED ON (dd-mmm-yy)  <input type="text" name="textfield9" Onblur='cblur(textfield9)' size="20" tabindex="9"/></li>
<li>LAST DATE (dd-mmm-yy)<input type="text" name="textfield10" Onblur='cblur(textfield10)'size="20" tabindex="10"></li>
<li>RESPONSABILITIES<input type="text" name="textfield5" Onblur='cblur(textfield5)'size="25px" tabindex="5"/></li>
<li>REQUIRED EXPERIENCE<input type="text" name="textfield6" Onblur='cblur(textfield6)' maxlength="2" size="20" tabindex="6"/></li>
<li>VACANCIES<input type="text" name="textfield7" Onblur='cblur(textfield7)' maxlength="3"size="25" tabindex="7"/></li>
<li>CREATED BY<input type="text"   name="textfield8"  Onblur='cblur(textfield8)' size="25" tabindex="8"/></li>
<li>STATUS<input type="text" name="textfield11" Onblur='cblur(textfield11)' size="25" tabindex="11"/></li> </ul>
 <div id="submitbut">
 <input type="reset" name="submit2"  class="login-submit" value="RESET" tabindex="13" >
<input type="submit" name="submit"  class="login-submit" value="CREATE"  tabindex="12">
</div>
</div>
 <!--<div class="clearfix"></div>
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
                </footer>-->

</form>
</TABLE></TD></TR></TBODY></TABLE>


</BODY></HTML>
