<%@ include file="makecon.jsp" %>
<%@ page import="java.io.*"%>
<%@ page session="true"%>
<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<link rel="stylesheet" href="CSS/resumo.css" type="text/css">
<link rel="stylesheet" href="CSS/job_home.css" type="text/css">
<link rel="stylesheet" href="CSS/fo_jo.css" type="text/css">
<link rel="stylesheet" href="CSS/menu_resumo.css" type="text/css">
<title>Resume Process</title>
<script>
function checkit(R)
{
	var tg=document.forms[0];
	document.forms[0].exp.disabled=(!R.checked)
	// document.forms[0].quali.disabled=(R.checked) 
}

 function pv(ThisForm)
  {
     

    if (ThisForm.exp.value == "")
    {
      alert("Please Enter Your \"experience\".");
      ThisForm.exp.focus();
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
 
	  //*******************************
	  if((ThisField.name=="exp"))
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
  document.cf.exp.focus();
 }


</script>
</head>
<body>
<div id="container">
            
            <nav id="main-menuBar">
			<ul id="main-menuBar">
                         <li class="no-sub"><a href="index.html" class="top" style="text-decoration:none">Logout</a></li>   
                  <li class="no-sub"><a href="contact.html" class="top" style="text-decoration:none">Contact us</a></li>                     
                  <li class="no-sub"><a href="about.html" class="top" style="text-decoration:none">About</a></li>
                  <li class="no-sub"><a href="provider_home1.jsp" class="top" style="text-decoration:none">Home</a>
					</li>
             </ul>
            </nav>
<div class="form1">
	<ul>
<TABLE cellSpacing=0 cellPadding=0 width=780 border=0 height="186">
<form name="cf" action="resumepro.jsp" method="post" onsubmit="return pv(this)">
  <TR>
    <TD vAlign=center height=70 >
    <p align="center"><b><font color="#104E8B" size="4">RESUME PROCESSING</font></b></p>

<tr>
<td width="131" align=center height="55"><p align=center><font color="#0000FF">Job Seeker Experience in number</font>
Experience<input type="checkbox" name="C" value="EXP" onclick=checkit(this); checked><INPUT type="text" name="exp" Onblur='cblur(exp)'></p>
<!-- <p align="center">Qualification<SELECT name="quali" disabled size=1 tabIndex=18> <OPTION selected>Select
          Highest Degree<OPTION value="BE/B.Tech">BE/B.Tech<OPTION value="ME/M.Tech">ME/M.Tech<OPTION 
        value="MCA">MCA</OPTION><OPTION 
        value="MSc. Computer Science">MSc. Computer Science</OPTION><OPTION 
        value="BSc. Computer Science/BCA">BSc. Computer Science/BCA</OPTION></SELECT></p><input type="submit" name="Submit" value="search" align = center>-->
		
		<input type="submit" name="Submit" value="SEARCH" align = center>
	</tr>
	</ul>
</tr>
</TABLE>
	</div>
	
	</form>

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
</BODY>
</HTML>
