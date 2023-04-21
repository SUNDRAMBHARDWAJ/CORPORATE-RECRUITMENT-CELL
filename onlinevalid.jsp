 <%@ include file="makecon.jsp" %>
<%@ page session="true"%>

<%!int sloginid=0;%>
<%!String str=null;%>
<%!
	ResultSet rs=null,rs1 = null;
	String pass = null; 
%>
<%      
	sloginid = Integer.parseInt(request.getParameter("uname"));
	pass = request.getParameter("password");
	System.out.println(pass);
	System.out.println("sloginid="+sloginid);
try
{
	rs = st.executeQuery("select *  from online_testlogin where  seek_code="+sloginid+" and  seek_pwd='"+pass+"'"); 
	if(!rs.next())
	{  	
System.out.println("hai");
%>
<frameset>

<frame src="online_select.html" bordercolor=#6480ed scrolling=auto frameborder=no>
</frameset>
<% } else { 
		response.sendRedirect("onlineright.jsp");    
%>


<%}
 	rs1 = st.executeQuery("select *  from seek_per where  seek_code="+sloginid);
	if(rs1.next())
	{	
		String ds=rs1.getString(2);
		System.out.println("name="+ds);
		session.setAttribute("str1",ds);
	}
	}catch(Exception e){
response.sendRedirect("online_select.html");
	}
	
	con.close();
%>			  