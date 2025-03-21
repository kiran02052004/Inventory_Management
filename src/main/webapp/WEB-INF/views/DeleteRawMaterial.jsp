<%@page import="com.kiran.inventorydb.RawMaterial"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Raw Materials</title>
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
<style>
  .custom-background {
    background-image: url('path/to/your/background-image.jpg'); /* Replace with your background image URL */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
  }
  .custom-table th, .custom-table td {
    color: #fff; /* White */
    border: 1px solid #fff; /* White border */
  }
  .custom-link {
    color: #fff; /* White */
  }
  .custom-link:hover {
    color: #ccc; /* Light Gray */
  }
</style>
</head>
<body class="custom-background h-screen flex items-center justify-center">
  <div class="bg-black bg-opacity-75 p-6 rounded-lg">
    <h1 class="text-3xl font-bold text-white mb-6">Raw Materials</h1>
    <%
      List<RawMaterial> rawMaterials = (List<RawMaterial>) request.getAttribute("rawMaterials");
    %>
    <table class="custom-table min-w-full text-white">
      <thead>
        <tr>
          <th class="px-4 py-2">ID</th>
          <th class="px-4 py-2">Name</th>
          <th class="px-4 py-2">Quantity</th>
          <th class="px-4 py-2">Unit</th>
          <th class="px-4 py-2">Cost per Unit</th>
          <th class="px-4 py-2">Action</th>
        </tr>
      </thead>
      <tbody>
        <%
          for (RawMaterial raw : rawMaterials) {
        %>
          <tr>
            <td class="border px-4 py-2"><%= raw.getRid() %></td>
            <td class="border px-4 py-2"><%= raw.getRname() %></td>
            <td class="border px-4 py-2"><%= raw.getRquantity() %></td>
            <td class="border px-4 py-2"><%= raw.getRunit() %></td>
            <td class="border px-4 py-2"><%= raw.getRcostPerUnit() %></td>
            <td class="border px-4 py-2"><a href="deleteRaw?id=<%= raw.getRid() %>" class="custom-link">Delete</a></td>
          </tr>
        <%
          }
        %>
      </tbody>
    </table>
  </div>
</body>
</html>
