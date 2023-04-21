<%@ include file="makecon.jsp" %>
<%@ page session="true"%>
<%!int loginid;%>
<%!String str;%>
<%!ResultSet rs = null;%>
<%!String pass = null;%>
<%
	str=request.getParameter("uname");
	loginid=Integer.parseInt(request.getParameter("uname"));
	pass = request.getParameter("password");
	rs = st.executeQuery("select *  from job_pro where  pro_login_id="+loginid+" and  pro_password='"+pass+"'"); 
	if(!rs.next())
	{  response.sendRedirect("login.htm");
	con.close();
%>

<%	}    else	{     con.close();
response.sendRedirect("provider_home1.jsp");%>
<%
	Integer login1= new Integer(loginid);
	session.setAttribute("login1",login1);	
}
		con.close();
%>			  