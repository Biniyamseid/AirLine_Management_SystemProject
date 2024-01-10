package com.example.javaeeproject.servlet;
import com.example.javaeeproject.dao.UserDao;
import com.example.javaeeproject.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/updateProfile")
@MultipartConfig(maxFileSize = 1024 * 1024 * 2) // 2MB maximum file size
public class UpdateProfileServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String fullName = request.getParameter("fullName");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String state = request.getParameter("state");
        String city = request.getParameter("city");
        String pincode = request.getParameter("pincode");

        Part filePart = request.getPart("profileImage"); // Retrieve file part

        UserDao userDao = new UserDao();

        try {
            User user = userDao.getUserByUsername(username);

            if (user != null) {
                // Update user profile information
                user.setFullName(fullName);
                user.setPassword(password);
                user.setEmail_address(email);
                user.setState(state);
                user.setCity(city);
                user.setPincod(pincode);

                // Update profile image if a new file is uploaded
                if (filePart != null && filePart.getSize() > 0) {
                    // Save the image file and update the user's profileImage field
                    String imagePath = saveProfileImage(username, filePart);
                    user.setProfileImage(imagePath);
                }

                userDao.updateUser(user);

                // Redirect to a page after successful update
                response.sendRedirect("profile.jsp");
            } else {
                // Handle the case where the user does not exist
                response.sendRedirect("error.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle database error
            response.sendRedirect("error.jsp");
        }
    }

    // Method to save the profile image file
    private String saveProfileImage(String username, Part filePart) throws IOException {
        String fileName = username + "_" + System.currentTimeMillis() + "_" + getFileName(filePart);
        String imagePath = getServletContext().getRealPath("/images/") + fileName;

        filePart.write(imagePath);
        return fileName;
    }

    // Method to extract file name from HTTP header content-disposition
    private String getFileName(Part part) {
        String contentDisposition = part.getHeader("content-disposition");
        String[] tokens = contentDisposition.split(";");
        for (String token : tokens) {
            if (token.trim().startsWith("filename")) {
                return token.substring(token.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return "";
    }
}
