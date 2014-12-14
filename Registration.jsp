<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Registration Page</title>
<script type="text/javascript" src="check1.js">
</script>

<script type="text/javascript">
function apply()
{
  document.frm.sub.disabled=true;
  if(document.frm.chk.checked==true)
  {
    document.frm.sub.disabled=false;
  }
  if(document.frm.chk.checked==false)
  {
    document.frm.sub.enabled=false;
  }
}
</script> 
</head>

<body>
<div align="center">
<table bgcolor="#99FF66" border="0" width="806" height="600" cellspacing="5" style="border-width: 0px">
	
	<form name="frm" action="submit.jsp" method="post" onsubmit="return validation(this)">
	
	<tr>
		<td colspan="2" height="150" style="border-style: none; border-width: medium; ">
		<img border="0" src="images/header.jpg" width="799" height="140"></td>
	</tr>
	<tr>
		<td colspan="2" style="border-style: none; border-width: medium; ">
		&nbsp;</td>
	</tr>
	<tr>
		<td colspan="2" style="border-style: none; border-width: medium; ">
		&nbsp;</td>
	</tr>
	<tr>
		<td colspan="2" style="border-style: none; border-width: medium; ">
		<p align="center"><font color="#800000" size="5">Fill Your Registration Form</font></td>
	</tr>
	<tr>
		<td colspan="2" style="border-style: none; border-width: medium; ">
		<p align="right"><b><font color="#FF0000">Note:- All the field are 
		mandatory.</font></b></td>
	</tr>
	

	<tr>
		<td align="right" width="341" style="border-style: none; border-width: medium; ">
		<b>First Name</b></td>
		<td align="left" width="449" style="border-style: none; border-width: medium; ">
		<input type="text" name="t1" size="22"></td>
	</tr>
	
	<tr>
		<td align="right" width="341" style="border-style: none; border-width: medium; "><b>Last Name</b></td>
		<td align="left" width="449" style="border-style: none; border-width: medium; ">
		<input type="text" name="t2" size="22"></td>
	</tr>
	<tr>
		<td align="right" width="341" style="border-style: none; border-width: medium; "><b>Address</b></td>
		<td align="left" width="449" style="border-style: none; border-width: medium; ">
		
			<textarea rows="2" name="t3" cols="25"></textarea></td>
	</tr>
	<tr>
		<td align="right" width="341" style="border-style: none; border-width: medium; "><b>Mobile no</b></td>
		<td align="left" width="449" style="border-style: none; border-width: medium; ">
		<input type="text" name="t4" size="24" maxlength="10">&nbsp;</td>
	</tr>
	<tr>
		<td align="right" width="793" colspan="2" style="border-style: none; border-width: medium; ">&nbsp;</td>
	</tr>
	
	<tr>
		<td align="right" width="793" colspan="2" style="border-style: none; border-width: medium; ">
		<p align="center"><font color="#800000" size="5">Details of your 
		Login ID</font></td>
	</tr>
	<tr>
		<td align="right" width="793" colspan="2" style="border-style: none; border-width: medium; ">
		<p align="center">&nbsp;</td>
	</tr>
	<tr>
		<td align="right" width="341" style="border-style: none; border-width: medium; ">
		<b>UserName </b> </td>
		<td align="left" width="449" style="border-style: none; border-width: medium; ">
		<p align="left"><input type="text" name="t5" size="22" ></td>
	</tr>
	<tr>
		<td align="right" width="341" style="border-style: none; border-width: medium; ">
		<b>Password</b></td>
		<td align="left" width="449" style="border-style: none; border-width: medium; ">
		<input type="password" name="t6" size="22" ></td>
	</tr>
	
	<tr>
		<td align="right" width="341" style="border-style: none; border-width: medium; ">
		<b>Re-Enter Password</b></td>
		<td align="left" width="449" style="border-style: none; border-width: medium; ">
		<input type="password" name="t7" size="22"></td>
	</tr>
	<tr>
		<td align="right" width="341" style="border-style: none; border-width: medium; ">
		<b>Type</b></td>
		<td align="left" width="449" style="border-style: none; border-width: medium; ">
		
			<select size="1" name="s1">
			<option value="0">Select</option>
			<option value="User">User</option>
			<option value="Doctor">Doctor</option>
			</select>
		
		</td>
	</tr>
	
	<tr>
		<td colspan="2" style="border-style: none; border-width: medium; ">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="2" style="border-style: none; border-width: medium; ">
		<p align="center"><input type="checkbox" name="chk" onClick="apply()"> I have checked that above entries are correct </td>
	</tr>
	<tr>
		<td colspan="2" style="border-style: none; border-width: medium; ">
		<p align="center"><input type="submit" name="sub" value="SUBMIT" disabled></td>
	</tr>
	
	<tr>
		<td colspan="2" style="border-style: none; border-width: medium; "></td>
	</tr>
	<tr>
		<td colspan="2" style="border-style: none; border-width: medium; ">
		<p align="center">
		<img border="0" src="images/footer.bmp" width="799" height="184"></td>
	</tr>
	<tr>
		<td colspan="2" style="border-style: none; border-width: medium; ">
		<p align="center"><i>Prepared by: </i>
		
		</td>
	</tr>
	</form>
</table>
</div>

</body>

</html>