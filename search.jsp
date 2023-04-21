<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<link rel="stylesheet" href="CSS/search_job.css" type="text/css">
<link rel="stylesheet" href="CSS/Design.css" type="text/css">

<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ include file="makecon.jsp" %>

<%!  	
	ResultSet rs=null;
%>
<%
	String st2=request.getParameter("Experience");
%>

<% try	
	{
 	rs=st.executeQuery("select * from job_requ");
%>
                  
   <%
	System.out.println("1:"+st2);
	StringTokenizer s=new StringTokenizer(st2,"-");
	int i=0;
	int[] j=new int[2];
	while(s.hasMoreTokens())
	{
		j[i]=Integer.parseInt(s.nextToken());
		i++;
	}
	i=0;
 		for(i=0;i<j.length;i++)
		System.out.println(j[i]);%>
		
		<nav id="main-menuBar">
			<ul id="main-menuBar">
                        
                  <li class="no-sub"><a href="contact.html" class="top" style="text-decoration:none">Contact us</a></li>                    
                 <li class="no-sub">
				  <a href="about.html" class="top" style="text-decoration:none">About</a></li>
                  <li class="no-sub">
						<a href="index.html" class="top" style="text-decoration:none">Home</a>
					</li>
             </ul>
            </nav>
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
   <div align="justify">
	<div class="form1">
	<ul>	
<table border="0" width="100%" height="295">
  <tr>
    <td width="100%" height="49" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <font color="#104E8B"><b>BASED ON KEY AVAILABLE JOBS ARE...</b></font></td>
  </tr>
  <tr>
    <td width="5%" height="234"></td>
    <td width="93%" height="234">
      <table border="1" width="546" height="102" cellspacing="1">
        <tr>
<td width="169" height="30">
  <p align="center"><b><font color="#104E8B">Job Name</font></b></p>
</td>
<td width="133" height="30">
  <p align="center"><b><font color="#104E8B">Qualification</font></b></p>
</td>
<td width="222" height="30">
  <p align="center"><b><font color="#104E8B">Experience</font></b></p>
  
</td>

</tr>

 <%     while(rs.next())

       {  
                 i=0;

     	    while(i<j.length)
	    {
		String a=rs.getString(2);
		String b=rs.getString(3);
		double c=rs.getDouble(6);
		if((c>= j[i]) && (c<=j[i+1]))
		{%>

			<tr><td width="188" height="55">
			<p align="center"><%out.println(a);%></p></td>
			<td width="20" height="55">
			<p align="center"><%out.println(b);%></p></td>
			<td width="30" height="55">
			<p align="center"><%out.println(c);%></p></td>
			</tr>
			
	        <% }		 
		i++;
             }	
            }
	
          %>	
		  
 </table>
 
 </table>

</ul>
</div>
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

</BODY>

</HTML>
