<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<link rel="stylesheet" href="CSS/search_job.css" type="text/css">
<link rel="stylesheet" href="CSS/Design.css" type="text/css">
<title>CRS is web</title>
</head>
<body>
 <nav id="main-menuBar">
			<ul id="main-menuBar">
                        
                  <li class="no-sub"><a href="contact.html" class="top" style="text-decoration:none">Contact us</a></li>                     
                  <li class="no-sub"><a href="about.html" class="top" style="text-decoration:none">About</a></li>
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
<% String name=(String)session.getAttribute("str1");%> 
<div class="form1">
		<font color="#B3B3FF" size="7"><b>W</b>ELCOME</font>
		<font color="Red" size="6"> <%=name%>.......</font><br><br>
		<font size="5" color="#B3B3FF">Do you want Start the Online Test <a href="onlinetest.jsp"> 
        Yes..</a>&nbsp; <a href="index.html" target="_top">No..</a></font></p>
		</div>
		
</body>
</html>

