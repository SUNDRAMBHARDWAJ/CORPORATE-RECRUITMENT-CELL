<%@ include file="makecon.jsp" %>
<%@page session="true"%>

<%!  	
	ResultSet rs=null;
	PreparedStatement ps=null;
%>
<%! String spass,spass1,spass2;%>




<%  	int fid=Integer.parseInt(request.getParameter("textfield1"));

%>



<% try
	{
 	rs=st.executeQuery("select * from seek_login where seek_code="+fid);

	while(rs.next())
          {	
		
	       int scode=rs.getInt(1); 
	       if(fid ==scode)	
		
	       {
			
		%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<link rel="stylesheet" href="CSS/forgot_password.css" type="text/css">
<link rel="stylesheet" href="CSS/Design.css" type="text/css">
<BODY text=#000000 leftMargin=0 topMargin=0>
<form action="retrieve.jsp" method="post"> 
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
				<div class="form1">
		<p><b><font color="#0000CC">YOUR QUESTION WAS RETRIEVED FROM DATABASE...</font></b></p>
		<p><b><font color="#0000CC"> YOUR QUESTION IS: </font></b><%=rs.getString(3) %> </p>
		<p><b><font color="#0000CC">YOUR ANSWER IS...</font></b><input type="text" name="answer" size="20"></p>
		<div id="submitbut">
		<input type="submit" name="submit"  class="login-submit" value="RETRIVE" >
		</div>
		</div>

 		<%

			}	
              else
	      {%>             
			                               
  			
<TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b>Welcome....</b>
          </TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;
          </TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         </p>
          </TD></TR>
		  </div>



	<%     }
		Integer fid1= new Integer(fid);
		session.setAttribute("fid2",fid1);
	     }            	
		%>             
			                               
  			

	<%
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
