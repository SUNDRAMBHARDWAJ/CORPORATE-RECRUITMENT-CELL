<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>processing message</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<link rel="stylesheet" href="CSS/resumo.css" type="text/css">
 <link rel="stylesheet" href="CSS/footer_resum.css" />
<link rel="stylesheet" href="CSS/job_home.css" type="text/css">

<BODY text=#000000  leftMargin=0 topMargin=0>
<%@ include file="makecon.jsp" %>
<%@ page session="true"%>
<%!  	
	ResultSet rs=null;
%>

<% try
	{
 	rs=st.executeQuery("select * from feed_back");
%>
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
			 </div>
<div class="clearfix"></div>
            <footer id="main-footer-mainpage">
            			
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
	<ul>
<TABLE cellSpacing=0 cellPadding=0 width=780  border=0>
<form name=mesage action="messdelete.jsp" method="post">
 <TBODY>
  <TR>
    <TD height=2></TD></TR>
  <TR>
    <TD vAlign=top height=161>
      
     <p align="center">
      
     &nbsp;
      
     <p align="center">
      
     <b><font color="#104E8B" size="4">FEED BACK FROM USERS</font></b>
      
     <p align="center">
      
     &nbsp;
<table border="1" cellpadding="1" cellspacing="1" width="788" height="110">  
<tr>
<td width="109" height="55"><b><p align="center">Feedback Code</p></b></td>
<td width="262" height="55"><b><p align="center">Message</p></b></td>
<td width="117" height="55"><b><p align="center">Seeker Code</p></b></td>
<td width="131" height="55"><b><p align="center">Check It for delete</p></b></td>
</tr>

	</ul>
    </div>	
	
       
    <%	
		int feedcode=0;
		while(rs.next())
	{
		feedcode=rs.getInt(1);
	%>
 	   <tr>	
           <td width="109" height="55"><p align="center">  
	   <%out.println(feedcode);%></p>
	  </td>
	  <td width="262" height="55">  
	   <%out.println(rs.getString(2));%>
	  </td>
	  <td width="117" height="55"><p align="center">  
	   <%out.println(rs.getInt(3));%></p>
	  </td>
	  <td width="131" height="55"><p align="center"><input type="checkbox" name="C1" value="ON"></p>
           <td width="5">
	   		
      &nbsp;
	   		
	  </tr> 
      <%}
	   session.setAttribute("fcode",new Integer(feedcode));
	   
	  %>
 
</TABLE>
	 <P align="right"><input name="submitbutton" type="submit" value="  Delete  " style="color: #000000">
     <input type="reset" name="Submit2" value="Reset" tabindex="4">&nbsp;&nbsp;</b> </p>
	     </TBODY>
  
</form>
</TABLE>


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



</BODY></HTML>
