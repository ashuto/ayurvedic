<%
if(session.getAttribute("username")==null)
response.sendRedirect("index.jsp");
%>

		
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Doctor's page</title>
<script type="text/javascript">
	window.history.forward(1);
	function noBack()
  { 
  window.history.forward(); 
  }
</script>
</head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<div align="center">
<table bgcolor="#99CCFF" border="0" width="806" style="border-width: 0px" height="600" cellspacing="5">
	
	<tr>
		<td colspan="2" height="150">
		<img border="0" src="images/header.jpg" width="799" height="140"></td>
	</tr>
	<tr>
		<td>
		<font color="#800000">
		<b>Welcome:-   <%=session.getAttribute("username")%></b></font></td>
		<td>
		<p align="right"><b><a href ="logout.jsp"> 
		<font color="#800000" size="4">LOGOUT</font></a></b>&nbsp;</td>
	</tr>
	<tr>
		<td colspan="2">
		<p align="center"><font size="5" color="#0000FF">Welcome Doctor 
		!!!</font></td>
	</tr>
	<tr>
		<td colspan="2">
		&nbsp;</td>
	</tr>
	
<tr>
		<td colspan="2">
		&nbsp;</td>
	</tr>
<tr>
		<td colspan="2">
		&nbsp;</td>
	</tr>
<tr>
		<td colspan="2">
		&nbsp;</td>
	</tr>
<tr>
		<td colspan="2">
		&nbsp;</td>
	</tr>
<tr>
		<td colspan="2">
		&nbsp;</td>
	</tr>

	
	<tr>
		<td colspan="2">
		&nbsp;</td>
	</tr>
	<tr>
		<td colspan="2">
		
		<p align="center">
		
		
		</td>
	</tr>
	
	<tr>
		<td colspan="2">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="2">
		<img border="0" src="images/footer.bmp" width="798" height="181"></td>
	</tr>
	<tr>
		<td colspan="2">
		<p align="center"><i>Prepared by: </i>
		</td>
	</tr>
	</form>
</table>
</div>

</body>

</html>