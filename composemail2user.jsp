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
    	
    	
		
        
       //out.println(type);
		
	
	    rst=stmt.executeQuery("select * from login where type='user' "); 
		%>


<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>To</title>
<script type="text/javascript" src="check2.js">
</script>
</head>

<body bgcolor="#99FF66">

<div align="center">
	<table bgcolor="#99FF66" border="1" width="49%" style="border-width: 0px" height="287">
		<form name="frm1" action="sendmail.jsp" method="post" onsubmit="return validation(this)">
			<tr>
				<td style="border-style: none; border-width: medium" align="right" height="27" colspan="2">
				<p align="left"><font size="4" color="#800000">This message 
				will be sent to the User</font></td>
			</tr>
			<tr>
				<td width="80" style="border-style: none; border-width: medium" align="right" height="27">
				<font size="4">Dr. :-</font></td>
				<td style="border-style: none; border-width: medium" height="27">
				<p align="left">
				<select size="1" id="t4" name="t4">
				<option value="0">Select</option>
				<%
						while(rst.next())
							{
			
		        %>

				<option value="<% out.println(rst.getString(2)); %>"> <% out.println(rst.getString(5)); %>  </option>
				
				<% } %>
				
				</select>
		 		
				</td>
			</tr>
			<tr>
				<td width="80" style="border-style: none; border-width: medium" align="right" height="21">&nbsp;</td>
				<td style="border-style: none; border-width: medium" height="21">&nbsp;</td>
			</tr>
			<tr>
				<td width="80" style="border-style: none; border-width: medium" align="right">
				<font size="4">Subject 
		:-</font></td>
				<td style="border-style: none; border-width: medium">
				<input type="text" name="t2" size="54" value="Regarding your problem of :- "> </td>
			</tr>
			<tr>
				<td width="80" style="border-style: none; border-width: medium" align="right" height="21">&nbsp;</td>
				<td style="border-style: none; border-width: medium" height="21">&nbsp;</td>
			</tr>
			<tr>
				<td width="80" style="border-style: none; border-width: medium" align="right" height="118" valign="top">
				<font size="4">Message 
		:-</font></td>
				<td style="border-style: none; border-width: medium" height="118">
				<textarea rows="7" name="t3" cols="46"></textarea> </td>
			</tr>
			<tr>
				<td width="80" style="border-style: none; border-width: medium" height="29">&nbsp;</td>
				<td style="border-style: none; border-width: medium" height="29">
				<input type="submit" name="b1" value="Send Mail">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" name="b3" value="Cancel"> </td>
			</tr>
		</form>
	</table></div>
<%
	
} catch(Exception ee){out.write("An Error Related to DataBase had Occur and technically it is  "+ ee);}
	finally{
	stmt.close();
	con.close();
	
	}

%>

</body>

</html>