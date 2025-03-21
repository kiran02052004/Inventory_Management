<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Update Processed Material</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 h-screen flex items-center justify-center">
  <div class="bg-white p-6 rounded-lg shadow-lg max-w-lg w-full">
    <h1 class="text-2xl font-bold mb-4">Update Processed Material</h1>
    <form action="updateProcessed" method="post">
      <div class="mb-4">
        <label for="pid" class="block text-gray-700">Processed Material Id</label>
        <input type="text" name="pid" id="pid" placeholder="Enter Processed Material Id" class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500">
      </div>
      <div class="mb-4">
        <label for="pquantity" class="block text-gray-700">Quantity</label>
        <input type="text" name="pquantity" id="pquantity" placeholder="Enter quantity" class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-500">
      </div>
      <div class="flex justify-end">
        <input type="submit" value="Update" class="px-4 py-2 bg-indigo-500 text-white rounded-lg hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500">
      </div>
    </form>
  </div>
</body>
</html>
