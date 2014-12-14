<%
if(session.getAttribute("username")==null)
response.sendRedirect("index.jsp");
%>
<%@ page language="java" import ="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>

<%
      
        Connection con=null;
		ResultSet rst=null;
		PreparedStatement ps = null;
		
    try{
      
	  	
		
    	String url = "jdbc:mysql://localhost:3306/ayruved";	   
	   
	    Class.forName("com.mysql.jdbc.Driver").newInstance (); 
	   //out.write("Driver Loaded ");
	    con = DriverManager.getConnection(url,"root","vaio"); 
	   //out.write("Connection Established ");
	  	
		
		String m = request.getParameter("country");
		//out.println(m);
		String s = request.getParameter("state");
		//out.println(s);
        String p = request.getParameter("t3");
        
        ps = con.prepareStatement("insert into symptom(id,mid,sid,symptoms) values (NULL,?,?,?) ");		
		ps.setString(1,m);
		ps.setString(2,s);
		ps.setString(3,p);
		ps.executeUpdate();
		ps.close();

%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>
		<body>

			<H1><font color="#008000">Your Query has sent Successfully... </font> </H1>
		</body>

</html>



<%
   } catch(Exception ee){out.write("An Error Related to DataBase had Occur and technically it is  "+ ee);}

	finally{
		con.close();
		}
%>