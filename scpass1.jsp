<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>JOBS_VIEW_SEEKER</TITLE>
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
<%!  	
	ResultSet rs=null;
	PreparedStatement ps=null;
	String spass,spass1,spass2;
%>
<%
	Integer slogid=(Integer)session.getAttribute("slogin1");
	int sn2=slogid.intValue();
	spass=request.getParameter("pass");
	spass1=request.getParameter("pass1");
    spass2=request.getParameter("retypepassword");
	System.out.println(spass);
	System.out.println(spass1);
	System.out.println(spass2);
try
{
	rs=st.executeQuery("select * from seek_login where seek_code="+sn2);
	if(rs.next())
	{	
		if((rs.getString(2).compareTo(spass)) == 0)
		{
	      if((spass1.compareTo(spass2)) == 0)
	       {
ps=con.prepareStatement("update seek_login set seek_pwd=? where  seek_code="+sn2);
				ps.setString(1,spass1);
				int j=ps.executeUpdate();
				ps=con.prepareStatement("select * from online_testlogin where seek_code=" + sn2);
				ResultSet rrs=ps.executeQuery();
				int l=1;
				if(rrs.next())
			   {
				PreparedStatement pst=con.prepareStatement("update online_testlogin set seek_pwd=? where  seek_code=" + sn2);
				pst.setString(1,spass1);
				l=pst.executeUpdate();
			   }
				if (j>0	&& l>0)
				{    %>    
	<nav id="form5">
	<li>				
	<b>Password updated Successfully</b>
	</li>
	</nav>
<%}	
	else	
	{%> 
	<nav id="form5">
	<li>	
	<b>Sorry ...! Not Updated</b> 
	</li>
	</nav>
<%}    }    else	{ %>
	<nav id="form5">
	<li>
	<b>Please Check your Retype and New Password</b>
	</li>
	</nav>
<%}    }    else   {%>
	<nav id="form5">
	<li>
	<b>Please Check your Old Password</b>
	</li>
	</nav>
<% }   }	
}catch(Exception e)
{	 System.out.println("error"+e);	}

finally
{
	ps.close();	
	rs.close();
	st.close();
	con.close();
}	
%>
</BODY>
</HTML>