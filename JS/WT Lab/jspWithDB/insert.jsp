<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%
    // Database connection details
    String url = "jdbc:mysql://localhost:3306/user";
    String user = "root";
    String password = "vigneshrintu";
    Connection conn = null;
    PreparedStatement pst = null;

    try {
        // Get form data
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        int age = Integer.parseInt(request.getParameter("age"));
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String subscription = request.getParameter("subscription");
        String[] interestsArray = request.getParameterValues("interests");
        String interests = String.join(", ", interestsArray);
        String favouriteSubjects = request.getParameter("favourite_subjects");
        String bio = request.getParameter("bio");

        // Establish database connection
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);

        // Insert data into the database
        String query = "INSERT INTO details (username, email, age, dob, gender, subscription, interests, favourite_subjects, bio) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        pst = conn.prepareStatement(query);
        pst.setString(1, username);
        pst.setString(2, email);
        pst.setInt(3, age);
        pst.setDate(4, java.sql.Date.valueOf(dob));
        pst.setString(5, gender);
        pst.setString(6, subscription);
        pst.setString(7, interests);
        pst.setString(8, favouriteSubjects);
        pst.setString(9, bio);

        int row = pst.executeUpdate();
        if (row > 0) {
            out.println("Data inserted successfully!");
        }

        // Redirect to display.jsp
        response.sendRedirect("retrieve.jsp");

    } catch (Exception e) {
        e.printStackTrace();
        out.println("Error: " + e.getMessage());
    } finally {
        try {
            if (pst != null) pst.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
