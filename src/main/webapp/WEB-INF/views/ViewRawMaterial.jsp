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
  <div class="bg-white p-6 rounded-lg shadow-lg max-w-4xl w-full">
    <h1 class="text-2xl font-bold mb-4 text-center">Raw Materials</h1>
    <div class="overflow-x-auto">
      <table class="min-w-full bg-white border border-gray-300">
        <thead>
          <tr>
            <th class="px-4 py-2 border-b">ID</th>
            <th class="px-4 py-2 border-b">Name</th>
            <th class="px-4 py-2 border-b">Quantity</th>
            <th class="px-4 py-2 border-b">Unit</th>
            <th class="px-4 py-2 border-b">Cost per Unit</th>
            <th class="px-4 py-2 border-b">Action</th>
          </tr>
        </thead>
        <tbody>
          <%
            List<RawMaterial> rawMaterials = (List<RawMaterial>) request.getAttribute("rawMaterials");
            for (RawMaterial raw : rawMaterials) {
          %>
          <tr>
            <td class="px-4 py-2 border-b"><%= raw.getRid() %></td>
            <td class="px-4 py-2 border-b"><%= raw.getRname() %></td>
            <td class="px-4 py-2 border-b"><%= raw.getRquantity() %></td>
            <td class="px-4 py-2 border-b"><%= raw.getRunit() %></td>
            <td class="px-4 py-2 border-b"><%= raw.getRcostPerUnit() %></td>
            <td class="px-4 py-2 border-b">
              <a href="issuedRaw?id=<%= raw.getRid() %>&name=<%= raw.getRname() %>" class="text-blue-500 hover:text-blue-700">Issue</a>
            </td>
          </tr>
          <%
            }
          %>
        </tbody>
      </table>
    </div>
  </div>
</body>
</html>
