<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
	<link rel="stylesheet" href="CSS/update_job.css" type="text/css">
	<link rel="stylesheet" href="CSS/jobproadd1edit.css" type="text/css">
	<link rel="stylesheet" href="CSS/job_home.css" type="text/css">
	
<BODY>

<%@ include file="makecon.jsp" %>
<%!
	ResultSet rs=null;
%>
<%! int j;%>
<%! int jcodeedit;%>
<%! int jcode1;%>
<% System.out.println("welcome");%>
<% jcodeedit=Integer.parseInt(request.getParameter("codeedit").trim());
	
%>

<%
	
	ResultSet rs=st.executeQuery("select * from job_requ where job_code="+jcodeedit);
	if(rs.next())
	{	
		
	System.out.println("job edit  1:");
                if(rs.getInt(1)==jcodeedit)
                 {   
					
		jcode1=jcodeedit;
		
%>
<form name="jobcodeedit" action="jobproedit.jsp" method="post">
  <form name="jobcode11" method="post" action="jobproedit.jsp">
        <div class="form1">
		<ul>
		<li>JOB CODE <input type="text" name="textfield1" value='<%=jcode1%>' size="20" tabindex="1" ReadOnly></li>
        <li>JOB NAME<input type="text" name="textfield2" value='<%=rs.getString(2)%>'  size="20" tabindex="5">
		<li>QUALIFICATION<input type="text" name="textfield3"value='<%=rs.getString(3)%>'size="20" tabindex="2"></li>
		<li>REQUIRED SKILLS<input type="text" name="textfield4" value='<%=rs.getString(4)%>'size="20" tabindex="6"></li>
		<li>CREATED ON (dd-mmm-yy)<input type="text" name="textfield9" value='<%=rs.getString(9)%>'  size="20" tabindex="9"></li>
		<li>LAST DATE (dd-mmm-yy)<input type="text" name="textfield10" value='<%=rs.getString(10)%>' size="20" tabindex="11"></li>
		<li>RESPONSABILITIES<input type="text" name="textfield5" value='<%=rs.getString(5)%>' size="20" tabindex="3"></li>
		<li>REQUIRED EXPERIENCE<input type="text" name="textfield6" value='<%=rs.getFloat(6)%>'size="20" tabindex="7"></li>
		<li>VACANCIES<input type="text" name="textfield7" size="20" value='<%=rs.getInt(7)%>' tabindex="4"></li>
		<li>CREATED BY<input type="text"   name="textfield8" size="20" value='<%=rs.getString(8)%>' tabindex="8" ></li>
		<li>STATUS <input type="text" name="textfield11" value='<%=rs.getString(11)%>' size="20" tabindex="10"></li> 
		</ul>
  
            <div id="submitbut">
			<input type="submit" name="submit"  class="login-submit" value="UPDATE" tabindex="12" >
            </p>
         </div>
		 </div>
	<%
	  	
	}
	}
	else
	{%>
	<div class="kassinda">
	<p>SORRY RECORD NOT FOUND...</p>
	
	</div>
	<div class="back">
	<a href="Jobs.htm"><img src="IMG/back45.png"></a>
	</div>
	
	
		              	 	
           	<%

	}


%>
</BODY> 