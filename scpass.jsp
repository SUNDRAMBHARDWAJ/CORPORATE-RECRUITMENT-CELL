<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>
<link rel="stylesheet" href="CSS/sviiew.css" type="text/css">
<link rel="stylesheet" href="CSS/Design.css" type="text/css">
<script language="JavaScript">
 function pv(ThisForm)
  {
      

    if (ThisForm.pass.value == "")
    {
      alert("Please Enter Your \"old password\".");
      ThisForm.pass.focus();
      return(false);
    }

    if (ThisForm.pass1.value == "")
    {
      alert("Please Enter Your \"new password\".");
      ThisForm.pass1.focus();
      return(false);
    }

    if (ThisForm.retypepassword.value == "")
    {
      alert("Please Enter Your \"Retype new password\".");
      ThisForm.retypepassword.focus();
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
  if((ThisField.name=="pass") ||(ThisField.name=="pass1")||(ThisField.name=="retypepassword"))
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
 
  //************Mail Id*******************
  
  
  //****************End Of mail Id Checking*******************************

  //****************ExpDate Checking**************************************

  //***************end expdate************************
}
   
function foc()
 {
  document.snew11.pass.focus();
 }
</script>

</script>
</HEAD>
<BODY text=#000000 b leftMargin=0 topMargin=0> 
<nav id="Bar">
			<ul id="Bar">
                        
                                  
             <li><a href="https://www.youtube.com/" style="text-decoration:none"><img src="IMG/youtube.png"></a></li>
             <li class="no-sub"><a href="https://mail.google.com/mail/u/0/?tab=wm#inbox" style="text-decoration:none"><img src="IMG/email.png"></a></li>
			 <li class="no-sub"><a href="https://twitter.com/?lang=en" style="text-decoration:none"><img src="IMG/twitter.png"></a></li>
			<li class="no-sub"><a href="https://www.facebook.com/genesiop" style="text-decoration:none"><img src="IMG/facebook.png"></a></li>     
			 </ul>
            </nav>
			<div id="container1">
    <nav id="main-menuBar1">
    <ul id="menu-list">
	<li class="no-sub"><a href="seeker_home.html" class="top" style="text-decoration:none">INBOX</a>
	</li>
    <li class="list"><a  target="_blank" class="top" style="text-decoration:none">PERSONAL INFORMATION</a>
    <ul class="sub1"><li><a href="scper.jsp" target="_blank" style="text-decoration:none">Update Details</a>
	</li>
	<li><a href="scpass.jsp" target="_blank" style="text-decoration:none">Change Password</a></li>
	</ul>
	</li>
	<li class="list"><a target="_blank" class="top" style="text-decoration:none">RESUME</a>
    <ul class="sub2"><li><a href="spost.htm" target="_blank" style="text-decoration:none" >Post </a>
	</li>
	<li><a href="supd.jsp" target="_blank" style="text-decoration:none">Update</a></li>
	</ul>
	</li>
	
	<li class="no-sub"><a href="sview.jsp" class="top" style="text-decoration:none">VIEW JOBS</a>
	</li>
	
	<li class="no-sub"><a href="feedback.htm" class="top" style="text-decoration:none">FEEDBACK</a>
	</li>
	
	<li class="no-sub"><a href="index.html" class="top" style="text-decoration:none">LOGOUT</a>
	</li>
    </div>
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
<div class="form4">
	<ul>				
<TABLE cellSpacing=0 cellPadding=0 width=780  border=0 height="579">
<TBODY>
<form name="snew11" method="post" action="scpass1.jsp" onsubmit="return pv(this)">
  <TR> <TD vAlign=top height=422>
<TABLE cellSpacing=0 cellPadding=0 width="628" border=1 height="118">
<TBODY> <TR>
	<TD vAlign=top width=1 bgColor=#6699cc height=418>&nbsp;</TD>
	<TD vAlign=top width=7 bgColor=#ffffff height="218"> &nbsp;<p>&nbsp;</p><p>&nbsp;</p> </TD>          
	<TD vAlign=top width=687 bgColor=#ffffff height="218">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <p align="center"> 
<font face="Arial" color="#6699CC" size="4"><b>CHANGE YOUR PASSWORD DETAILS</b> </font>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="610" id="AutoNumber6" height="294">
<tr><td width="6" height="207">&nbsp;</td>
    <td width="600" height="207">
<table border="0" cellpadding="0" cellspacing="0" width="569" height="164">
<tr> <td width="258" height="40"><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </tr><tr>
<td width="258" height="28"><font color="#004080">
<b>Enter Your old Password</b></font></td>
<td width="307" height="28">
<input name="pass" Onblur='cblur(pass)' tabIndex="1" type="password" size="20"></td> </tr> <tr>
<td width="258" height="25"><font color="#004080">
<b>Enter Your New Password</b> </font></td>
<td width="307" height="25">
<input name="pass1" Onblur='cblur(pass1)' tabIndex="2" type="password" size="20"></td> </tr> <tr>
<td width="258" height="26"><font color="#004080">
<b>Re-Type Your New Password</b></font></td>
<td width="307" height="26">
<input name="retypepassword" Onblur='cblur(retypepassword)' tabIndex="3" type="password" size="20"></td> </tr>
<tr> <td width="258" height="21"></td> <td width="307" height="21"></td> </tr>
</table><p> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font color="#004080">
<input name="submmit" tabIndex="43" type="Submit" value="UPDATE">
</font> </td> </tr> <tr> <td width="6" height="46">&nbsp;</td>
<td width="600" height="46"><p> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>  </tr>  <tr>
<td width="6" height="1">&nbsp;</td> <td width="600" height="1"> <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td> </tr> </table>
&nbsp;
</TD>
</TR>
</TBODY>
</TABLE>
</TD>
</TR> 
</form> 
</TBODY>
</TABLE> 
</ul>
</div>
</BODY>
</HTML>