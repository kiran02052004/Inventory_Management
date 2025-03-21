<%@page import="com.kiran.inventorydb.RawMaterial"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Raw Materials</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 h-screen flex items-center justify-center">
  <div class="bg-white p-6 rounded-lg shadow-lg w-full max-w-4xl">
    <h1 class="text-2xl font-bold mb-4">Raw Materials</h1>
    <%
      List<RawMaterial> rawMaterials0 = (List<RawMaterial>) request.getAttribute("rawMaterials0");
    %>
    <table class="min-w-full bg-white">
      <thead>
        <tr>
          <th class="py-2 px-4 border-b-2 border-gray-300">ID</th>
          <th class="py-2 px-4 border-b-2 border-gray-300">Name</th>
          <th class="py-2 px-4 border-b-2 border-gray-300">Quantity</th>
          <th class="py-2 px-4 border-b-2 border-gray-300">Unit</th>
          <th class="py-2 px-4 border-b-2 border-gray-300">Cost per unit</th>
        </tr>
      </thead>
      <tbody>
        <%
          for (RawMaterial r : rawMaterials0) {
        %>
          <tr>
            <td class="py-2 px-4 border-b border-gray-300"><%= r.getRid() %></td>
            <td class="py-2 px-4 border-b border-gray-300"><%= r.getRname() %></td>
            <td class="py-2 px-4 border-b border-gray-300"><%= r.getRquantity() %></td>
            <td class="py-2 px-4 border-b border-gray-300"><%= r.getRunit() %></td>
            <td class="py-2 px-4 border-b border-gray-300"><%= r.getRcostPerUnit() %></td>
          </tr>
        <%
          }
        %>
      </tbody>
    </table>
  </div>
</body>
</html>
