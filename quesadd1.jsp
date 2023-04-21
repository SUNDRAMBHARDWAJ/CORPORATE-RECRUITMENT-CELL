<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>
<link rel="stylesheet" href="CSS/sucessfully.css" type="text/css">
<link rel="stylesheet" href="CSS/job_home.css" type="text/css">
</HEAD>

<%@ include file="makecon.jsp" %>
<%@page session="true"%>
<%      
  int it1=Integer.parseInt(request.getParameter("quesno")); 
	System.out.println("it1="+it1);
	String st2=request.getParameter("question");
	String st3=request.getParameter("queopt1");	
	String st4=request.getParameter("queopt2");
	
	String st5=request.getParameter("queopt3");
	String st6=request.getParameter("queopt4");
	String st7=request.getParameter("questionAnswer");
%>

<% Integer logid=(Integer)session.getAttribute("login1");%>

<%! PreparedStatement ps=null;%>
<% 
int n1=logid.intValue();



try
	{
 	ps=con.prepareStatement("insert into test_queries values(?,?,?,?,?,?,?)");
	ps.setInt(1,it1);
	ps.setString(2,st2);
	ps.setString(3,st3);
	ps.setString(4,st4);
	ps.setString(5,st5);	
	ps.setString(6,st6);
	ps.setString(7,st7);
	int j=ps.executeUpdate();
		if (j>0)
		{  %>           
			

<BODY>
<div class="form1">
	<ul>
	<li>QUESTION ADDED</li>
		Do you want to add One More Question...<a href="quesadd.jsp" target="left">Yes</a>?</br>
	</ul>
	</div>
	<div class="back">
	<a href="jobtest.htm"><img src="IMG/back45.png"></a>
	</div>
	
	
	
	<%}
		else
		{%>
		<TR>
		<div class="kassinda">
	<p>SORRY..! TRY AGAIN</p>
	</div>
	
<div class="back">
<a href="jobtest.htm"><img src="IMG/back45.png"></a>
</div>
    
		
          </TD></TR>
	
		<%}
}
catch(Exception e)
{
	
 System.out.println("error="+e);
}
finally
{
	ps.close();
	st.close();
	con.close();
}

%>
</BODY>
</HTML>

