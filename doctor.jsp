<%
if(session.getAttribute("username")==null)
response.sendRedirect("index.jsp");
%>

		
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>User page</title>
<script type="text/javascript">
  
function go(loc){
    document.getElementById('calendar').src = loc;
}


</script>
</head>

<body>
<div align="center">
<table bgcolor="#99FF66" border="0" width="820" style="border-width: 0px" height="600" cellspacing="5">
	
	<tr>
		<td colspan="5" height="150">
		<img border="0" src="images/header.jpg" width="808" height="140"></td>
	</tr>
	<tr>
		<td width="805" colspan="5">
		<font color="#000080" size="5">
		<b>Welcome:-   <%=session.getAttribute("username")%></b></font></td>
	</tr>
	<tr>
		<td colspan="5">
		<p align="left">&nbsp;</td>
	</tr>
	
	<tr>
		<td align="center" width="105">
		<a href="javascript:go('about.jsp')">
		<font size="5" color="#008000">Home</font></a></td>
		<td align="center" width="192">
				<a href="javascript:go('addPres.jsp')">
				<font size="5" color="#008000">Add Prescription</font></a><font size="5" color="#008000"></font></td>
		<td align="center" width="175">
				<a href="javascript:go('inbox.jsp')">
				<font size="5" color="#008000">View Query</font></a></td>
		<td align="center" width="157">
				<a href="javascript:go('composemail2user.jsp')">
				<font color="#008000" size="5">Reply Query</font></a></td>
		<td align="center">
		<b><a href ="logout.jsp"> 
		<font color="#000080" size="4">LOGOUT</font></a></b></td>
	</tr>
	
	<tr>
		<td width="802" colspan="5">
		&nbsp;</td>
	</tr>
	
	<tr>
		<td width="650" colspan="4">
		<p align="center">
		<iframe bgcolor="#3399FF"  id="calendar" src="about.jsp" height="350" width="640" frameborder="0"></iframe>
		</td>
		<td width="217" valign="top">
		<p align="center"><i><b><font size="4" color="#800000">Upcoming Events:-</font></b></i></p>
		
	<marquee scrolldelay="120" direction="up">
		
		<p align="center">{1} SATURDAYS March 2013
		2nd, 9th &amp; 16th ~ 1:30-3pm: INTRO 
		to AYURVEDA CLASS with Dr Siva Mohan:
		<a target="_blank" href="http://www.svasthahealth.com/intro-to-ayurveda-class/">
		http://www.svasthahealth.com/intro-to-ayurveda-class/</a></span><p align="center">
		<span style="font-size: 14px">{2} </span>Ayu Sutra 2013-A seven day intensive program for effective learning of 
		the Sutra Sthana of Ashtanga Hrdaya.&nbsp; It is scheduled to be conducted from 25th to 31st March 2013.
		</marquee>
		</td>
	</tr>
	
	<tr>
		<td colspan="5">
		&nbsp;</td>
	</tr>
	
	<tr>
		<td colspan="5">
		<img border="0" src="images/footer.bmp" width="808" height="184"></td>
		
	</tr>
	<tr>
		<td colspan="5">
		<p align="center"><i>Prepared By:- Ankit &amp; Anshul</i></td>
	</tr>
	</form>
</table>
</div>

</body>

</html>