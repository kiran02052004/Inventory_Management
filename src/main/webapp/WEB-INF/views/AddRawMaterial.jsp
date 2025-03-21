<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Raw Material</title>
  <!-- Tailwind CSS CDN -->
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-200 h-screen flex items-center justify-center">
  <div class="bg-white p-8 rounded-lg shadow-lg max-w-lg w-full">
    <h1 class="text-2xl font-bold mb-6 text-center text-gray-900">Add Raw Material</h1>
    <form action="addRaw" method="post" class="space-y-4">
      <div>
        <label for="rname" class="block text-sm font-medium text-gray-700">Raw Material Name</label>
        <input type="text" id="rname" name="rname" placeholder="Enter Raw Material name" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-green-500 focus:ring focus:ring-green-500 focus:ring-opacity-50">
      </div>
      <div>
        <label for="rquantity" class="block text-sm font-medium text-gray-700">Quantity</label>
        <input type="text" id="rquantity" name="rquantity" placeholder="Enter Quantity" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-green-500 focus:ring focus:ring-green-500 focus:ring-opacity-50">
      </div>
      <div>
        <label for="runit" class="block text-sm font-medium text-gray-700">Unit</label>
        <select id="runit" name="runit" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-green-500 focus:ring focus:ring-green-500 focus:ring-opacity-50">
          <option value="pcs">Pieces</option>
          <option value="kg">Kilogram</option>
          <option value="ltr">Litre</option>
        </select>
      </div>
      <div>
        <label for="rcostPerUnit" class="block text-sm font-medium text-gray-700">Cost per Unit</label>
        <input type="text" id="rcostPerUnit" name="rcostPerUnit" placeholder="Enter Cost per unit" class="mt-1 block w-full border-gray-300 rounded-md shadow-sm focus:border-green-500 focus:ring focus:ring-green-500 focus:ring-opacity-50">
      </div>
      <div>
        <input type="submit" value="Add" class="w-full bg-green-500 text-white py-2 px-4 rounded-md shadow-sm hover:bg-green-600 focus:outline-none focus:ring-2 focus:ring-green-500 focus:ring-opacity-50">
      </div>
    </form>
  </div>
</body>
</html>
