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
        
        
       //out.println(type);
		int x=0;
		String name[]=new String[200];
		for(int j=0;j<request.getParameterValues("group5").length;j++)
			{
         	name= request.getParameterValues("group5");
         	//out.print(name[j]+" ");
        	 	
        	x = stmt.executeUpdate("Delete from email where id = '" +name[j]+ "'");  	
         	}	
	if(x==1)
		out.write("Mails deleted Sucessfully..... ");
	else	
		out.write("Mails deleted UnSucessfully..... ");
		
	} catch(Exception ee){out.write("An Error Related to DataBase had Occur and technically it is  "+ ee);}
	finally{
	stmt.close();
	con.close();
	
	}

%>