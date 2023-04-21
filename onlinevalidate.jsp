<%@ include file="makecon.jsp" %>
<%@ page session="true"%>
<%!String str1;%>
<%!                      ResultSet rs = null;

			 String pass = null; 
%>

<%          	
		
str1=request.getParameter("uname");
pass = request.getParameter("password");
rs = st.executeQuery("select *  from online_testlogin where  seek_code='"+str1+"'and  seek_pwd='"+pass+"'"); 
		 if(!rs.next() )
		      {  	con.close();
System.out.println("hai");
%>
<frameset>
<frame src="onlinelogin.htm" name="right" bordercolor=#6480ed frameborder=0 scrolling=auto>
</frameset>

			  
<%		       }
		         else
             		{     
System.out.println("welcome");
			       con.close();
%>
<frameset>
<frame src="onlineright.jsp" name="right" bordercolor=#6480ed frameborder=0 scrolling=auto>
</frameset>
		   		
<%
			  		session.setAttribute("str1",str1);	
	                }
            
          rs.close();
		con.close();
%>			  