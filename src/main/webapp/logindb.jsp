<%@ page import="java.sql.*" %>

<%
    // Retrieve the form data
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    Connection connection = null;
    PreparedStatement statement = null;
    

    try {
        // Configure the database connection details
        String url = "jdbc:mysql://localhost:3306/akshay";
        String username = "root";
        String password1 = "root";

        // Load the MySQL JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish the database connection
        connection = DriverManager.getConnection(url, username, password1);

        // Prepare the SQL statement
        String sql = "INSERT INTO users (email, password) VALUES (?, ?)";
        statement = connection.prepareStatement(sql);
        statement.setString(1, email);
        statement.setString(2, password);

        // Execute the statement
        statement.executeUpdate();

        
        session.setAttribute("loggedInUser", email);
        // Redirect the user to a success page
        response.sendRedirect("home.jsp");
    } catch (Exception e) {
        // Handle any errors that occurred during the database operation
        e.printStackTrace();

        // Redirect the user to an error page
       
    } finally {
        // Close the database resources
        if (statement != null) {
            statement.close();
        }
        if (connection != null) {
            connection.close();
        }
    }
%>
