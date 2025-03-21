<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		int pid=Integer.parseInt(request.getParameter("id"));
		String pname=request.getParameter("name"); 
	%>
	<form action="issuedProcessedMaterial" method="post">
		<input type="text" name="pid" value="<%= pid %>">
		<input type="text" name="pname" value="<%= pname %>">
		<input type="text" name="ipname" placeholder=" Enter Issuer Name"><br>
		<input type="text" name="ipquantity" placeholder=" Enter Quantity"><br>
		<input type="date" name="pissueDate" placeholder=" Enter Date"><br>
		<input type="time" name="pissueTime" placeholder=" Enter Time "><br>
		<input type="submit" value="Issue">
	</form>
</body>
</html>