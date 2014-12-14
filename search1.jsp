<%
if(session.getAttribute("username")==null)
response.sendRedirect("index.jsp");
%>

<%@ page language="java" import ="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
        Connection con=null;
		ResultSet rst=null;
		ResultSet rst1=null;
		ResultSet rst2=null;
		ResultSet rst3=null;
		
		Statement stmt = null;
		Statement stmt1 = null;
		Statement stmt2 = null;
		Statement stmt3 = null;
    try{
    	
    	String url = "jdbc:mysql://localhost:3306/ayruved";	   
	    Class.forName("com.mysql.jdbc.Driver").newInstance (); 
	    con = DriverManager.getConnection(url,"root","vaio"); 
	  
		stmt = con.createStatement();
		stmt1 = con.createStatement();
		stmt2 = con.createStatement();
		stmt3 = con.createStatement();

		String uname=(String)session.getAttribute("username");
		int id = Integer.parseInt(request.getParameter("r1"));
		
		rst=stmt.executeQuery("select * from symptom where ssid = '"+id+"' ");
		rst.next();
				
		rst1=stmt1.executeQuery("select * from maintype where mid = '"+rst.getString(2)+"' ");
		rst1.next();
		
		rst2=stmt2.executeQuery("select * from subtype where sid = '"+rst.getString(3)+"' ");
		rst2.next();
		rst.close();
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
	<table border="1" width="562" style="border-left-width:0px; border-right-width:0px; border-top-width:0px">
		<tr>
			<td style="border-style:none; border-width:medium; " align="center" colspan="3">
			<font size="5"><font color="#000080">Dear User You are Suffering from...</font>.</font></td>
		</tr>
		
		<tr>
			
			<td style="border-left-style:none; border-left-width:medium; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium" align="center" width="148">
			&nbsp;</td>
			<td align="center" width="131" style="border-left-style:none; border-left-width:medium; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium">
			&nbsp;</td>
			<td align="center" style="border-left-style:none; border-left-width:medium; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium" width="264">
			&nbsp;</td>
		</tr>
		
		<tr>
			
			<td style="border-left-style:solid; border-left-width:1px; border-top-style:solid; border-top-width:1px; " align="center" width="147">
			<font size="4" color="#008000"><b>Main Diseases</b></font></td>
			<td align="center" width="129" style="border-top-style:solid; border-top-width:1px; ">
			<font size="4" color="#008000"><b>Sub-Type</b></font></td>
			<td align="center" style="border-right-style:solid; border-right-width:1px; border-top-style:solid; border-top-width:1px; " width="264">
			<font size="4" color="#008000"><b>View Doctor's Prescription</b></font></td>
		</tr>
		
		<tr>
			<td width="147" align="center" style="border-left-style:solid; border-left-width:1px; border-bottom-style:solid; border-bottom-width:1px; " height="21" rowspan="2">
			<font size="4">
			<% out.println(rst1.getString(2)); %>
			</font>
			</td>
			<td width="129" align="center" style="border-bottom-style:solid; border-bottom-width:1px; " height="21" rowspan="2">
			<font size="4">
			<% out.println(rst2.getString(3)); %>
			</font>
			</td>
						
			
			<%
			rst3=stmt3.executeQuery("select * from prescription where mid='"+rst1.getString(1)+"' and sid='"+rst2.getString(1)+"' ");		
			while(rst3.next())
			{
			%>
			<td style="border-right-style:solid; border-right-width:1px; border-bottom-style:solid; border-bottom-width:1px; " align="center" width="264" height="2">
			<a href="javascript:go('<% out.println(rst3.getString(5)); %>')" >
			<font size="3"><% out.println(rst3.getString(4)); %></font></a>
			</td>
			
		</tr>
		 <% } 
			rst3.close();
			%>
		
		</table>
</div>


<%
	
} catch(Exception ee){out.write(" "+ee);}
	finally{
	//stmt.close();
	//stmt1.close();
	//stmt2.close();
	//stmt3.close();
	con.close();
	
	
	}

%>

<div align="center">

<table border="0" width="478" style="border-width: 0px">
	
	<tr>
		<td align="left" height="30"><font color="#008000"><font size="4"><b>Prescription</b></font><b><font size="4">:</font></b></font></td>
	</tr>
	<tr>
		<td align="left">
		<form name="form1">
		
			<textarea  name="textarea1" rows="5" cols="67" readonly="true" style="background-color:#99FF66; font-size:14pt; font-family:Times New Roman" border="0" ></textarea>
		
		</form>			
		</td>
	</tr>
</table>
</div>


</body>

</html>