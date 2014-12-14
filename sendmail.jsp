<%
if(session.getAttribute("username")==null)
response.sendRedirect("index.jsp");
%>
<%@ page language="java" import ="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.*"%>


<%
        Date n;
        Connection con=null;
		ResultSet rst=null;
		PreparedStatement ps = null;
		
    try{
      
	  	
		n = new Date();  
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
		
    	String url = "jdbc:mysql://localhost:3306/ayruved";	   
	   
	    Class.forName("com.mysql.jdbc.Driver").newInstance (); 
	   //out.write("Driver Loaded ");
	    con = DriverManager.getConnection(url,"root","vaio"); 
	   //out.write("Connection Established ");
	  	
		
		String sender = (String)session.getAttribute("username");
		String receiver = request.getParameter("t4");
		String datee = sdf.format(n);
		String subject=request.getParameter("t2");
        String message=request.getParameter("t3");
        
        ps = con.prepareStatement("insert into email(id,sender,receiver,date,subject,message) values (NULL,?,?,?,?,?) ");		
		ps.setString(1,sender);
		ps.setString(2,receiver);
		ps.setString(3,datee);
		ps.setString(4,subject);
		ps.setString(5,message);
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