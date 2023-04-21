<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<link rel="stylesheet" href="CSS/resumo.css" type="text/css">
 <link rel="stylesheet" href="CSS/footer_resum.css" />
<link rel="stylesheet" href="CSS/job_home.css" type="text/css">
<link rel="stylesheet" href="CSS/menu_resumo.css" type="text/css">


<title>Resume Process</title>
</head>
<body>
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
  <div class="form1">
	<ul>
<TABLE cellSpacing=0 cellPadding=0 width=780 border=0 height="186">

 <TBODY>
  <TR>
    <TD vAlign=top width=780 height=9>
      &nbsp;</TD></TR>
  <TR>
    <TD height=21></TD></TR>
  <TR>
    <TD vAlign=top height=156>
    <p align="center"><b><font color="#104E8B" size="4">RESUME PROCESSING</font></b></p>

    <p align="center">  &nbsp;
<table border="1" cellpadding="2" width="675">
  <tr>
      <td width="99">Seek Code</td>
    <td width="116">Qualification</td>
    <td width="111">Branch</td>
    <td width="103">SkillSet</td>
    <td width="90">Other Qualifications</td>
    <td width="90">Experience</td>
	<td width="164">Accept/Reject</td>
  </tr>
  <tr>

<%@ include file="makecon.jsp" %>
<%@ page import="java.io.*"%>
<%@ page session="true"%>

<%
	
		Statement st1=null;
		ResultSet rs=null;

		String quali=request.getParameter("quali");
		//out.println(quali);
try
	{
		String sc=request.getParameter("C");
		String spwd=null;
		
		if(sc.equalsIgnoreCase("EXP")){
						
			int exp=Integer.parseInt(request.getParameter("exp"));

			String cmd="Select * from seek_resume where resume_exp="+exp;
			st1=con.createStatement();
			rs=st1.executeQuery(cmd);
			while(rs.next()){
				int val=rs.getInt(1);
				
				String cmd1="Select * from seek_login where seek_code="+val;
				Statement st2=con.createStatement();
				ResultSet rs1=st2.executeQuery(cmd1);
				if(rs1.next())	spwd=rs1.getString(2);

%>

	<form action="resumeprocessing1.jsp">
  	   <tr>
           <td width="89" height="55" name="a">
               <p align="center"><%out.println(val);%></p>
			   <INPUT name=seekcode type=hidden value='<%=val%>'>
		   </td>
			
		   
			   <INPUT name=seekpwd type=hidden value='<%=spwd%>'>
		   

		   <td width="106" height="55">  <p align="center"> <%out.println(rs.getString(2));%></p></td>
		   <td width="101" height="55">  <p align="center">
		   <%out.println(rs.getString(3));%></p></td>
		  <td width="93" height="55"><p align="center">
 
	   <%out.println(rs.getString(4));%></p>
  
	  </td>
	   <td width="80" height="55"><p align="center">  
	   <%out.println(rs.getString(5));%></p> 

	  </td>
	  <td width="80" height="55"><p align="center">  
	   <%out.println(rs.getInt(6));%></p> 

	  </td>
<td width="154" height="55">  <p align="left">
	  
		<p align="center">Accept<input type="checkbox" name="C" value='<%=val%>'></p>
		</td>
	  
	   </tr> 
	    <%}%>
	   
           <td>
		   <input name="submit" type="submit" value="send">   
    </td></form>
	<%}
	}
catch(Exception e)
{}

System.out.println("welcome3..");
%>
</TABLE>



</TBODY>
</TABLE>
<p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
  
<p align="center">&nbsp;</p>
 </ul>
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
</BODY>
</HTML>
