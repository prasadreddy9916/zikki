
package com.example.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Forward the request to doPost to keep the logic in one place
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String jdbcUrl = "jdbc:mysql://localhost:3306/user_registration";
        String dbUser = "root";
        String dbPassword = "hacker#Tag1";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            // Handle Login Validation
            String sql = "SELECT * FROM users WHERE email = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, email);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                String dbPassword1 = rs.getString("password");

                if (dbPassword1.equals(password)) {
                    out.println("<h1>Login Successful!</h1>");
                    // Redirect to the home page or user dashboard here
                    response.sendRedirect("index.jsp");
                } else {
                    request.setAttribute("errorMessage", "Wrong password!");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("errorMessage", "Email not found!");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
            rs.close();
            pstmt.close();
            conn.close();

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Internal server error occurred.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}

