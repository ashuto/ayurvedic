<%
session.removeAttribute("username");
%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Logout Page</title>
<script>
    window.history.forward();
</script>
</head>

<body>
<h1>
Logout Successfully 
</h1>
<br/>
<a href="index.jsp"><h2> Login Again </h2></a>

</body>

</html>
