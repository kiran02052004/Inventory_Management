<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Processed Material Dashboard</title>
  <!-- Tailwind CSS CDN -->
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <!-- Font Awesome CDN -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  <style>
    .custom-header {
      background-color: #2d3748; /* Dark gray color for header */
      padding: 20px;
      border-radius: 8px; /* Rounded corners for the header */
    }
    .custom-sidebar {
      background-color: #2d3748; /* Dark gray color for sidebar */
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
    .main-heading {
      font-size: 2.5rem; /* Font size for the main heading */
      font-weight: 800; /* Bold font weight */
      color: #ffffff; /* White color for the heading */
    }
    .sub-heading {
      font-size: 1.5rem; /* Font size for the sub-heading */
      color: #e2e8f0; /* Lighter gray color for sub-heading */
      font-weight: 500; /* Medium font weight */
    }
    .content-area {
      background-color: #ffffff; /* White background for the main content area */
      padding: 40px; /* Increased padding for larger content box */
      border-radius: 8px; /* Rounded corners */
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Subtle shadow */
      height: 80vh; /* Set a fixed height for better layout */
      overflow: hidden; /* Prevent overflow */
    }
    iframe {
      width: 100%;
      height: 100%; /* Make the iframe fill the content area */
      border: none;
    }
    .logout-button {
      background-color: #e53e3e; /* Red background for logout button */
      color: white; /* White text color */
      padding: 10px 20px;
      text-align: center;
      border-radius: 5px;
      transition: background-color 0.3s ease;
    }
    .logout-button:hover {
      background-color: #c53030; /* Darker red on hover */
    }
  </style>
</head>
<body class="bg-gray-100 h-screen flex flex-col">
  <div class="flex flex-1">
    <!-- Sidebar -->
    <aside class="custom-sidebar w-64 text-white p-6 flex flex-col justify-between">
      <div>
        <h1 class="text-2xl font-bold mb-6">Processed Material Dashboard</h1>
        <nav>
          <ul>
            <li class="mb-4">
              <a href="addProcessedPage" target="contentFrame" class="custom-link text-lg flex items-center">
                <i class="fas fa-plus custom-icon"></i>Add Processed Material
              </a>
            </li>
            <li class="mb-4">
              <a href="deleteProcessedPage" target="contentFrame" class="custom-link text-lg flex items-center">
                <i class="fas fa-trash-alt custom-icon"></i>Delete Processed Material
              </a>
            </li>
            <li class="mb-4">
              <a href="updateProcessedPage" target="contentFrame" class="custom-link text-lg flex items-center">
                <i class="fas fa-edit custom-icon"></i>Update Processed Material
              </a>
            </li>
            <li class="mb-4">
              <a href="viewProcessed" target="contentFrame" class="custom-link text-lg flex items-center">
                <i class="fas fa-eye custom-icon"></i>View Processed Material
              </a>
            </li>
            <li class="mb-4">
              <a href="viewissuedProcessed" target="contentFrame" class="custom-link text-lg flex items-center">
                <i class="fas fa-clipboard-list custom-icon"></i>View Issued Processed Material
              </a>
            </li>
            <li class="mb-4">
              <a href="unavailableProcessedPage" target="contentFrame" class="custom-link text-lg flex items-center">
                <i class="fas fa-exclamation-triangle custom-icon"></i>Show Unavailable Processed Material
              </a>
            </li>
          </ul>
        </nav>
      </div>
      <!-- Logout Button -->
      <div class="mt-4">
        <a href="logout" class="logout-button block text-center">Logout</a>
      </div>
    </aside>

    <!-- Main Content -->
    <main class="flex-1 p-6">
      <!-- Header Area with Background Color -->
      <div class="custom-header">
        <h1 class="main-heading">Welcome to the Processed Material Dashboard</h1>
        <p class="sub-heading">Manage and track your processed material inventory efficiently.</p>
      </div>

      <div class="content-area mt-4">
        <!-- Iframe to load the corresponding pages -->
        <iframe name="contentFrame"></iframe>
      </div>
    </main>
  </div>

  <!-- Footer -->
  <footer class="bg-green-900 text-white text-center py-4">
    <p>&copy; 2024 Your Company Name. All rights reserved.</p>
  </footer>
</body>
</html>
