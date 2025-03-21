<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Processed Material</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 h-screen flex items-center justify-center">
  <div class="bg-white p-8 rounded-lg shadow-lg max-w-lg w-full">
    <h1 class="text-2xl font-bold mb-6 text-center">Add Processed Material</h1>
    <form action="addProcessed" method="post" class="space-y-4">
      <div>
        <label for="pname" class="block text-sm font-medium text-gray-700">Processed Material Name</label>
        <input type="text" id="pname" name="pname" placeholder="Enter Processed Material name" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-blue-500 focus:ring focus:ring-blue-500 focus:ring-opacity-50">
      </div>
      <div>
        <label for="pquantity" class="block text-sm font-medium text-gray-700">Quantity</label>
        <input type="text" id="pquantity" name="pquantity" placeholder="Enter Quantity" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-blue-500 focus:ring focus:ring-blue-500 focus:ring-opacity-50">
      </div>
      <div>
        <label for="punit" class="block text-sm font-medium text-gray-700">Unit</label>
        <select id="punit" name="punit" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-blue-500 focus:ring focus:ring-blue-500 focus:ring-opacity-50">
          <option value="pcs">Pieces</option>
          <option value="kg">Kilogram</option>
          <option value="ltr">Litre</option>
        </select>
      </div>
      <div>
        <label for="pcostPerUnit" class="block text-sm font-medium text-gray-700">Cost per Unit</label>
        <input type="text" id="pcostPerUnit" name="pcostPerUnit" placeholder="Enter Cost per unit" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-blue-500 focus:ring focus:ring-blue-500 focus:ring-opacity-50">
      </div>
      <div>
        <input type="submit" value="Add" class="w-full bg-blue-500 text-white py-2 px-4 rounded-md shadow-sm hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50">
      </div>
    </form>
  </div>
</body>
</html>
