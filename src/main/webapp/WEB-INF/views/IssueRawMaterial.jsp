<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Issue Raw Material</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <style>
    .custom-background {
      background-image: url('path/to/your/background-image.jpg'); /* Replace with your background image URL */
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
    }
  </style>
</head>
<body class="custom-background h-screen flex items-center justify-center">
  <div class="bg-black bg-opacity-75 p-8 rounded-lg shadow-lg max-w-lg w-full">
    <h1 class="text-2xl font-bold text-white mb-6 text-center">Issue Raw Material</h1>
    <%
		int rid=Integer.parseInt(request.getParameter("id"));
		String rname=request.getParameter("name"); 
	%>
    <form action="issueRawMaterial" method="post" class="space-y-4">
      <input type="text" name="rid" value="<%= rid %>" class="w-full p-3 rounded border border-gray-600 bg-gray-900 text-white" readonly>
      <input type="text" name="rname" value="<%= rname %>" class="w-full p-3 rounded border border-gray-600 bg-gray-900 text-white" readonly>
      <input type="text" name="iname" placeholder="Enter Issuer Name" class="w-full p-3 rounded border border-gray-600 bg-gray-900 text-white">
      <input type="text" name="iquantity" placeholder="Enter Quantity" class="w-full p-3 rounded border border-gray-600 bg-gray-900 text-white">
      <input type="date" name="issueDate" class="w-full p-3 rounded border border-gray-600 bg-gray-900 text-white">
      <input type="time" name="issueTime" class="w-full p-3 rounded border border-gray-600 bg-gray-900 text-white">
      <input type="submit" value="Issue" class="w-full p-3 bg-white text-black rounded cursor-pointer hover:bg-gray-200">
    </form>
  </div>
</body>
</html>
