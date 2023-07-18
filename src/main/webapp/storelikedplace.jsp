<%@ page import="java.sql.*" %>

<%



// Retrieve the place data from request parameters
String placename = request.getParameter("placename");
String placedescription = request.getParameter("placedescription");
String placeimage = request.getParameter("placeimage");
System.out.println("placename: " + placename);
System.out.println("placedescription: " + placedescription);
System.out.println("placeimage: " + placeimage);

 String user= session.getAttribute("loggedInUser").toString();
   
	if(user==null)
	{
		response.sendRedirect("logindb.jsp");
	}
		
	
// Define database connection variables
String jdbcUrl = "jdbc:mysql://localhost:3306/akshay";
String username = "root";
String password = "root";

Connection connection = null;
PreparedStatement statement = null;

try {
    // Establish database connection
    Class.forName("com.mysql.cj.jdbc.Driver");
    connection = DriverManager.getConnection(jdbcUrl, username, password);

    // Prepare the SQL statement to insert data into "places" table
    String sql = "INSERT INTO places (placename, placedescription, placeimage) VALUES (?, ?, ?)";
    statement = connection.prepareStatement(sql);
    statement.setString(1, placename);
    statement.setString(2, placedescription);
    statement.setString(3, placeimage);

    
    // Execute the SQL stainttement
   int i= statement.executeUpdate();

   if(i>0)
    response.setStatus(200);
   
} catch (ClassNotFoundException | SQLException e) {
    // Handle any errors that occur during database operations
    e.printStackTrace();
    // Send an error response if something goes wrong
    response.sendError(500, "An error occurred while storing the data.");
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
