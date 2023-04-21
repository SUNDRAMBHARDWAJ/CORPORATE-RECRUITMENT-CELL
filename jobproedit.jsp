<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>
<link rel="stylesheet" href="CSS/sucessfully.css" type="text/css">
<link rel="stylesheet" href="CSS/job_home.css" type="text/css">
<%@ include file="makecon.jsp" %>
<%@ page session="true"%>
<%      
	int it1=Integer.parseInt(request.getParameter("textfield1"));
	String st2=request.getParameter("textfield2");
	String st3=request.getParameter("textfield3");	
	String st4=request.getParameter("textfield4");
	
	String st5=request.getParameter("textfield5");
	float dt6=Float.parseFloat(request.getParameter("textfield6"));
	int it7=Integer.parseInt(request.getParameter("textfield7"));
	String st8=request.getParameter("textfield8");
	
		
	
	String st9=request.getParameter("textfield9");	
	String st10=request.getParameter("textfield10");	
	String st11=request.getParameter("textfield11");	
%>
<% Integer logid=(Integer)session.getAttribute("login1");%>

<% 
int n1=logid.intValue();

%>
 

<%!  	PreparedStatement ps=null;
%>
<% 



	
 	ps=con.prepareStatement("update job_requ set  job_name=?,quali_req=?,skill_req=?,resp_req=?,exp_req=?,vac_open=?,createdby=?,createdon=?,lastdate=?,status=? where  job_code="+it1);
	ps.setString(1,st2);
	ps.setString(2,st3);
	ps.setString(3,st4);
	ps.setString(4,st5);
	ps.setDouble(5,dt6);
	ps.setInt(6,it7);
	ps.setString(7,st8);
	ps.setString(8,st9);
	ps.setString(9,st10);
	ps.setString(10,st11);

	int j=ps.executeUpdate();
		if (j>0)
		{%>             
			<body>                               
  		<div class="form1">
	<ul>
	<p>JOB DETAILS UPDATED</p>
	</ul>
		
	</div>
	<div class="back">
	<a href="Jobs.htm"><img src="IMG/back45.png"></a> 
	</div>
		
			
		<%}
		else
		{
			out.println("Sorry Try Again..");	
		}

%>
</body>
</html>