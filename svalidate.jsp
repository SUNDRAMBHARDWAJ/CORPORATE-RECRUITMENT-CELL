<%@ include file="makecon.jsp" %>
<%@ page session="true"%>

<%!int sloginid;%>
<%!String str;%>
<%!                      ResultSet rs = null;

			 String pass = null; 
%>

<%          	 		
         sloginid = Integer.parseInt(request.getParameter("uname"));
		 pass = request.getParameter("password");

		System.out.println(pass);
		 rs = st.executeQuery("select *  from seek_login where  seek_code="+sloginid+" and  seek_pwd='"+pass+"'"); 
		 if(!rs.next())
			{  response.sendRedirect("login_seeker1.html");
			  con.close();
			  %>
			 
		 
			<%  }
	         else
        	     {    con.close();
response.sendRedirect("seeker_home.html"); %>
<%   
		     
			Integer slogin1= new Integer(sloginid);
			session.setAttribute("slogin1",slogin1);	
 		      
              }
		con.close();
%>			  