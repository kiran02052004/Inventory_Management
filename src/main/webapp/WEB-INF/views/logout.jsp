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
    // Invalidate the current session if it exists
    if (session != null) {
        session.invalidate();  // End the session to log the user out
    }

    // Redirect to the login page (or any other page after logout)
    response.sendRedirect("ProcessedMaterialDashboard.jsp");
%>
</body>
</html>