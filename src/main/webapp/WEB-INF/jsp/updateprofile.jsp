<%--
  Created by IntelliJ IDEA.
  User: stationone
  Date: 12/31/23
  Time: 8:21 PM
  To change this template use File | Settings | File Templates.
--%><%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Profile</title>
</head>
<body>

<h2>Update Profile</h2>

<%@ page import="com.example.javaeeproject.model.User" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.nio.file.Files" %>
<%@ page import="java.nio.file.Path" %>

<%
    // Retrieve the user object from the session
    User user = (User) session.getAttribute("user");

    // Check if the user is logged in
    if (user != null) {
%>

<form action="updateProfile" method="post" enctype="multipart/form-data">
    <label for="fullName">Full Name:</label>
    <input type="text" id="fullName" name="fullName" value="<%= user.getFullName() %>" required><br>

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" value="<%= user.getPassword() %>" required><br>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" value="<%= user.getEmail_address() %>" required><br>

    <label for="state">State:</label>
    <input type="text" id="state" name="state" value="<%= user.getState() %>" required><br>

    <label for="city">City:</label>
    <input type="text" id="city" name="city" value="<%= user.getCity() %>" required><br>

    <label for="pincode">Pincode:</label>
    <input type="text" id="pincode" name="pincode" value="<%= user.getPincod() %>" required><br>

    <label for="profile_image">Profile Image:</label>
    <input type="file" id="profile_image" name="profile_image"><br>

    <%-- Display the current profile image if available --%>
    <% if (user.getProfileImage() != null && !user.getProfileImage().isEmpty()) { %>
<%--    <img src="<%= request.getContextPath() + "/" + user.getProfileImage() %>" alt="Profile Image" width="100">--%>
    <img src="<%= request.getContextPath() + "/img/user1.png"%>" alt="Profile Image" width="100">
    <% } %>

    <br><br>

    <input type="hidden" name="username" value="<%= user.getUserName() %>">
    <input type="submit" value="Update Profile">
</form>

<%
    } else {
        // Redirect to the login page if the user is not logged in
        response.sendRedirect("login");
    }
%>

</body>
</html>
