<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<link rel="stylesheet" href="CSS/jobview.css" type="text/css">
<link rel="stylesheet" href="CSS/job_home.css" type="text/css">

<BODY text=#000000 leftMargin=0 topMargin=0>
<div class="back">
 <a href="Jobs.htm"><img src="IMG/back45.png"></a>
 </div>
<%@ include file="makecon.jsp" %>
<%@ page session="true"%>
<%!  	ResultSet rs=null;
%>

<% try
	{
 	
	rs=st.executeQuery("select * from job_requ");
%>
 
<div class="form1">
	<ul>
	
<TABLE cellSpacing=0 cellPadding=0 width=780  border=0>

 <TBODY>
  <TR>
    <TD height=2></TD></TR>
  <TR>
    <TD vAlign=top height=321>
    <p align="center">
      
     &nbsp;
    <p align="center">
      
     <b><font color="#104E8B" size="4">TOTAL AVAILABLE JOB DETAILS ARE</font></b>
    <p align="center">
      
     &nbsp;
<table border="1" cellpadding="1" cellspacing="1" width="788" height="110">    
<tr>
<td width="109" height="55">
  <p align="center"><b>Job Code</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Job Name</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Qualification</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Skills</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Experience</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Vacancies</b></p>
</td>
</tr>
  </ul>
	
	</div>  	
       
    <%	while(rs.next())
	{%>
 	   <tr>	
           <td width="109" height="55">
           <p align="center">
	   <%out.println(rs.getInt(1));%></p>

	  </td>
	  <td width="109" height="55">  <p align="center">
 
	   <%out.println(rs.getString(2));%></p>
	  </td>
	  <td width="109" height="55">  <p align="center">
 
	   <%out.println(rs.getString(3));%></p>
	  </td>
	   <td width="109" height="55"><p align="center">  
	   <%out.println(rs.getString(4));%></p> 

	  </td>
	  <td width="109" height="55">  <p align="center">
	   <%out.println(rs.getDouble(6));%></p> 

	  </td>
	  <td width="109" height="55"> <p align="center"> 
	   <%out.println(rs.getInt(7));%> </p>

	  </td>
	   </tr> 
      <%}%>
 
    </TABLE>
</TBODY>

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



</BODY>
</HTML>
