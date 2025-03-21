<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard</title>
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
<style>
  .custom-sidebar {
    background-color: #000; /* Black */
  }
  .custom-link {
    color: #fff; /* White */
  }
  .custom-link:hover {
    color: #ccc; /* Light Gray */
  }
  .main-content {
    background-image: url('data:image/jpeg;base64,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'); /* Replace with your background image URL */
    background-size: cover;
    background-position: center;
    color: #fff; /* White */
  }
  .welcome-text {
    color: #000; /* Black */
  }
</style>
</head>
<body class="bg-gray-100 h-screen">
  <div class="flex h-full">
    <aside class="custom-sidebar w-64 text-white p-6">
      <h1 class="text-2xl font-bold mb-6">Dashboard</h1>
      <nav>
        <ul>
          <li class="mb-4">
            <a href="RawMaterialDashboard" class="custom-link text-lg">Raw Material Dashboard</a>
          </li>
          <li class="mb-4">
            <a href="ProcessedMaterialDashboard" class="custom-link text-lg">Processed Material Dashboard</a>
          </li>
          <li class="mb-4">
            <a href="changePassword" class="custom-link text-lg">Change Password</a>
          </li>
        </ul>
      </nav>
    </aside>
    <main class="main-content flex-1 p-6">
      <h1 class="welcome-text text-3xl font-bold mb-6">Welcome to Dashboard</h1>
      <!-- Main content goes here -->
    </main>
  </div>
</body>
</html>
