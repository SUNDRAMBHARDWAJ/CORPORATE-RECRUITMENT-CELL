<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>JOBS_VIEW_SEEKER</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>
 <link rel="stylesheet" href="CSS/sviiew.css" type="text/css">
		<link rel="stylesheet" href="CSS/Design.css" type="text/css">
</HEAD>

<BODY>
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
<%@ page session="true"%>
<%!  	
	ResultSet rs=null;
%>

<% try
	{
 	rs=st.executeQuery("select * from job_requ");
%>


<div class="form1">
	<ul>
<TABLE cellSpacing=0 cellPadding=0 width=720  border=0 height="270">

 <TBODY>
  <TR>
    <TD height=62 width="723">&nbsp;
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <font color="blue" size="4"><b>JOBS AVAILABLE </b></font></font>
      <p>&nbsp;</TD></TR>
  <TR>
    <TD vAlign=top height=208 width="723">
      <TABLE cellSpacing=0 cellPadding=0 width="669" border=1 height="141" bordercolor="#686846" >
        <TBODY align="center">
   <tr>
<td width="100" height="36">
  <p align="center"><b>Job Code</b></p>
</td>
<td width="169" height="36">
  <p align="center"><b>Job Name</b></p>
</td>
<td width="141" height="36">
  <p align="center"><b>Qualification</b></p>
</td>
<td width="149" height="36">
  <p align="center"><b>Skills</b></p>
</td>
<td width="89" height="36">
  <p align="center"><b>Experience</b></p>
</td>
<td width="76" height="36">
  <p align="center"><b>Vacancies</b></p>
</td>
<td width="76" height="36">
  <p align="center"><b>Last Date</b></p>
</td>
</tr>
    	
       
    <%	while(rs.next())
	{%>
 	   <tr>	
           <td width="100" height="78">  
	   <%out.println(rs.getInt(1));%>
	  </td>
	  <td width="169" height="78">  
	   <%out.println(rs.getString(2));%>
	  </td>
	  <td width="141" height="78">  
	   <%out.println(rs.getString(3));%>
	  </td>
	   <td width="149" height="78">  
	   <%out.println(rs.getString(4));%>
	  </td>
	  <td width="89" height="78">  
	   <%out.println(rs.getDouble(6));%>
	  </td>
	  <td width="76" height="78">  
	   <%out.println(rs.getInt(7));%>
	  </td>
	  <td width="76" height="78">  
	   <%out.println(rs.getString(10));%>
	  </td>
	   </tr> 
      <%}%>
 
</TBODY>
</TABLE>
</TBODY>
</TABLE>
</center>
</ul>
</div>

<%}
catch(Exception e)
{
 System.out.println("error"+e);
}
finally
{
	rs.close();
	st.close();
	con.close();
}


%>
<P align="left"> &nbsp;</p>

</BODY>
</HTML>
