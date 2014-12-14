<%@ page language="java" import ="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
        Connection con=null;
		ResultSet rst=null;
		Statement stmt=null;

    try{
    
	   String url = "jdbc:mysql://localhost:3306/ayruved";	   
	   Class.forName("com.mysql.jdbc.Driver").newInstance (); 
	   con = DriverManager.getConnection(url,"root","vaio"); 
	   stmt = con.createStatement(); 
       rst=stmt.executeQuery("select * from maintype"); 
		%>


<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>To</title>
<script type="text/javascript" src="check2.js">
</script>

<script type="text/javascript">  
      var xmlHttp  
      var xmlHttp
      
      function showState(str){
      
      if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      } 
      
      var url="state.jsp";
      url +="?count=" +str;
      //alert(url);
      xmlHttp.onreadystatechange = stateChange;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }
      
      function stateChange(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("state").innerHTML=xmlHttp.responseText   
      }   
      }
	  
      

</script>



</head>

<body bgcolor="#99FF66">

<div align="center">
	<table bgcolor="#99FF66" border="1" width="58%" style="border-width: 0px" height="287">
		<form name="frm1" action="adds.jsp" method="post">
			<tr>
				<td style="border-style: none; border-width: medium" align="right" height="27" colspan="2">
				<p align="left"><font size="4" color="#800000">Administrator add 
				Symptoms for the diseases</font></td>
			</tr>
			<tr>
				<td width="27%" style="border-style: none; border-width: medium" align="right" height="27">
				<font size="4">Main Type :-</font></td>
				<td style="border-style: none; border-width: medium" height="27" width="72%">
				<p align="left">
				&nbsp;
				<select name='country' onchange="showState(this.value)">
				<option value="none">Select</option>  
				<%
						while(rst.next())
							{
			
		        %>
				<option value="<% out.println(rst.getString(1)); %>"> <% out.println(rst.getString(2)); %>  </option>
				
				<% } %>
				
				</select>
		 		
				</td>
			</tr>
			<tr>
				<td width="27%" style="border-style: none; border-width: medium" align="right" height="21">&nbsp;</td>
				<td style="border-style: none; border-width: medium" height="21" width="72%">&nbsp;</td>
			</tr>
			<tr>
				<td width="27%" style="border-style: none; border-width: medium" align="right">
				<font size="4">Sub Type 
		:-</font></td>
				<td style="border-style: none; border-width: medium" width="72%">
					<div id='state'>  
				      <select name='state' >  
	      			<option value='-1'></option>  
			      </select>  
			      </div>  
				
				</td>
			</tr>
			<tr>
				<td width="27%" style="border-style: none; border-width: medium" align="right" height="21">&nbsp;</td>
				<td style="border-style: none; border-width: medium" height="21" width="72%">&nbsp;</td>
			</tr>
			<tr>
				<td width="27%" style="border-style: none; border-width: medium" align="right" height="118" valign="top">
				<font size="4">Symptoms 
		:-</font></td>
				<td style="border-style: none; border-width: medium" height="118" width="72%">
				<textarea rows="7" name="t3" cols="46"></textarea> </td>
			</tr>
			<tr>
				<td width="27%" style="border-style: none; border-width: medium" height="29">&nbsp;</td>
				<td style="border-style: none; border-width: medium" height="29" width="72%">
				<input type="submit" name="b1" value="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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