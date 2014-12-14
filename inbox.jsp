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

		rst=stmt.executeQuery("select * from email where receiver='" +uname+ "' order by date DESC ");
				
			
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

function validation(chk)
{
	i=0;
	for (; i < chk.length; i++)
	{
	if(chk[i].checked == true)
	{
	return true;
	}
	}
	alert("select atleast one message to Delete");
	return false;
	
}

</script>
</head>

<body bgcolor="#99FF66">

<div align="center">
	<table border="1" width="69%" style="border-width: 0px">
		<form name="frm1" action="delete.jsp" method="post" onsubmit="return validation(document.frm1.group5)">
		<tr>
			<td style="border-style:none; border-width:medium; " align="center" colspan="4">
			<p align="left">
			<font size="4" color="#800000">Following are the list of messages</font></td>
		</tr>
		
		<tr>
			<td style="border-style:none; border-width:medium; " align="center" width="65">
			&nbsp;</td>
			<td style="border-style:none; border-width:medium; " align="center" width="94">
			&nbsp;</td>
			<td style="border-style:none; border-width:medium; " align="center" width="202">
			&nbsp;</td>
			<td style="border-style:none; border-width:medium; " align="center">
			&nbsp;</td>
		</tr>
		
		<tr>
			<td style="border-left-style:none; border-left-width:medium; border-right-style:solid; border-right-width:1px; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1px" align="center" width="65">
			<font size="4"><b>Select</b></font></td>
			<td style="border-left-style:solid; border-left-width:1px; border-right-style:solid; border-right-width:1px; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1px" align="center" width="94">
			<font size="4"><b>From</b></font></td>
			<td style="border-left-style:solid; border-left-width:1px; border-right-style:solid; border-right-width:1px; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1px" align="center" width="202">
			<font size="4"><b>Date &amp; Time</b></font></td>
			<td style="border-left-style:solid; border-left-width:1px; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1px" align="center">
			<font size="4"><b>Subject</b></font></td>
		</tr>
		
		<%
		while(rst.next())
		{
			
		%>
		<tr>
			<td style="border-left-style:none; border-left-width:medium; border-right-style:solid; border-right-width:1px; border-top-style:solid; border-top-width:1px; border-bottom-style:solid; border-bottom-width:1px" width="65" align="center">
			<p align="center">
			<input type="checkbox" name="group5" value="<%=rst.getString(1)%>">
			</td>
			<td style="border-style: solid; border-width: 1px; " width="94" align="center">
			<% out.println(rst.getString(2)); %>
			</td>
			<td style="border-style: solid; border-width: 1px; " width="202" align="center">
			<% out.println(rst.getString(4)); %>	
			</td>
			<td style="border-left-style:solid; border-left-width:1px; border-right-style:none; border-right-width:medium; border-top-style:solid; border-top-width:1px; border-bottom-style:solid; border-bottom-width:1px" align="center">
			<a href="javascript:go('<% out.println(rst.getString(6)); %>')" ><% out.println(rst.getString(5)); %></a>
			</td>
		</tr>
		<%
		}
		%>
		<tr>
		        <td>
				<p align="center"><input type="submit" value="Delete"></td>
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

<div align="center">

<table border="0" width="221" style="border-width: 0px">
	<tr>
		<td align="left"><b><font size="4">Message:</font></b></td>
	</tr>
	<tr>
		<td align="left">
		<form name="form1">
		
			<textarea  name="textarea1" rows="5" cols="64" readonly="true" style="background-color: #99FF66; font-size:14pt; font-family:Times New Roman" border="0" ></textarea>
		
		</form>			
		</td>
	</tr>
</table>
</div>


</body>

</html>