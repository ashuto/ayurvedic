<%@ page language="java" import ="java.sql.*"%>
<%@ page import="java.io.*"%>
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
	    
		ps = con.prepareStatement("insert into login(uid,uname,passwd,type,fname,lname,address,mobile) values (NULL,?,?,?,?,?,?,?) ");		
		
		String fname=request.getParameter("t1");
        String lname=request.getParameter("t2");
        String address=request.getParameter("t3");
        String mobile=request.getParameter("t4");
        
        
        String uname=request.getParameter("t5");
        String passwd=request.getParameter("t6");
        String type=request.getParameter("s1");
        
        //ps.setString(1,"NULL");
		ps.setString(1,uname);
		ps.setString(2,passwd);
		ps.setString(3,type);
		ps.setString(4,fname);
		ps.setString(5,lname);
		ps.setString(6,address);
		ps.setString(7,mobile);
		
		ps.executeUpdate();
		
	
		
				
	} catch(Exception ee){out.write("An Error Related to DataBase had Occur and technically it is  "+ ee);}
finally{
	ps.close();

	con.close();
	
	}

%>


<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>submit page</title>
</head>


<body>
<h1>
Registration Process Successfull please
</h1>
<br/>
<a href="index.jsp"><h2> Login </h2></a>
</body>

</html>
