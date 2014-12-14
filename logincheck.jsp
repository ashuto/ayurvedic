<%@ page language="java" import ="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
        Connection con=null;
		ResultSet rst=null;
		Statement stmt=null;

    try{
    
	   String url = "jdbc:mysql://localhost:3306/ayruved";	   
	   
	   Class.forName("com.mysql.jdbc.Driver").newInstance (); 
	   //out.write("Driver Loaded ");
	   
	   con = DriverManager.getConnection(url,"root","vaio"); 
	   
	   //out.write("Connection Established ");
	   stmt = con.createStatement(); 
    	
    	
		String uname=request.getParameter("uname");
        String passwd=request.getParameter("passwd");
        String type=request.getParameter("r1");
		//out.println(type);
		
	
	    rst=stmt.executeQuery("select * from login where uname = '" +uname+ "'"); 
		
		
		if(rst.next())
		{
		//out.println(rst.getString(1));
		
		
		if(uname.equalsIgnoreCase(rst.getString(2)) && passwd.equalsIgnoreCase(rst.getString(3)))
		{
		 	session.setAttribute("username",rst.getString(5));
			if(uname.equalsIgnoreCase("admin"))
			response.sendRedirect("admin.jsp");
			else if(type.equalsIgnoreCase(rst.getString(4)) && type.equalsIgnoreCase("Doctor"))
			response.sendRedirect("doctor.jsp");
			else if(type.equalsIgnoreCase(rst.getString(4)) && type.equalsIgnoreCase("User"))
			response.sendRedirect("user.jsp");
			else
			{
			%>
			<jsp:forward page = "error.jsp" />	
			<%
			}

		}
				
		else
		{
		%>
		<jsp:forward page = "error.jsp" />	
		<%
		}
		}
		else
		{
		%>
		<jsp:forward page = "error.jsp" />	
		<%
		}
	} catch(Exception ee){out.write("An Error Related to DataBase had Occur and technically it is  "+ ee);}
	finally{
	stmt.close();
	con.close();
	
	}

%>