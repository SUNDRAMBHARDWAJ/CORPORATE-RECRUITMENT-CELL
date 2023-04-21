<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>JOB DELETE</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>
<link rel="stylesheet" href="CSS/sucessfully.css" type="text/css">
<link rel="stylesheet" href="CSS/job_home.css" type="text/css">
<%@ include file="makecon.jsp" %>
<%@page session="true"%>
 

<%! int j;%>
<%! int jcodedel;%>

<%   jcodedel=Integer.parseInt(request.getParameter("textfield1"));%>
<% try
	{
 	j=st.executeUpdate("delete from job_requ where job_code="+jcodedel);
	if(j>0)
	{	
		%>             
			                               
  		<div class="form1">
	<ul>
	<li>JOB DELETED</li>
	</ul>
	</div>	
	<div class="back">
	<a href="Jobs.htm"><img src="IMG/back45.png"></a>
	</div>

	<%
	}
	
	else
	{
		%>             
			                               
  			
<div class="form1">
	<ul>
	<li>SORRY COULD NOT FOUND</li>
	</ul>
	
	</div>	
	<div class="back">
	<a href="Jobs.htm"><img src="IMG/back45.png"></a>
	</div>
	



	<%

}	

}

catch(Exception e)
{
	
	
 System.out.println("error"+e);
}

finally
{
	
	st.close();
	con.close();
}
%>

