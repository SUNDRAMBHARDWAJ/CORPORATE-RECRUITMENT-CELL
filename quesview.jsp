<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>QUESTION VIEW</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<link rel="stylesheet" href="CSS/jobview.css" type="text/css">
<link rel="stylesheet" href="CSS/job_home.css" type="text/css">
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>
<%@ include file="makecon.jsp" %>
<%@ page session="true"%>
<%!  	
	ResultSet rs=null;
%>

<% try
	{
 	rs=st.executeQuery("select * from test_queries");
%>
<div class="back">
 <a href="jobtest.htm"><img src="IMG/back45.png"></a>
 </div>
 <div class="form1">
	<ul>
<TABLE cellSpacing=0 cellPadding=0 width=491 bgColor="#e8e8e8" border=0 height="251">

 <TBODY>
  <TR>
    <TD vAlign=top height=251 width="790">
      <TABLE cellSpacing=1 width="790" border=1 height="207" >

        <TBODY align="center">
            
<tr>
<td height="112"><font color="#000080" face="Times New Roman"><b><font size="4">&nbsp;
  QUESTIONS ARE</font><font color="#BE7DFF" size="6"></font> </b></font></td></tr>
<tr><td width="130" height="61"><b><font face="Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Question No</font></b></td>
<td width="193" height="61"><b><font face="Times New Roman">Question</font></b></td>
<td width="421" height="61"><b><font face="Times New Roman">Answer</font></b></td>
</tr>
    	 </ul>
	
	</div>  	
       
    <%	while(rs.next())
	{%>
 	   <tr>	
           <td width="170" height="34">  
	   <%out.println(rs.getInt(1));%>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  </td>
	  <td width="193" height="34">  
	   <%out.println(rs.getString(2));%>
	  </td>
	  <td width="421" height="34">  
	   <%out.println(rs.getString(7));%>
	  </td> 
	  
	   </tr> 
      <%}%>
 
 </TBODY></TABLE>
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

</BODY></HTML>
