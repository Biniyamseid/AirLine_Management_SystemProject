<%@ page import="com.example.javaeeproject.model.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.javaeeproject.model.User" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.nio.file.Paths" %>
<html>
<head>
    <title>User Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            max-width: 300px;
            margin: auto;
            text-align: center;
        }

        .title {
            color: grey;
            font-size: 18px;
        }

        button {
            border: none;
            outline: 0;
            display: inline-block;
            padding: 8px;
            color: white;
            background-color: #000;
            text-align: center;
            cursor: pointer;
            width: 100%;
            font-size: 18px;
        }

        a {
            text-decoration: none;
            font-size: 22px;
            color: black;
        }

        button:hover, a:hover {
            opacity: 0.7;
        }
    </style>
</head>
<body>
<%
    // Retrieve the user object from the session
    User user = (User) session.getAttribute("user");

    // Check if the user is logged in
    if (user != null) {
%>
<h2>User Profile</h2>

<div class="card">

    <%-- Display the current profile image if available --%>
    <% if ((user != null) && user.getProfileImage() != null && !user.getProfileImage().isEmpty()) { %>
<%--    <img src="<%= request.getContextPath() + "/img/" + user.getProfileImage() %>" alt="Profile Image" style="width: 100%">--%>
        <img src="<%= "/AirLine_Management_SystemProject_war/img/" + User.getProfileImage() %>" alt="Profile Image" style="width: 100%">
    <% } %>
    <%
        } else {
            // Redirect to the login page if the user is not logged in
            response.sendRedirect("login");
        }
        assert user != null;%>
    <br><br>

    <h1><strong>Full Name:</strong> <%= user.getFullName() %></h1>
    <p><strong>Username:</strong> <%= user.getUserName() %></p>
    <p><strong>Email:</strong> <%= user.getEmail_address() %></p>
    <p><strong>State:</strong> <%= user.getState() %></p>
    <p><strong>City:</strong> <%= user.getCity() %></p>
    <p><strong>Pincode:</strong> <%= user.getPincod() %></p>

    <button><a href="updateProfile">Update Profile</a></button>
    <button><a href="deleteAccount">Delete Account</a></button>
</div>
</body>
</html>

