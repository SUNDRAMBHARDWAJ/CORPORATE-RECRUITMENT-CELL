<%@ page session="true"%>
<%@ page import="java.sql.*"%>
<%
 System.out.println("hai");
 //Integer slogid=(Integer)session.getAttribute("slogin1");
 Integer qno2=(Integer)session.getAttribute("tqno");
// qno2 = qno2-1;
 Integer tcount=(Integer)session.getAttribute("count");
 System.out.println("hai1");
 System.out.println("qno2 : " + qno2);
int count;
if(tcount==null)
{
 count=0;
}
else
{
count=tcount.intValue();
}
 System.out.println("count=" + count);
//int qno3=qno2.intValue();
int qno3 = qno2;
System.out.println("qno3=" +qno3);
System.out.println("hai2");
%>


<%! 	Connection con = null;
	Statement st=null;
	ResultSet rs=null;
	PreparedStatement ps=null;
	
%>

<% String op=request.getParameter("D1"); 
System.out.println("nara  " + op);
%>
<%	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","crs","crs");
	 st=con.createStatement();
	 
	rs=st.executeQuery("select * from test_queries where ques_no="+qno3);
	while(rs.next())
	{
		String s=rs.getString(7);
		System.out.println("op==" + op + "ds==" + s + "  " + op.compareTo(s));
	if((op.compareTo(s))==0)
		//if(op.equals(s))
	{
		System.out.println("count "+ count);
	session.setAttribute("count",new Integer(count+1));
	}	
	System.out.println("compared");
	System.out.println(count);
                Integer qno4= new Integer(qno3+1);
              session.setAttribute("tqno",qno4);
             %>
<p align="center">

&nbsp;
<p align="center">

&nbsp;
<p align="center">

&nbsp;
<p align="center">

<b><font color="#CA6ACA">



 </font></b>

	<%
	
 
 }
con.close();
%>
<jsp:forward page="onlinetest.jsp"/>










	

