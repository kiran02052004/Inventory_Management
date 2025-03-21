<%@page import="com.kiran.inventorydb.IssueProcesed"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Issued Processed Materials</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 h-screen flex items-center justify-center">
  <div class="bg-white p-6 rounded-lg shadow-lg max-w-4xl w-full">
    <h1 class="text-2xl font-bold mb-4 text-center">Issued Processed Materials</h1>
    <div class="overflow-x-auto">
      <table class="min-w-full bg-white border border-gray-300">
        <thead>
          <tr>
            <th class="px-4 py-2 border-b">Issue ID</th>
            <th class="px-4 py-2 border-b">Material ID</th>
            <th class="px-4 py-2 border-b">Material Name</th>
            <th class="px-4 py-2 border-b">Issuer Name</th>
            <th class="px-4 py-2 border-b">Quantity</th>
            <th class="px-4 py-2 border-b">Date</th>
            <th class="px-4 py-2 border-b">Time</th>
          </tr>
        </thead>
        <tbody>
          <%
            List<IssueProcesed> issueProcessed = (List<IssueProcesed>) request.getAttribute("issueProcessed");
            for (IssueProcesed ip : issueProcessed) {
          %>
          <tr>
            <td class="px-4 py-2 border-b"><%= ip.getId() %></td>
            <td class="px-4 py-2 border-b"><%= ip.getPid() %></td>
            <td class="px-4 py-2 border-b"><%= ip.getPname() %></td>
            <td class="px-4 py-2 border-b"><%= ip.getIpname() %></td>
            <td class="px-4 py-2 border-b"><%= ip.getIpquantity() %></td>
            <td class="px-4 py-2 border-b"><%= ip.getPissueDate() %></td>
            <td class="px-4 py-2 border-b"><%= ip.getPissueTime() %></td>
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
