<%@ page import="java.sql.*" %>
<%
	Connection con = null;
	Statement st=null;
	

	Class.forName("oracle.jdbc.driver.OracleDriver");
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","crs","crs");
	st=con.createStatement();
%>