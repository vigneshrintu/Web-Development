<%@ page import="java.sql.*" %>

<%
    // Database connection details
    String url = "jdbc:mysql://localhost:3306/user";
    String user = "root";
    String password = "vigneshrintu";
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        // Establish database connection
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);

        // Retrieve data from the database
        String query = "SELECT * FROM details";
        stmt = conn.createStatement();
        rs = stmt.executeQuery(query);

        // Display data
        out.println("<h2>Submitted Details</h2>");
        out.println("<table border='1'><tr><th>ID</th><th>Username</th><th>Email</th><th>Age</th><th>DOB</th><th>Gender</th><th>Subscription</th><th>Interests</th><th>Favourite Subjects</th><th>Bio</th></tr>");
        while (rs.next()) {
            out.println("<tr><td>" + rs.getInt("id") + "</td>");
            out.println("<td>" + rs.getString("username") + "</td>");
            out.println("<td>" + rs.getString("email") + "</td>");
            out.println("<td>" + rs.getInt("age") + "</td>");
            out.println("<td>" + rs.getDate("dob") + "</td>");
            out.println("<td>" + rs.getString("gender") + "</td>");
            out.println("<td>" + rs.getString("subscription") + "</td>");
            out.println("<td>" + rs.getString("interests") + "</td>");
            out.println("<td>" + rs.getString("favourite_subjects") + "</td>");
            out.println("<td>" + rs.getString("bio") + "</td></tr>");
        }
        out.println("</table>");

    } catch (Exception e) {
        e.printStackTrace();
        out.println("Error: " + e.getMessage());
    } finally {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
