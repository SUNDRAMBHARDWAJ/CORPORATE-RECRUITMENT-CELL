<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
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
<%@page session="true"%>
<%! int j; %>
<%! int jcodeedit;%>
<%! int jcode1;%>
<% 
	Integer slogid=(Integer)session.getAttribute("slogin1");
System.out.println("supd.jsp");
	int n1=slogid.intValue();
	String x=null;
try
{
	String cmd="select SEEK_RESUMEUPDATE from SEEK_RESUMEUPDATE where seek_code=" + n1;
System.out.println("cmd: " + cmd);
	ResultSet rs=st.executeQuery(cmd);
	if(rs.next())
	{
		x=rs.getString(1);
%>
<form name="post" action="supdate1.jsp" method="post">
<nav id="form6">
<li>Please paste your Resume Here(1000 chars only)&nbsp;</li>
<textarea rows="14" name="S1" cols="65" value='<%=x%>' tabindex="1"><%=x%></textarea>
<div id="submitbut"> 
<input type="submit" value="UPDATE" name="2" tabindex="2">
&nbsp;&nbsp;&nbsp;
<input type="reset" value="CLEAR" name="B2" tabindex="3">
</nav>
</div>
</form>
<%
}else {%>
			<nav id="form5">
			<li>
			<b>Please Post your Resume first</b>
			</li>
			</nav>

<%} }catch(Exception e){	out.println(e);e.printStackTrace();	}
%>