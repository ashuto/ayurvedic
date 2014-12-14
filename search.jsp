<%
if(session.getAttribute("username")==null)
response.sendRedirect("index.jsp");
%>

<%@ page language="java" import ="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
        Connection con=null;
		ResultSet rst=null;
		
		Statement stmt = null;
		
    try{
    	
    	String url = "jdbc:mysql://localhost:3306/ayruved";	   
	   
	    Class.forName("com.mysql.jdbc.Driver").newInstance (); 
	   //out.write("Driver Loaded ");
	   
	    con = DriverManager.getConnection(url,"root","vaio"); 
	   
	   //out.write("Connection Established ");
	    
			
		stmt = con.createStatement();

		String uname=(String)session.getAttribute("username");

		rst=stmt.executeQuery("select * from symptom");
				
			
	%>



<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>To</title>
<script type="text/javascript">
  
function go(loc){
    document.form1.textarea1.value = loc;
}
</script>
</head>

<body bgcolor="#99FF66">

<div align="center">
	<table border="1" width="580" bgcolor="#99FF66">
	<form name="f1" action="search1.jsp" method="post">
		<tr>
			<td style="border-left-style:solid; border-left-width:1px; border-top-style:solid; border-top-width:1px; " align="center" colspan="2">
			<b><font size="5">What is happing to you ????</font></b></td>
		</tr>
		
		<tr>
			<td style="border-left-style:solid; border-left-width:1px; border-top-style:solid; border-top-width:1px; " align="center" colspan="2">
			&nbsp;</td>
		</tr>
		
		<tr>
			<td style="border-left-style:solid; border-left-width:1px; border-top-style:solid; border-top-width:1px; " align="center" width="77">
			<font size="4"><b>Select</b></font></td>
			<td align="center" width="490">
			<font size="4"><b>Symptoms</b></font></td>
		</tr>
		
		<%
		while(rst.next())
		{
			
		%>
		<tr>
			<td style="border-style:solid; border-width:1px; " width="77" align="center">
			<p align="center">
			<input type="radio" name="r1" value="<%=rst.getString(1)%>">
			</td>
			<td width="490">
			<%=rst.getString(4)%>
			</td>
		</tr>
		<%
		}
		%>
		<tr>
		        <td style="border-style: solid; border-width: 1px">
				<p align="center"><input type="submit" value="Select"></td>
		</tr>
		</form>
	</table>
</div>


<%
	
} catch(Exception ee){out.write("An Error Related to DataBase had Occur and technically it is  "+ ee);}
	finally{
	stmt.close();
	con.close();
	
	}

%>


</body>

</html>