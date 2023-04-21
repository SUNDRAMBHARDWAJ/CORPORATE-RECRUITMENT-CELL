 <link rel="stylesheet" href="CSS/sent_resume.css" type="text/css">
 <link rel="stylesheet" href="CSS/resumo.css" type="text/css">
 <link rel="stylesheet" href="CSS/fo_jo.css" type="text/css">
<link rel="stylesheet" href="CSS/job_home.css" type="text/css">
<link rel="stylesheet" href="CSS/menu_resumo.css" type="text/css">


<%@ page session="true"%>
<%@ include file="makecon.jsp" %>
<%! 	
	ResultSet rs=null;
	PreparedStatement ps=null;
%>
<%
	String[] skcode=request.getParameterValues("seekcode");
	//String[] skpwd=request.getParameterValues("seekpwd");
	String[] sc=request.getParameterValues("C");
	String pwd=null;
	String st1="you are suitable for this job";
	String st2="you are not suitable for this job";
	int i=0,j=0,k=0;
	try{
		for(i=0;i<sc.length;i++){ 													
			String cmd="Select * from seek_login where seek_code="+sc[i];
			ResultSet rs1=st.executeQuery(cmd);
			if(rs1.next()){
				pwd=rs1.getString(2);
			}
				ps= con.prepareStatement("insert into online_testlogin values(?,?,?,?)");
				ps.setInt(1,Integer.parseInt(sc[i]));
				ps.setString(2,pwd);
				ps.setString(3,st1);
				ps.setString(4,"Accept");
				ps.executeUpdate();
			}out.println("");	
		}catch(Exception e){	out.println(e);	}				
 %>
<div class="kassinda">
	<p>Message has been sent...</p>
	</div>
	
	<div id="container">
            
            <nav id="main-menuBar">
			<ul id="main-menuBar">
                         <li class="no-sub"><a href="index.html" class="top" style="text-decoration:none">Logout</a></li>   
                  <li class="no-sub"><a href="contact.html" class="top" style="text-decoration:none">Contact us</a></li>                     
                  <li class="no-sub"><a href="about.html" class="top" style="text-decoration:none">About</a></li>
                  <li class="no-sub"><a href="provider_home1.jsp" class="top" style="text-decoration:none">Home</a>
					</li>
             </ul>
            </nav>
			 </div>
			 
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