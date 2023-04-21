<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<link rel="stylesheet" href="CSS/forgot_password.css" type="text/css">
<link rel="stylesheet" href="CSS/Design.css" type="text/css">
<BODY text=#000000  leftMargin=0 topMargin=0>
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


<%@ include file="makecon.jsp" %>
<%@page session="true"%>

<%! 
	ResultSet rs=null;
	PreparedStatement ps=null;
%>
<%!		String answer1;	%>


<% Integer fid3=(Integer)session.getAttribute("fid2");%>

<% int sn2=fid3.intValue();	%>
<% answer1=request.getParameter("answer").trim();	%>

<% 

try
	{
		String cmd="select * from seek_login where seek_code="+sn2;
		rs=st.executeQuery(cmd);
	
		if(rs.next()){
			int skid=rs.getInt(1);
			String skpwd=rs.getString(2);
			String skques=rs.getString(3);
			String skans=rs.getString(4);
			if((skans.compareTo(answer1)) == 0)  {
%>
<div class="form1">
		<p><b><font color="#FF0066">NICE TO MEET YOU... HAVE A NICE DAY...</font></b></p>
		<p><b><font color="#0000CC"> YOUR LOGIN ID IS: &nbsp;&nbsp;&nbsp;&nbsp;</b><%=skid%> </font></p>
		<p><b><font color="#0000CC">YOUR PASSWORD ID: &nbsp;&nbsp;&nbsp;&nbsp;<%=skpwd%> </font></p>
		<p><b><font color="#FF0066">Do you want go for further transactions&nbsp; <a href="login_seeker1.html">Yes?</a>&nbsp;&nbsp;</font>
		</div>
        
        <%    }	
		else
			{
			%>             
			                               
  			<div class="form2">
	
		<p><b><font color="#0000CC">SORRY..!ENTER YOUR CORRECT DETAILS</font></b></p>
           </div>

	<%
			}
	    }	
	}
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
        
        </TABLE></BODY></HTML>
