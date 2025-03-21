<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Raw Material Dashboard</title>
  <!-- Tailwind CSS CDN -->
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <!-- Font Awesome CDN -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  <style>
    .custom-background {
      background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn9iGQxRahohv1hPvmF5-gEaqumQkLflLg9Q&s'); /* Replace with your background image URL */
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
    }
    .custom-sidebar {
      background-color: #2d3748; /* Gray color for sidebar */
    }
    .custom-link {
      color: #ffffff; /* White color for links */
    }
    .custom-link:hover {
      color: #68d391; /* Green color on hover */
    }
    .custom-icon {
      margin-right: 8px;
    }
  </style>
</head>
<body class="custom-background h-screen">
  <div class="flex h-full">
    <!-- Sidebar -->
    <aside class="custom-sidebar w-64 text-white p-6">
      <h1 class="text-2xl font-bold mb-6">Raw Material Dashboard</h1>
      <nav>
        <ul>
          <li class="mb-4">
            <a href="addRawPage" target="contentFrame" class="custom-link text-lg flex items-center">
              <i class="fas fa-plus custom-icon"></i>Add Raw Material
            </a>
          </li>
          <li class="mb-4">
            <a href="deleteRawPage" target="contentFrame" class="custom-link text-lg flex items-center">
              <i class="fas fa-trash-alt custom-icon"></i>Delete Raw Material
            </a>
          </li>
          <li class="mb-4">
            <a href="updateRawPage" target="contentFrame" class="custom-link text-lg flex items-center">
              <i class="fas fa-edit custom-icon"></i>Update Raw Material
            </a>
          </li>
          <li class="mb-4">
            <a href="viewRaw" target="contentFrame" class="custom-link text-lg flex items-center">
              <i class="fas fa-eye custom-icon"></i>View Raw Material
            </a>
          </li>
          <li class="mb-4">
            <a href="viewIssuedRaw" target="contentFrame" class="custom-link text-lg flex items-center">
              <i class="fas fa-clipboard-list custom-icon"></i>View Issued Raw Material
            </a>
          </li>
          <li class="mb-4">
            <a href="unavailableRawPage" target="contentFrame" class="custom-link text-lg flex items-center">
              <i class="fas fa-exclamation-triangle custom-icon"></i>Show Unavailable Raw Material
            </a>
          </li>
        </ul>
      </nav>
    </aside>

    <!-- Main Content -->
    <main class="flex-1 p-6 bg-gray-100">
      <h1 class="text-3xl font-bold mb-6 text-gray-900">Welcome to Dashboard</h1>
      <iframe name="contentFrame" class="w-full h-full border-0"></iframe>
    </main>
    
  </div>
  <!-- Footer -->
    <footer class="bg-green-900 text-white text-center py-4"> <!-- Dark green background for footer -->
    <p>&copy; 2024 Kiran Patil. All rights reserved.</p>
  </footer>
</body>
</html>
