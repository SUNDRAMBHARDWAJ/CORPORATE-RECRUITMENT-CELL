<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>
<link rel="stylesheet" href="CSS/add_test.css" type="text/css">
<link rel="stylesheet" href="CSS/job_home.css" type="text/css">
<script language="JavaScript">
 
function valid(ThisForm)
 {     
	if(ThisForm.question.value=="") 
    {
     alert("Enter question");
	 ThisForm.question.focus();
     return false;
    }
	if(ThisForm.queopt1.value=="") 
    {
     alert("Enter queopt1");
	 ThisForm.queopt1.focus();
     return false;
    }
	if(ThisForm.queopt2.value=="") 
    {
     alert("Enter queopt2 ");
	 ThisForm.queopt2.focus();
     return false;
    }
    if(ThisForm.quesno.value=="") 
    {
     alert("Enter quesno") ; 
     ThisForm.quesno.focus();
     return false;
    }
	if(ThisForm.queopt3.value=="") 
    {
     alert("Enter queopt3 ");
	 ThisForm.queopt3.focus();
     return false;
    }
	if(ThisForm.queopt4.value=="") 
    {
     alert("Enter queopt4 ");
	 ThisForm.queopt4.focus();
     return false;
    }
	if(ThisForm.questionAnswer.value=="") 
    {
     alert("EnterquestionAnswer ");
	 ThisForm.questionAnswer.focus();
     return false;
    }
}    
function cblur(ThisField)
  {
		cnt=0
		var val=ThisField.value
		len=val.length
		if(len !=0)
		{
		  for(i=0;i<len;i++)
		  {
			c=val.substr(i,1)
			if(c==" ") cnt++
		  }
		  if(cnt==len)
		  {
			ThisField.value=""
			alert("Your Input Contains Only Space")
			ThisField.focus();
			return(false);
		  }
		}
	  r=0
	  if((ThisField.name=="question") ||(ThisField.name=="queopt1") ||(ThisField.name=="queopt2")||(ThisField.name=="queopt3")||(ThisField.name=="queopt4")||(ThisField.name=="questionAnswer"))
	  {
		for(i=0;i<len;i++)
		{
		  c=val.substr(i,1)
		  if((c<"a"||c>"z")&&(c<"A"||c>"z")&&(c!=" ")&&(c!="."))
		  {
			r=r+1
		  }
		}
		if(r>0)
		{
		  alert("Please Enter Only \"ALPHABETS\".")
		  ThisField.value="";
		  ThisField.focus();
		  return(false);
		}
		/*else
		{
		  window.cf.CId.focus();
		} */
	  }
	  //*******************************
	  if((ThisField.name=="quesno") )
	  {
		for(i=0;i<len;i++)
		{
		  c=val.substr(i,1)
		  if((c<"0" ||c>"9") && (c!="-"))
		  {
			r=r+1
		  }
		}
		if(r>0)
		{
		  alert("Enter Only \"NUMBERS\"!")
		  ThisField.value= "";
		  ThisField.focus();
		  return(false);
		}
	  }
	  //************Mail Id*******************
	  
	  
	  //****************End Of mail Id Checking*******************************

	  //****************ExpDate Checking**************************************

	  //***************end expdate************************
}
</script>
</HEAD>
<BODY>
<%@page session="true"%>
<%@ include file="makecon.jsp" %>
<% Integer logid=(Integer)session.getAttribute("login1");%>

<% 
int n1=logid.intValue();
System.out.println(n1);

%>

<%!  	
	ResultSet rs = null;
%>
<%! int qno;%>
<%! String strr;%> 
<% try
	{
 	rs=st.executeQuery("select max(ques_no) from test_queries");
	if(rs.next())
		{
		
		qno=rs.getInt(1)+1;
		System.out.println("qno:"+qno);
		
		}

       }
catch(Exception e)
	{}
finally
{
	rs.close();
	st.close();
	con.close();
}
 %>
<form name="jobcode11" method="post" action="quesadd1.jsp" onsubmit="return valid(this)">
<div class="form1">
<ul>
<li>QUESTION NUMBER <input type="text" name="quesno" Onblur='cblur(quesno)'  value="<%=qno%>" size="25" tabindex="1" ReadOnly /></li>
<li>QUESTION <textarea id="hobbies" name="question" Onblur='cblur(question)' style="height: 45; width: 210" rows="1" cols="25" tabIndex="10" size="25px"></textarea></li>
<li>QUESTION OPTION 1<input type="text" name="queopt1" Onblur='cblur(queopt1)' size="25" tabindex="3"/></li>
<li>QUESTION OPTION 2<input type="text" name="queopt2" Onblur='cblur(queopt2)' size="25" tabindex="4"/></li>
<li>QUESTION OPTION 3<input type="text" name="queopt3" Onblur='cblur(queopt3)' size="25" tabindex="5"/></li>
<li>QUESTION OPTION 4<input type="text" name="queopt4" Onblur='cblur(queopt4)' size="25" tabindex="6"/></li>
<li>QUESTION ANSWER<input type="text" name="questionAnswer" Onblur='cblur(questionAnswer)' size="25" tabindex="7"/></li>
</ul>
 <div id="submitbut">
 <input type="reset" name="submit2"  class="login-submit" value="RESET" tabindex="13" >
<input type="submit" name="submit"  class="login-submit" value="SAVE" tabindex="12" >

</div>
</div>
<!--<div class="clearfix"></div>
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
                </footer>-->
</form>
</BODY>
</HTML>
