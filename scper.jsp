<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>
<link rel="stylesheet" href="CSS/sviiew.css" type="text/css">
<link rel="stylesheet" href="CSS/Design.css" type="text/css">
<script language="JavaScript">
 function pv(ThisForm)
  {
      

    if (ThisForm.fname.value == "")
    {
      alert("Please Enter Your \"firstname\".");
      ThisForm.fname.focus();
      return(false);
    }

    if (ThisForm.lname.value == "")
    {
      alert("Please Enter Your \"last name\".");
      ThisForm.lname.focus();
      return(false);
    }

    if (ThisForm.cellno.value == "")
    {
      alert("Please Enter Your \"cellno\".");
      ThisForm.cellno.focus();
      return(false);
    }

    if (ThisForm.passportno.value == "")
    {
      alert("Please CONFIRM Your \"passportno\".");
      ThisForm.passportno.focus();
      return(false);
    }

    if (ThisForm.email.value == "")
    {
      alert("Please Enter Your \"email\".");
      ThisForm.email.focus();
      return(false);
    }
	 

    
    if (ThisForm.email.value == "")
    {
      alert("Please Enter Your \"MAIL-ID\".");
      ThisForm.email.focus();
      return(false);
    }
	if (!((/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test( snew.email.value)))){
		alert("Invalid E-mail Address! Please re-enter.");
		 snew.email.value="";
		snew.email.focus();
		return (false)
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
  if((ThisField.name=="fname") ||(ThisField.name=="lname"))
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
  if((ThisField.name=="cellno")  )
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
  document.snew.fname.focus();
 }
</script>

</script>
</HEAD>
<BODY text=#000000  leftMargin=0 topMargin=0>
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
<%@ include file="makecon.jsp" %>
<%@page session="true"%>

<%!  ResultSet rs=null;%>
<%! int j;%>
<%! int jcodeedit;%>
<%! int jcode1;%>
<%
	Integer slogid=(Integer)session.getAttribute("slogin1");
	int sn2=slogid.intValue();
System.out.println("snew1"+sn2);
try
{
 	rs=st.executeQuery("select * from seek_per where seek_code="+sn2);
	if(rs.next())
	{	
%>
<div class="form4">
	<ul>
<TABLE cellSpacing=0 cellPadding=0 width=800 border=0 height="579">
  <TBODY>
<form name="snew" method="post" action="snew1.jsp" onsubmit="return pv(this)">
  <TR> <TD height=21></TD></TR>
  <TR> <TD vAlign=top height=422>
      <TABLE cellSpacing=0 cellPadding=0 width="628" border=1 height="218">
        <TBODY>
        <TR> <TD vAlign=top width=13 bgColor=#6699cc height=418>&nbsp;</TD>
		 <TD vAlign=top width=66 bgColor=#ffffff height="218">&nbsp; <p>&nbsp;</p><p>&nbsp;</p> </TD>
		<TD vAlign=top width=611 bgColor=#ffffff height="218"> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p align="center"> 
<font face="Arial" color="#6699CC" size="4"><b>CHANGE YOUR PERSONAL DETAILS </b> </font>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="610" id="AutoNumber6" height="294">
<tr> <td width="4" height="207">&nbsp;</td>
	 <td width="602" height="207"><b>&nbsp;Your Personal Information</b> 
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="561" id="AutoNumber7" height="126">
<tr> <td width="97" height="35">First Name</td>
	 <td width="161" height="35"><FONT color=#004080>
<INPUT name=fname value="<%=rs.getString(2)%>" Onblur='cblur(fname)'size="16" tabIndex=1></FONT> </td>
    <td width="116" height="34">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name</td>
    <td width="179" height="34"><FONT color=#004080>
    <INPUT name=lname size="16" value="<%=rs.getString(3)%>"tabIndex=2></FONT></td>
</tr>
<tr> <td width="97" height="25">Mobile No.</td>
     <td width="161" height="25"><FONT color=#004080>
     <INPUT name=cellno value="<%=rs.getString(5)%>" Onblur='cblur(cellno)' tabIndex=9 size="16"></FONT> 
</td><td width="116" height="24">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Passport No. </td><td width="179" height="24"><FONT color=#004080>
<INPUT name=passportno Onblur='cblur(passportno )' size="16" value="<%=rs.getString(7)%>" tabIndex=6></FONT> </td></tr><tr><td width="97" height="37"></td> <td width="161" height="37"></td>
<td width="116" height="38">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email </td>
<td width="179" height="38"><FONT color=#004080>
<INPUT name=email value="<%=rs.getString(8)%>" Onblur='cblur(email)' tabIndex=8 size="20">&nbsp;</FONT> 
</td></tr><tr><td width="97" height="53"></td><td width="161" height="53"></td>
<td width="116" height="53"> </td>
<td width="179" height="53"><FONT color=#004080> 
<INPUT name=submmit tabIndex=43 type=Submit value=UPDATE ></FONT></td>
</tr>
</table>
</td></tr><tr><td width="4" height="46">&nbsp;</td>
<td width="602" height="46"><p> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;  </td></tr>
<tr><td width="4" height="1"> &nbsp;</td><td width="602" height="1">    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td> </tr> </table>
&nbsp;</TD>
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
<%
	}	else
	         out.println("Sorry Try Again");
}catch(Exception e)
{ System.out.println("error"+e);}
finally
{
	rs.close();
	st.close();
	con.close();
}
%>
</BODY>
</HTML>