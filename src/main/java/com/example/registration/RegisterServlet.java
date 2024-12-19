package com.example.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Fetching form values
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String cpass = request.getParameter("cpass");
        String phone = request.getParameter("phone");
        String qualification = request.getParameter("qualification");
        String dob = request.getParameter("date");
        String fatherName = request.getParameter("father_name");
        String motherName = request.getParameter("mother_name");
        String gender = request.getParameter("gender");

        // Validate that password and confirm password match
        if (!password.equals(cpass)) {
            request.setAttribute("message", "Password and Confirm Password do not match");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        // JDBC connection
        Connection conn = null;
        PreparedStatement pst = null;
        try {
            // Register JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Open a connection
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/user_registration", "root", "hacker#Tag1");

            // SQL query to insert user data
            String query = "INSERT INTO users (fullname, email, password, phone, qualification, dob, father_name, mother_name, gender) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            pst = conn.prepareStatement(query);
            pst.setString(1, fullname);
            pst.setString(2, email);
            pst.setString(3, password);
            pst.setString(4, phone);
            pst.setString(5, qualification);
            pst.setString(6, dob);
            pst.setString(7, fatherName);
            pst.setString(8, motherName);
            pst.setString(9, gender);

            // Execute the query
            int row = pst.executeUpdate();
            if (row > 0) {
                // Clear any previous session attributes to avoid cached success message
                request.getSession().setAttribute("registrationSuccess", null);
                
                // Set cache control headers to prevent caching of the success page
                response.setHeader("Cache-Control", "no-store");
                response.setHeader("Pragma", "no-cache");
                response.setDateHeader("Expires", 0);

                // Registration successful, redirect to upload.jsp
                response.sendRedirect("registrationSuccess.jsp");
            } else {
                // Registration failed, set error message and forward back to registration page
                request.setAttribute("message", "Registration failed! Please try again.");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }
        } catch (ClassNotFoundException e) {
            request.setAttribute("message", "Error: JDBC Driver not found!");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            e.printStackTrace();
        } catch (SQLException e) {
            request.setAttribute("message", "SQL Error: " + e.getMessage());
            request.getRequestDispatcher("register.jsp").forward(request, response);
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (pst != null) pst.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
}


