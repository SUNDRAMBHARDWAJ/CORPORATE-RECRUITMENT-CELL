<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<link rel="stylesheet" href="CSS/add_test.css" type="text/css">
<link rel="stylesheet" href="CSS/jobproadd1edit.css" type="text/css">
<link rel="stylesheet" href="CSS/job_home.css" type="text/css">
<BODY>

<%@ include file="makecon.jsp" %>
<%! ResultSet rs=null;%>
<%! int j;%>
<%! int jcodeedit;%>
<%! int jcode1;%>
<% System.out.println("welcome");
	jcodeedit=Integer.parseInt(request.getParameter("codeedit"));
	ResultSet rs=st.executeQuery("select * from test_queries where ques_no="+jcodeedit);
	if(rs.next())
	{	
//	System.out.println("test edit  1:"+rs.getInt(1));
System.out.println("test edit  1:");
		if(rs.getInt(1)==jcodeedit)
		{   
			jcode1=jcodeedit;
%>
<form name="testedit" action="testeditss.jsp" method="post">
<div class="form1">
<ul>
<li>QUESTION NUMBER <input type="text" name="textfield1" value='<%=jcode1%>' size="20" tabindex="1" ReadOnly></li>
<li>QUESTION <input type="text" name="question" value='<%=rs.getString(2)%>' size="20" tabindex="1" ReadOnly></li>
<li>QUESTION OPTION 1<input type="text" value='<%=rs.getString(3)%>' name="textfield3" size="20" tabindex="3"></li>
<li>QUESTION OPTION 2<input type="text" name="textfield4" value='<%=rs.getString(4)%>' size="20" tabindex="4"></li>
<li>QUESTION OPTION 3<input type="text" value='<%=rs.getString(5)%>' name="textfield5" size="20" tabindex="5"></li>
<li>QUESTION OPTION 4<input type="text" value='<%=rs.getString(6)%>'name="textfield6" size="20" tabindex="6"></li>
<li>QUESTION ANSWER <input type="text"  value='<%=rs.getString(7)%>' name="textfield7" size="20" tabindex="7"></li>
</ul>
 <div id="submitbut">
 <input type="submit" name="submit"  class="login-submit" value="UPDATE" tabindex="12" >
 </div>
 </div>
<%	}	}	else	{%>

<div class="kassinda">
	<p>SORRY QUESTION NOT FOUND...</p>
	</div>
	
<div class="back">
<a href="jobtest.htm"><img src="IMG/back45.png"></a>
</div>
	
<%	} %></BODY>